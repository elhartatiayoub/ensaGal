<%-- 
    Document   : signin.jsp
    Created on : 31-Jan-2015, 12:35:10
    Author     : Sara
--%>
<%@page import="com.ensa.form.UserSignForm"%>
<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html>
    <head>
      <title>ENSA Gallery</title>
      <%@ include file="header.jsp" %>
      
        <%
            if (request.getAttribute("UserSignForm") == null) {
                request.setAttribute("UserSignForm", new UserSignForm());
            }
            %>
    </head>
    <body>
      <%@include file="headerDisc.jsp"%>
        <div class="account-container btm10">
	  <div class="form-content clearfix">
    
		<form:form action="/ensaGal/connect" method="post" modelAttribute="UserSignForm">
			<h1><i class="iconbig-lock"></i>Connexion</h1>	
			<div class="login-fields">
            
				<p>Connectez vous avec votre compte déja créé</p>
                
				<div class="field">
					<form:label path="username">email</form:label>
					<form:input path="username" type="text" id="username"  value="" placeholder="Username" class="login username-field" required="" />
				</div> <!-- /field -->

				<div class="field">
					<form:label path="pass">Password:</form:label>
					<form:input path="pass" type="password" id="password"  value="" placeholder="Password" class="login password-field" required="" />
				</div> <!-- /password -->

			</div> <!-- /login-fields -->			

			<div class="login-actions">
				<span class="login-checkbox">
                                        <form:label class="choice" path="field">
                                        <form:checkbox path="field"  id="Field"  class="field login-checkbox"  tabindex="4" />  Keep me signed in
                                        </form:label>
				</span>
                                        <form:button type="submit" path="submit"  class="btn-signin btn btn-primary" >Sign in</form:button>
                                        <a href="#" class="btn-signin btn">Cancel</a>
                        
			</div> <!-- .actions -->
                            <p><a href="/ensaGal/forgot">Forgot your password ?</a></p>
			<div class="login-social marg10-btm">
				<p>Sign in using social network:</p>
				    <a href="#" class="btn"><img src="/ensaGal/resources/img/twitter-18.png" /> Signin with twitter</a>
				    <a href="#" class="btn"><img src="/ensaGal/resources/img/facebook-18.png" /> Signin with facebook</a>			
			</div>
        </form:form>
	   </div> <!-- /form-content -->
    </div> <!-- /account-container -->        
        <%@ include file="footer.jsp" %>
    </body>
</html>
