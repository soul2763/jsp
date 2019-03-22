package soul2763.kr.studio.service;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import soul2763.kr.studio.config.DBConfig;
import soul2763.kr.studio.config.SQL;
import soul2763.kr.studio.controller.CommonAction;


public class FileUploadService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) {	
		
		try {
			String path = req.getServletContext().getRealPath("/pic_img");
			
			int maxSize = 1024 * 1024 * 10; //10mb
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String fileName	= mr.getFilesystemName("file");
			String fileType = mr.getParameter("content");
			
			//filetable insert
			fileInsert(fileName, fileType);	
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		

		
		
		return "../member/write.jsp";
	}
	
	public void fileInsert(String fileName, String fileType) throws Exception{
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_FILE);
		psmt.setString(1, fileName);
		psmt.setString(2, fileType);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
	}
}
