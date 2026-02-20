<!-- Code Start for(This page will not be open without login -->
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login First!!..");
}
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
<%@ include file="all_components/allcss.jsp"%>
</head>
<body>
	<%@ include file="all_components/navbar.jsp"%>
	<div class="container-fluid p-0">
		<div class="card py-5">
			<div class="card-body text-center">
				<img src="image/notes.png" class="img-fluid-mx-auto" style="max-width: 100px;">
				<h1 class="card-title">Start Your Notes</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Add your Notes</a>
			</div>
		</div>
	</div>
	<%@ include file="all_components/footer.jsp"%>
</body>
</html>