<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,mvc.model.*" %>	

<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href= "css/Auth.css" rel="stylesheet">

<body>

	<div class="sidenav">
         <div class="login-main-text">
            <h2>Head Note<br> Login Page</h2>
            <p>Login or register from here to access.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action ="register" method="post">
                  <div class="form-group">
                     <label>Email</label>
                     <input type="text" class="form-control" placeholder="Email" name='email'>
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" placeholder="Password" name="password">
                  </div>
                  
                  <div class="form-group">
                     <label>Confirm password</label>
                     <input type="password" class="form-control" placeholder="Confirm Password" name="password2">
                  </div>
                  <button type="submit" class="btn btn-black">Register</button>
                  <a href='/Projeto1B/' class="btn btn-secondary">Go to login</a>
                                    
               </form>
               
               
            </div>
         </div>
      </div>
<%
	DAO dao = new DAO();
	User user = new User();
	if ((request.getParameter("email")!=null) && (request.getParameter("password")!=null)&&(request.getParameter("password2")!=null)){
		user.setEmail(request.getParameter("email"));
	if (request.getParameter("password").equals(request.getParameter("password2"))) {
		user.setPassword(request.getParameter("password"));
		dao.storeUser(user);
		dao.close();
		%>
	<br>User adicionado com sucesso. <br>
	<% } else {
		%>
		<br>As senhas não batem. <br>

		<%
		} } %>
	
	</body></html>
</body>
</html>