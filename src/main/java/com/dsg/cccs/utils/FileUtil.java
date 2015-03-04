package com.dsg.cccs.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: FileUtil
 * @Description: TODO
 * @author proteus modoucc_gmail_com
 * @date 2011-8-5 下午5:10:31
 * 
 */
public class FileUtil {

	/**
	 * 
	 * @method: saveFile
	 * @author: Matty.Cong(Modoucc<AT>gmail.com)
	 * @description: TODO
	 * @date: 2012-9-16
	 * @param fileRealPath
	 *            文件实际保存目录
	 * @param fileHttpPath
	 *            文件HTTP访问目录
	 * @param prefix
	 *            文件保存的前缀
	 * @param uploadFile
	 * @return
	 */
	public static String saveFile(HttpSession session, String prefix,
			MultipartFile uploadFile) {

		String fileFolder = new SimpleDateFormat("yyyyMMdd").format(new Date());

		/* 文件存储在容器中的实际路径 */
		String saveFilePath = session.getServletContext().getRealPath("/")
				+ "/" + prefix + fileFolder + "/";

		/* 构建文件目录 */
		File fileDir = new File(saveFilePath);
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}

		/* 获取上传的文件名称 */
		String fileNameLong = uploadFile.getOriginalFilename();
		/* 获取文件扩展名 */
		String extensionName = fileNameLong.substring(fileNameLong
				.lastIndexOf(".") + 1);
		/* 重命名文件 */
		String filename = UUID.randomUUID().toString();
		try {
			FileOutputStream out = new FileOutputStream(saveFilePath + filename
					+ "." + extensionName);
			out.write(uploadFile.getBytes()); // 写入文件
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prefix +fileFolder+"/"+ filename + "." + extensionName;
	}

	public static String saveFile(String fileRealPath, MultipartFile uploadFile) {
		String baseDir = "/upload/account/";
		String fileFolder = new SimpleDateFormat("yyyyMMdd").format(new Date());
		/* 文件存储的相对路径 */
		String saveDirPath = baseDir + fileFolder + "/";
		/* 文件存储在容器中的绝对路径 */
		// String saveFilePath
		// =request.getSession().getServletContext().getRealPath(saveDirPath)+"/";
		String saveFilePath = fileRealPath + saveDirPath;
		System.out.println(saveFilePath);
		/* 构建文件目录以及目录文件 */
		File fileDir = new File(saveFilePath);
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}

		/* 获取上传的文件名称 */
		String fileNameLong = uploadFile.getOriginalFilename();
		/* 获取文件扩展名 */
		String extensionName = fileNameLong.substring(fileNameLong
				.lastIndexOf(".") + 1);
		/* 重命名文件 */
		String filename = UUID.randomUUID().toString();
		try {
			FileOutputStream out = new FileOutputStream(saveFilePath + filename
					+ "." + extensionName);
			out.write(uploadFile.getBytes()); // 写入文件
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return saveDirPath + filename + "." + extensionName;
	}

	public static String updateUserImage(String fileRealPath,
			MultipartFile uploadFile, String filename) {
		String baseDir = "/upload/portImages/";
		/* 文件存储的相对路径 */
		String saveDirPath = baseDir + "/";
		/* 文件存储在容器中的绝对路径 */
		String saveFilePath = fileRealPath + saveDirPath;
		System.out.println(saveFilePath);
		/* 构建文件目录以及目录文件 */
		File fileDir = new File(saveFilePath);
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}
		/* 获取上传的文件名称 */
		String fileNameLong = uploadFile.getOriginalFilename();

		/* 获取文件扩展名 */
		String extensionName = fileNameLong.substring(fileNameLong
				.lastIndexOf(".") + 1);
		if (!extensionName.equalsIgnoreCase("jpg")) {
			if (!extensionName.equalsIgnoreCase("gif")) {
				return "false";
			}
		}
		try {
			FileOutputStream out = new FileOutputStream(saveFilePath + filename
					+ "." + extensionName);
			out.write(uploadFile.getBytes()); // 写入文件
			out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return filename + "." + extensionName;
	}

	/**
	 * 个人中心上传注册附件，友情连接上传附件 若是修改，则将以前的文件删除
	 * 
	 * @param fileRealPath
	 * @param uploadFile
	 * @param oldImageUrl
	 * @param fileurl
	 * @return
	 */
	public static String saveCenterFile(String fileRealPath,
			MultipartFile uploadFile, String oldImageUrl, String fileurl) {

		String flag = "";
		try {
			if (null != oldImageUrl && oldImageUrl.length() > 5) {// 这里大于5只是为了防止“”
				File fileDir = new File(fileRealPath + oldImageUrl);
				if (fileDir.exists()) {
					fileDir.delete();
				}
			}
			// 文件存储的相对路径
			String saveDirPath = "/upload/" + fileurl + "/"
					+ new SimpleDateFormat("yyyyMMdd").format(new Date()) + "/";
			String saveFilePath = fileRealPath + saveDirPath;
			// 构建文件目录以及目录文件
			File fileDir = new File(saveFilePath);
			if (!fileDir.exists()) {
				fileDir.mkdirs();
			}
			// 获取上传的文件名称
			String fileNameLong = uploadFile.getOriginalFilename();
			// 获取文件扩展名
			String extensionName = fileNameLong.substring(fileNameLong
					.lastIndexOf(".") + 1);
			if (!extensionName.equalsIgnoreCase("jpg")) {
				if (!extensionName.equalsIgnoreCase("gif")) {
					return "false";
				}
			}
			// 重命名文件
			String filename = UUID.randomUUID().toString();
			FileOutputStream out = new FileOutputStream(saveFilePath + filename
					+ "." + extensionName);
			out.write(uploadFile.getBytes()); // 写入文件
			out.close();
			flag = saveDirPath + filename + "." + extensionName;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * 执行删除工具
	 * 
	 * @param delpath
	 * @return
	 */
	public static void deleteCachFile(String delpath) {
		try {
			System.out.println("-------删除cachefile文件夹下的文件及文件夹------");
			File file = new File(delpath);
			if (!file.isDirectory()) {
				file.delete();
			} else if (file.isDirectory()) {
				String[] filelist = file.list();
				for (int i = 0; i < filelist.length; i++) {
					File delfile = new File(delpath + "\\" + filelist[i]);
					if (!delfile.isDirectory()) {
						delfile.delete();
					} else if (delfile.isDirectory()) {
						deleteCachFile(delpath + "\\" + filelist[i]);
					}
				}
				file.delete();

			}

		} catch (Exception e) {
			System.out.println("删除cachefile文件夹下的文件及文件夹异常---Exception:"
					+ e.getMessage());
		}
	}

}
