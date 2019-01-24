<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kr.co.board1.service.BoardService"%>
<%@page import="kr.co.board1.vo.MemberVO"%>
<%@page import="kr.co.board1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getServletContext().getRealPath("/data");
	int maxSize = 1024 * 1024 * 10; //10mb
	
	MultipartRequest mr = new MultipartRequest(request, path, maxSize, "utf-8", new DefaultFileRenamePolicy());
	
	
	BoardService service = BoardService.getInstance();
	MemberVO member = (MemberVO)session.getAttribute("member");
	String uid = member.getUid();
	
	
	
	String title 	= mr.getParameter("subject");
	String content	= mr.getParameter("content");
	String fileName	= mr.getFilesystemName("file");
	String regip	= request.getRemoteAddr();
	
	int file = 0;	
	
	if(fileName != null){
		file = 1;
		
		//파일명 생성(uuid)
		int idx = fileName.lastIndexOf(".");
		String ext = fileName.substring(idx);
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss_");
		String now = sdf.format(date);
		
		String newfileName = now + uid + ext;
		
		//파일명 변경
		long fileSize = 0;
		byte[] buf = new byte[1024];
		
		File oldFile = new File(path+"/"+fileName);
		File newFile = new File(path+"/"+newfileName);
		
		FileInputStream fis = new FileInputStream(oldFile);
		FileOutputStream fos = new FileOutputStream(newFile);
		
		int read = 0;
		
		while(true){
			read = fis.read(buf,0,buf.length);
			
			if(read == -1){
				break;//더이상 가지고올 바이너리 데이터가 없을 경우
			}
			fos.write(buf,0,read);
		}
		
		fis.close();
		fos.close();
		
		//oldFile.renameTo(newFile);
		oldFile.delete();
		
		//
		int seq = service.writeBoard(file, title, content, uid, regip);
		//filetable insert
		service.fileInsert(seq, fileName, newfileName);
	}
	else{
		service.writeBoard(file, title, content, uid, regip);
	}
		
	
	
	
	response.sendRedirect("../list.jsp");
	
	
	
%>