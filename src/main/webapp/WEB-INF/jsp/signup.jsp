<%-- 
    Document   : signup.jsp
    Created on : 30-Jan-2015, 16:05:50
    Author     : Sara
--%>

<%@page import="com.ensa.form.UserInscriptionForm"%>
<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ENSA Gallery</title>
        <%@ include file="header.jsp" %>

        <%
            if (request.getAttribute("UserInscriptionForm") == null) {
                request.setAttribute("UserInscriptionForm", new UserInscriptionForm());
            }
            ((UserInscriptionForm) request.getAttribute("UserInscriptionForm")).setTermsAndPolicy(false);
        %>
    </head>
    <body>
        <%@include file="headerDisc.jsp"%>
     <div class="account-container">
        <div class="form-content clearfix">

            <form:form  modelAttribute="UserInscriptionForm" method = "POST" action="/ensaGal/signup">

                <h1><i class="iconbig-note-write"></i> Sign Up</h1>	

                <div class="login-fields">
                    <p>Sign up manually:</p>

                    <div class="field">
                        <form:label path="username">Nom d'utilisateur:</form:label>
                        <form:input path="username"  id="username" placeholder="Username" class="login username-field" required="true"   />
                        <form:errors path="username" cssclass="error"></form:errors>
                    </div> <!-- /field -->

                    <div class="field">
                        <form:label path="email">Email:</form:label>
                        <form:input path="email"   id="email" placeholder="Email address" class="login email-field" required="true"  />
                        <form:errors path="email" cssclass="error"></form:errors>
                    </div> <!-- /field -->

                    <div class="field">
                        <form:label path="password">Mot de passe:</form:label>
                        <form:password path="password" id="password" placeholder="Password"  class="login password-field" required="true" />
                        <form:errors path="password" cssclass="error"></form:errors>
                    </div> <!-- /password -->

                    <div class="field">
                        <form:label path="confPass">Confirmer Mot de passe:</form:label>
                        <form:password path="confPass" id="password" placeholder="Confirmer le Mot de Passe"  class="login password-field" required="true" />
                        <form:errors path="confPass" cssclass="error"></form:errors>
                    </div> <!-- /password -->
                    


                </div> <!-- /login-fields -->			

                <div class="login-actions">
                    <form:button type="submit"  value="Sign up" class="btn-signin btn btn-primary" >Submit</form:button>
                    <a href="#" class="btn-signin btn">Cancel</a>

                </div> <!-- .actions -->


                <div class="login-social marg10-btm">
                    <p>Sign up using social network:</p>
                    <a href="#" class="btn"><img src="/ensaGal/resources/img/twitter-18.png" /> Signup with twitter</a>
                    <a href="#" class="btn"><img src="/ensaGal/resources/img/facebook-18.png" /> Signup with facebook</a>			
                </div>
            </form:form>
        </div> <!-- /form-content -->

    </div> <!-- /account-container -->


    <%@ include file="footer.jsp" %>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/image-gallery.js"></script>
    <script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
    <script src="source/jquery.fancybox.js"></script>

</body>
</html>

