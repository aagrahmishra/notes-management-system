<%@page import="com.DAO.PostDAO" %>

<%@page import="com.Db.DBConnect" %>
<%@page import="com.User.Post" %>




<!-- Code Start for (This page will not be open without Login) -->
<%
    UserDetails user1 = (UserDetails)session.getAttribute("userD");
    if(user1 == null){
        response.sendRedirect("login.jsp");
        session.setAttribute("login-error", "Please Login First...!!!");
    }
%>
<!-- Code end for (This page will not be open without Login) -->





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update notes</title>

<%@ include file="all_components/allcss.jsp"%>


</head>
<body>

 <%
                          
                      Integer noteid= Integer.parseInt(request.getParameter("note_id"));
                      PostDAO post = new PostDAO (DBConnect.getConn());
                      Post p=post.getDataById(noteid);
                    
                    %>

   <%@ include file="all_components/navbar.jsp" %>

     <div class="container mt-5 mb-5">
    <div class="text-center">
        <h1>Update Your Note</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="EditServlet" method="post">
            
              <div class="form-group">
              
                <input type="hidden" value="<%= noteid %>" name="noteid" class="form-control">
              
              </div>
            
            
                <div class="form-group">
                   
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Write Your Title</label>
                    <input type="text" name="title" value="<%= p.getTitle()%>" class="form-control" id="" aria-describedby="" placeholder="Enter Title">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Content</label>
                    <textarea name="content" rows="12" class="form-control" id="" placeholder="Enter Your Content"><%= p.getContent() %></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary">Update Note</button>
            </form>
        </div>
    </div>
</div>


   <%@ include file="all_components/footer.jsp"%>
</body>
</html>