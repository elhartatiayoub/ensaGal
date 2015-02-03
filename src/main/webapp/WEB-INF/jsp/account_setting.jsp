Document   : account_setting.jsp
    Created on : 30-Jan-2015, 19:20:21
    Author     : Sara
--%>


<%@page import="com.ensa.form.UserModifyForm"%>
<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ENSA Gallery</title>
        <%@ include file="header.jsp" %>
         <%
            if (request.getAttribute("UserModifyForm") == null) {
                request.setAttribute("UserModifyForm", new UserModifyForm());
            }
            %>
    </head>
    <body>
     <%@include file="body_header.jsp"%>
      <div class="container">
        <div class="row">
            <div class="span3 left-sidebar">
                <div class="account-settings">
                    <img src="/SpringMVCHibernate/resources/img/gravatar.jpg" />
                </div>
                <div class="account-detail">
                    <p><strong>Sign up :</strong></p>
                    <p>3 weeks a go</p>
                    <p><strong>Location : </strong></p>
                    <p>California</p>
                    <hr />
                    <p><a href="/SpringMVCHibernate/profile">View Public Profile</a></p>
                </div>
            </div>
            <div class="span9 content-setting">
                <div class="content-settings">
                    <div class="tabbable"> <!-- Only required for left/right tabs -->
                      <ul class="nav nav-tabs">
                        <li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>
                        <li><a href="#password" data-toggle="tab">Password</a></li>
                      </ul>
                      <div class="tab-content">
                        <div class="tab-pane active" id="profile"><!-- Profile -->
                          <form:form class="form-horizontal" action="/SpringMVCHibernate/profil" modelAttribute="UserModifyForm" >
                            <div class="control-group">
                              <form:label path="nom" class="control-label">Your Name</form:label>
                              <div class="controls">
                                <form:input path="nom" class="input-xlarge" value="dgfhj" />
                              </div>
                            </div>
                            <div class="control-group">
                              <form:label path="username" class="control-label">Username</form:label>
                              <div class="controls">
                                <form:input path="username" type="text" class="input-xlarge" value="" />
                              </div>
                            </div>
                            <div class="control-group">
                              <form:label path="email" class="control-label">Email</form:label>
                              <div class="controls">
                                <form:input path="email" type="email" class="input-xlarge" value="" />
                              </div>
                            </div>
                
                            <div class="control-group">
                              <form:label path="description" class="control-label">About</form:label>
                              <div class="controls">
                                <form:textarea path="description" class="input-xlarge" id="textarea" rows="3"></form:textarea>
                              </div>
                            </div>
                            <div class="control-group">
                              <form:label path="avatar" class="control-label">Avatar</form:label>
                              <div class="controls">
                                <form:input path="avatar"  class="input-file" id="fileInput" type="file" />
                              </div>
                            </div>
                            <div class="form-actions">
                                <form:button type="submit" name="submit" value="Save Change" class="btn" >Modifier</form:button>
                            </div>
                          </form:form>
                        </div>
                        
                        <div class="tab-pane" id="password"><!-- Password -->
                          <form:form class="form-horizontal" action="/SpringMVCHibernate/profil" modelAttribute="UserModifyForm">
                            <div class="control-group">
                              <form:label path="oldpass" class="control-label">Enter Old Password</form:label>
                              <div class="controls">
                                <form:input path="oldpass" type="password" class="input-xlarge" />
                              </div>
                            </div>
                            <div class="control-group">
                              <form:label path="newpass" class="control-label">Enter New Password</form:label>
                              <div class="controls">
                                <form:input path="newpass" type="password" class="input-xlarge" />
                              </div>
                            </div>
                            <div class="control-group">
                              <form:label path="confNew" class="control-label">Confirm New Password</form:label>
                              <div class="controls">
                                <form:input path="confNew" type="password" class="input-xlarge" />
                              </div>
                            </div>
                            <div class="form-actions">
                                <form:button path="submit" type="submit"  value="Save Change" class="btn" >Modifier</form:button>
                            </div>
                          </form:form>
                        </div>
                      </div>
                    </div> <!-- end tabbable -->
                </div>
            </div>
        </div>
    </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>