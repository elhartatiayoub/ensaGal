<%-- 
    Document   : forgot.jsp
    Created on : 30-Jan-2015, 16:05:50
    Author     : Sara
--%>

<%@page import="com.ensa.form.ForgotPass"%>
<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="header.jsp" %>
        <%
            if (request.getAttribute("ForgotPass") == null) {
                request.setAttribute("ForgotPass", new ForgotPass());
            }
        %>
    </head>
    <body>

        <div id="wrap">

            <%@include file="headerDisc.jsp" %>
           <div class="account-container btm10">

	<div class="form-content clearfix">
    
		<form:form action="/forgotpass" modelAttribute="ForgotPass">

			<h1><i class="iconbig-lock"></i> Sign In</h1>	
			<div class="login-fields">
				<p>Reset your password</p>
				<div class="field">
					 <form:label path="email">Mail de recuperation:</form:label>
                                         <form:input path="email"  id="email" placeholder="Email address" class="login email-field" required=""/>					
				</div> <!-- /password -->
			</div> <!-- /login-fields -->			

			<div class="login-actions">
                            <form:button type="submit" value="Sign in" class="btn-signin btn btn-primary" >Submit</form:button>
                                <a href="#" class="btn-signin btn">Cancel</a>
			</div> <!-- .actions -->
                </form:form>

	   </div> <!-- /form-content -->

    </div> <!-- /account-container -->
    
    <%@ include file="footer.jsp" %>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="ensaGal/resources/js/jquery-1.7.2.min.js"></script>
    <script src="ensaGal/resources/js/bootstrap.js"></script>
    <script src="ensaGal/resources/js/image-gallery.js"></script>
    <script src="ensaGal/resources/js/jquery.mousewheel-3.0.6.pack.js"></script>
    <script src="ensaGal/resources/source/jquery.fancybox.js"></script>

  </body>
</html>
