package com.living.util.upload;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;

import com.living.webapp.action.BaseAction;

/**
 * 文件上传 Action
 * @author C.donglin
 * @since 2009-12-25
 */
public class FileUploadAction extends BaseAction {
	private static final long serialVersionUID = 6533784997008320631L;
	
	private File doc; // 上传文件的属性
	private String docFileName; // 上传文件名称属性
	private String docContentType; // 上传文件类型属性
	private String directory; // 上传文件路径属性
	private String targetFileName; // 保存文件名称属性
	
	/**
	 * 上传文件
	 * @author C.donglin
	 * @since 2009-12-27
	 * @return 文件名
	 * @throws Exception
	 */
	public String upload() throws Exception {
		// 获得保存路径的实际目录, 默认为 uploads
		if (directory==null || directory.trim().equals("")) {
			directory = "uploads";
		}
		String realPath = getRealyPath(directory);
		String targetDirectory = realPath;
		// 生成保存文件的文件名称
		targetFileName = generateFileName(docFileName);
		
		String serverDir = directory + "/" + targetFileName;
		// 保存文件的路径
		setDirectory(targetDirectory + "\\" + targetFileName);
		// 建立一个目标文件
		File target = new File(targetDirectory, targetFileName);
		// 将临时文件复制到目标文件
		FileUtils.copyFile(doc, target);
		return serverDir;
	}
	
	/**
	 * 为上传文件自动分配文件名称，避免重复
	 * @author C.donglin
	 * @since 2009-12-25
	 * @param fileName
	 * @return
	 */
	private String generateFileName(String fileName) {
		// 获得当前时间
		DateFormat format = new SimpleDateFormat("yyMMddHHmmss");
		// 转换为字符串
		String formatDate = format.format(new Date());
		// 随机生成文件编号
		// int random = new Random().nextInt(10000);
		// 获得文件后缀名称
		int position = fileName.lastIndexOf(".");
		String fileNameNotExt = fileName.substring(0, position);
		String extension = fileName.substring(position);
		// 组成一个新的文件名称
		return fileNameNotExt + "_" + formatDate + extension;
	}
	
	/**
	 * @return the doc
	 */
	public File getDoc() {
		return doc;
	}

	/**
	 * @param doc the doc to set
	 */
	public void setDoc(File doc) {
		this.doc = doc;
	}

	// 属性的 setter 和  getter方法
	
	/**
	 * @return the docFileName
	 */
	public String getDocFileName() {
		return docFileName;
	}

	/**
	 * @param docFileName the docFileName to set
	 */
	public void setDocFileName(String docFileName) {
		this.docFileName = docFileName;
	}

	/**
	 * @return the docContentType
	 */
	public String getDocContentType() {
		return docContentType;
	}

	/**
	 * @param docContentType the docContentType to set
	 */
	public void setDocContentType(String docContentType) {
		this.docContentType = docContentType;
	}

	/**
	 * @return the targetFileName
	 */
	public String getTargetFileName() {
		return targetFileName;
	}
	/**
	 * @param targetFileName the targetFileName to set
	 */
	public void setTargetFileName(String targetFileName) {
		this.targetFileName = targetFileName;
	}

	public String getDirectory() {
		return directory;
	}

	public void setDirectory(String directory) {
		this.directory = directory;
	}
	
}
