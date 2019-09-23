<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,mvc.model.*" %>	
    
<!DOCTYPE html>
<html>
<body>
<form  action='register' method='post'>
 <input type='text' name='email'><br>
 <input type='password' name='password'><br>
<input type='password' name='confirm_password'><br>
<input type='submit' value='Submit'>
</form>
<%
	DAO dao = new DAO();
	User user = new User();
	if ((request.getParameter("email")!=null) && (request.getParameter("password")!=null)&&(request.getParameter("confirm_password")!=null)){
		user.setEmail(request.getParameter("email"));
	if (request.getParameter("password").equals(request.getParameter("confirm_password"))) {
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
	
	Clique <a href='/Projeto1B/'>aqui</a> para voltar à tela de login.
	</body></html>
</body>
</html>