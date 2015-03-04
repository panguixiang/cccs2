/**
 * Copyright ? 2009 www.debug.cn
 * All Rights Reserved
 */
package com.dsg.cccs.utils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import java.awt.*;
import java.awt.image.*;
import java.awt.Graphics;
import javax.imageio.ImageIO;

/**
 * xhEditor文件上传的Java - Servlet实现.
 * 
 * @author easinchu
 * 
 */
@SuppressWarnings({ "serial", "deprecation" })
public class UploadFileServlet extends HttpServlet {

	private static String baseDir = "/upload/xheditor/";// 上传文件存储目录
	private static Long maxSize = 0l;

	// 0:不建目录 1:按天存入目录 2:按月存入目录 3:按扩展名存目录 建议使用按天存

	/**
	 * 上传文件数据处理过程
	 */
	@SuppressWarnings({ "unchecked" })
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("GBK");
		response.setHeader("Cache-Control", "no-cache");

		String err = "";
		String newFileName = "";

		DiskFileUpload upload = new DiskFileUpload();
		try {
			List<FileItem> items = upload.parseRequest(request);
			Map<String, Serializable> fields = new HashMap<String, Serializable>();
			Iterator<FileItem> iter = items.iterator();

			while (iter.hasNext()) {
				FileItem item = (FileItem) iter.next();
				if (item.isFormField())
					fields.put(item.getFieldName(), item.getString());
				else
					fields.put(item.getFieldName(), item);
			}

			/* 获取表单的上传文件 */
			FileItem uploadFile = (FileItem) fields.get("filedata");

			/* 获取文件上传路径名称 */
			String fileNameLong = uploadFile.getName();
			// System.out.println("fileNameLong:" + fileNameLong);

			/* 获取文件扩展名 */
			/* 索引加1的效果是只取xxx.jpg的jpg */
			String extensionName = fileNameLong.substring(fileNameLong
					.lastIndexOf(".") + 1);
			// System.out.println("extensionName:" + extensionName);

			/* 文件是否为空 */
			if (uploadFile.getSize() == 0) {
				printInfo(response, "上传文件不能为空", "");
				return;
			}
			/* 检查文件大小 */
			if (maxSize > 0 && uploadFile.getSize() > maxSize) {
				printInfo(response, "上传文件的大小超出限制", "");
				return;
			}

			// 0:不建目录, 1:按天存入目录, 2:按月存入目录, 3:按扩展名存目录.建议使用按天存.
			String fileFolder = new SimpleDateFormat("yyyyMMdd")
					.format(new Date());

			/* 文件存储的相对路径 */
			String saveDirPath = baseDir + fileFolder + "/";
			// System.out.println("saveDirPath:" + saveDirPath);

			/* 文件存储在容器中的绝对路径 */
			String saveFilePath = this.getServletConfig().getServletContext()
					.getRealPath("")
					+ saveDirPath;
			// System.out.println("saveFilePath:" + saveFilePath);

			/* 构建文件目录以及目录文件 */
			File fileDir = new File(saveFilePath);
			if (!fileDir.exists()) {
				fileDir.mkdirs();
			}

			/* 重命名文件 */
			String filename = UUID.randomUUID().toString();
			File savefile = new File(saveFilePath + filename + "."
					+ extensionName);

			/* 存储上传文件 */
			// System.out.println(upload == null);
			uploadFile.write(savefile);

			// 这个地方根据项目的不一样，需要做一些特别的定制。
			newFileName = request.getContextPath()+saveDirPath + filename + "." + extensionName;
			// System.out.println("newFileName:" + newFileName);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			newFileName = "";
			err = "错误: " + ex.getMessage();
		}
		printInfo(response, err, newFileName);
	}

	/**
	 * 使用I/O流输出 json格式的数据
	 * 
	 * @param response
	 * @param err
	 * @param newFileName
	 * @throws IOException
	 */
	public void printInfo(HttpServletResponse response, String err,
			String newFileName) throws IOException {
		PrintWriter out = response.getWriter();
		// String filename = newFileName.substring(newFileName.lastIndexOf("/")
		// + 1);
		out.println("{\"err\":\"" + err + "\",\"msg\":\"" + newFileName + "\"}");
		out.flush();
		out.close();
	}
	
	public static String abscut(String sessionPath, String srcImageFile, int x, int y, int destWidth,
            int destHeight,String portraitimgfile) {
		 String newImageName = null;
		 String saveFilePath = null;
		 
        try {
            Image img;
            ImageFilter cropFilter;
            // 读取源图像
            BufferedImage bi = ImageIO.read(new File(sessionPath+srcImageFile));
            int srcWidth = bi.getWidth(); // 源图宽度
            int srcHeight = bi.getHeight(); // 源图高度
            if (srcWidth >= destWidth && srcHeight >= destHeight) {
                Image image = bi.getScaledInstance(srcWidth, srcHeight,
                        Image.SCALE_DEFAULT);
                // 改进的想法:是否可用多线程加快切割速度
                // 四个参数分别为图像起点坐标和宽高
                // 即: CropImageFilter(int x,int y,int width,int height)
                cropFilter = new CropImageFilter(x, y, destWidth, destHeight);
                img = Toolkit.getDefaultToolkit().createImage(
                        new FilteredImageSource(image.getSource(), cropFilter));
                BufferedImage tag = new BufferedImage(destWidth, destHeight,
                        BufferedImage.TYPE_INT_RGB);
                Graphics g = tag.getGraphics();
                g.drawImage(img, 0, 0, null); // 绘制缩小后的图
                g.dispose();
                // 输出为文件
                /**
                 * 删除缓存文件夹的文件，并向头像文件夹添加新文件
                 */
                File cacheFile = new File(sessionPath+srcImageFile);
    			if (cacheFile.exists()) {
    				cacheFile.delete();
    			}
                newImageName = srcImageFile.substring(srcImageFile.lastIndexOf("/")+1,srcImageFile.length());
                //文件存储的相对路径
    		    saveFilePath = "/upload/" + portraitimgfile + "/"
    					+ new SimpleDateFormat("yyyyMMdd").format(new Date()) + "/";
    			// 构建文件目录以及目录文件
    			File fileDir = new File(sessionPath+saveFilePath);
    			if (!fileDir.exists()) {
    				fileDir.mkdirs();
    			}
                ImageIO.write(tag, "JPEG", new File(sessionPath+saveFilePath+newImageName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  (saveFilePath+newImageName);
    }

}
