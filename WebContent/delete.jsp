<%@page import="com.estsoft.db.MySQLWebDBConnection"%>
<%@page import="com.estsoft.guestbook.vo.GuestbookVo"%>
<%@page import="com.estsoft.guestbook.dao.GuestbookDao"%>
<%
	Long no = Long.parseLong( request.getParameter( "no" ) );
	String password = request.getParameter( "password" );

	GuestbookVo vo = new GuestbookVo();
	vo.setNo( no );
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao( new MySQLWebDBConnection() );
	dao.delete( vo );
	
	response.sendRedirect( "/guestbook" );
%>