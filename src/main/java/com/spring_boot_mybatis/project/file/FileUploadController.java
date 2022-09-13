package com.spring_boot_mybatis.project.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/fileUploadForm")
	public String viewFileUploadForm() {
		return "upload/fileUploadForm";
	}

	@RequestMapping("/fileUpload")
	public String fileUpload(@RequestParam("uploadFile") MultipartFile file, Model model)
			throws IllegalStateException, IOException {

		// 1.파일 저장 폴더 지정
		String uploadPath = "C:/springWorkspace/upload/";

		// 2.저장할 파일 이름 불러오기
		String originalFileName = file.getOriginalFilename();

		// 3.덮어쓰기 방지 UUID 생성
		UUID uuid = UUID.randomUUID();
		String saveFileName = uuid.toString() + "_" + originalFileName;

		// 4.저장할 폴더+파일 이름
		File file1 = new File(uploadPath + saveFileName);

		// 5.가져오기
		file.transferTo(file1);

		// 6.업로드한 파일 이름 보내기
		model.addAttribute("originalFileName", originalFileName);

		return "upload/fileUploadResult";
	}

	@RequestMapping("/fileUploadMultiple")
	public String fileUploadMultiple(@RequestParam("uploadFileMulti") ArrayList<MultipartFile> files, Model model)
			throws IllegalStateException, IOException {

		// 1.파일 저장 폴더 지정
		String uploadPath = "C:/springWorkspace/upload/";

		// 2.저장할 파일 이름 불러오기
		ArrayList<String> originalFileNameList = new ArrayList<String>();

		for (MultipartFile file : files) {

			String originalFileName = file.getOriginalFilename();

			originalFileNameList.add(originalFileName);

			// 3.덮어쓰기 방지 UUID 생성
			UUID uuid = UUID.randomUUID();
			String saveFileName = uuid.toString() + "_" + originalFileName;

			// 4.저장할 폴더+파일 이름
			File newFile = new File(uploadPath + saveFileName);

			// 5.가져오기
			file.transferTo(newFile);

		}

		// 6.업로드한 파일 이름 보내기
		model.addAttribute("originalFileName", originalFileNameList);

		return "upload/fileUploadMultipleResult";
	}

	@RequestMapping("/fileOriginNameUpload")
	public String fileOriginNameUpload(@RequestParam("uploadFile") MultipartFile file, Model model)
			throws IllegalStateException, IOException {

		// 1.파일 저장 폴더 지정
		String uploadPath = "C:/springWorkspace/upload/";

		// 2.저장할 파일 이름 불러오기
		String originalFileName = file.getOriginalFilename();

		// 4.저장할 폴더+파일 이름
		File newFile = new File(uploadPath + originalFileName);

		// 5.가져오기
		file.transferTo(newFile);

		// 6.업로드한 파일 이름 보내기
		model.addAttribute("originalFileName", originalFileName);

		return "upload/fileUploadResult";
	}

}
