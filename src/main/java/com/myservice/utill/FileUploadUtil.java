package com.myservice.utill;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

public class FileUploadUtil {
	public static void saveFile(MultipartFile mf, String dir) {
		byte [] data;
		String imgname = mf.getOriginalFilename();
		try {
			data = mf.getBytes();
			FileOutputStream fo = 
					new FileOutputStream(dir+imgname);
			fo.write(data);
			fo.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	// 파일 업로드 메서드
	public static String uploadFile(MultipartFile file, String uploadPath) throws Exception {
		String originalFilename = file.getOriginalFilename();
		String newFilename = UUID.randomUUID().toString() + "_" + originalFilename;

		// 파일 저장 경로 설정
		String savePath = uploadPath + newFilename;

		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}

		// 파일을 지정된 경로에 저장
		file.transferTo(new File(savePath));

		return newFilename;
	}

}




