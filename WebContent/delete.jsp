<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    
    
    request.setCharacterEncoding("utf-8");

    String number = request.getParameter("no");
    String password = request.getParameter("password");
	
    
    Long rno = Long.parseLong(number);
 
    
    GuestBookDao dao = new GuestBookDao();
    GuestBookVo vo  = new GuestBookVo();

    vo.setNo(rno);
    vo.setPassword(password);
   
   	boolean result = dao.delete(vo);
    
    
    response.sendRedirect("index.jsp");%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=result %>
</body>
</html>