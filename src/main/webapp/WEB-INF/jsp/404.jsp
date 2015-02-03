<%-- 
    Document   : 404.jsp
    Created on : 30-Jan-2015, 20:10:30
    Author     : Sara
--%>


<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ENSA Gallery</title>
        <%@ include file="header.jsp" %>
    </head>
    <body>
             <%@include file="body_header.jsp"%>
       <div class="account-container">
        <div class="form-content clearfix">
            <div class="error_404">
                <div>
                    <h2>404</h2>
                    <h3>Page not Found</h3>
                </div>
            <div class="clearfix"></div><br>
                     <a href="/ensaGal/index" class="button large color margin_0">Home Page</a>
            </div>
        </div> <!-- /form-content -->

    </div> <!-- /account-container -->
            <%@ include file="footer.jsp" %>

    </body>
</html>
