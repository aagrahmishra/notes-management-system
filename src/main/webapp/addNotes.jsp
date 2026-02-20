<!-- Code Start for (This page will not be open without Login) -->
<%
    UserDetails user1 = (UserDetails)session.getAttribute("userD");
    if(user1 == null){
        response.sendRedirect("login.jsp");
        session.setAttribute("login-error", "Please Login First...!!!");
    }
%>
<!-- Code end for (This page will not be open without Login) -->

<%@ include file="all_components/allcss.jsp" %>
<title>Add Note</title>
<%@ include file="all_components/navbar.jsp" %>

<div class="container mt-5 mb-5">
    <div class="text-center">
        <h1>Add Your Note</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="AddNotes" method="post">
                <div class="form-group">
                    <%
                        UserDetails us = (UserDetails)session.getAttribute("userD");
                        if(us != null){
                    %>
                    <input type="hidden" name="uid" class="form-control" value="<%= us.getId() %>">
                    <%
                        }
                    %>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Enter Title</label>
                    <input type="text" name="title" class="form-control" id="" aria-describedby="" placeholder="Enter Title">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Content</label>
                    <textarea name="content" rows="12" class="form-control" id=""></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary">Add Note</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="all_components/footer.jsp" %>
