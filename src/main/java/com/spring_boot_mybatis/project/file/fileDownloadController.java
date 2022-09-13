package com.spring_boot_mybatis.project.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class fileDownloadController {

	@RequestMapping("fileDownloadList")
	public ModelAndView fileDownloadList(ModelAndView mv) {
		File path = new File("C:/springWorkspace/upload");
		String[] fileList = path.list();

		mv.addObject("fileList", fileList);
		mv.setViewName("upload/fileDownloadListView");

		return mv;
	}

	@RequestMapping("fileDownload/{file}")
	public void fileDownload(@PathVariable String file, HttpServletResponse response) throws IOException {
		File f = new File("C:/springWorkspace/upload/", file);

		String encodedFileName = new String(file.getBytes("UTF-8"), "ISO-8859-1");

		file.getBytes("UTF8");

		response.setContentType("application/download");
		response.setContentLength((int) f.length());
		response.setHeader("Content-Disposition", "attatchment;filename=\"" + encodedFileName + "\"");

		OutputStream os = response.getOutputStream();

		FileInputStream fis = new FileInputStream(f);
		FileCopyUtils.copy(fis, os);

	}

}
