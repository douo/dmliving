package com.living.util.upload;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.living.webapp.action.BaseAction;

/**
 *处理多文件上传的Action类
 * 
 *@authorqiujy
 *@version1.0
 */
public class MultiFileUploadAction extends BaseAction {
	private static final long serialVersionUID = 1456L;
	
	private static final int BUFFER_SIZE = 16 * 1024;
	// 文件标题
	private String title;
	// 用File数组来封装多个上传文件域对象
	private File[] upload;
	// 用String数组来封装多个上传文件名
	private String[] uploadFileName;
	// 用String数组来封装多个上传文件类型
	private String[] uploadContentType;
	// 保存文件的目录路径(通过依赖注入)
	private String savePath;

	// 以下为所有属性的getter和setter。省略。。。

	// 自己封装的一个把源文件对象复制成目标文件对象
	private static void copy(File src, File dst) {
		InputStream in = null;
		OutputStream out = null;
		try {
			in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
			out = new BufferedOutputStream(new FileOutputStream(dst),
					BUFFER_SIZE);
			byte[] buffer = new byte[BUFFER_SIZE];
			int len = 0;
			while ((len = in.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != in) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@Override
	public String execute() throws Exception {
		File[] srcFiles = this.getUpload();
		// 处理每个要上传的文件
		for (int i = 0; i < srcFiles.length; i++) {
			// 根据服务器的文件保存地址和原文件名创建目录文件全路径
			String dstPath = ServletActionContext.getServletContext()
					.getRealPath(this.getSavePath())
					+ "\\" + this.getUploadFileName()[i];
			File dstFile = new File(dstPath);
			this.copy(srcFiles[i], dstFile);
		}
		return SUCCESS;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the upload
	 */
	public File[] getUpload() {
		return upload;
	}

	/**
	 * @param upload
	 *            the upload to set
	 */
	public void setUpload(File[] upload) {
		this.upload = upload;
	}

	/**
	 * @return the uploadFileName
	 */
	public String[] getUploadFileName() {
		return uploadFileName;
	}

	/**
	 * @param uploadFileName
	 *            the uploadFileName to set
	 */
	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	/**
	 * @return the uploadContentType
	 */
	public String[] getUploadContentType() {
		return uploadContentType;
	}

	/**
	 * @param uploadContentType
	 *            the uploadContentType to set
	 */
	public void setUploadContentType(String[] uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	/**
	 * @return the savePath
	 */
	public String getSavePath() {
		return savePath;
	}

	/**
	 * @param savePath
	 *            the savePath to set
	 */
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
}
