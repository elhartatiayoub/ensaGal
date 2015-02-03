<%-- 
    Document   : profil.jsp
    Created on : 31-Jan-2015, 17:10:06
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
    <div class="container">
        <div class="row">
           <%@include file="profil_head.jsp" %>
            <div class="span9 content-setting">
                <div class="row">
                    <div class="span9">
                        <div class="public-profile">
                           <h3>About ${user.name}</h3>
                          ${user.description}
                        </div>
                    </div>
                    <div class="span9 portfolio-images">
                        <h3><a href="#">${user.name}</a> Portfolio Images</h3>
                        <div class="row">
                          <div class="span9 list-images">
                            <c:if test="${!empty user.images}">
                                <c:forEach items="${user.images}" var="userI">
                                <div class="span2">
                                    <a href="/ensaGal/detail/${userI.id}" class="thumbnail"><img src="${userI.uqrl}" alt="" /></a>
                                </div>
                                </c:forEach>
                            </c:if> 
                               
                          </div>
                        </div>
                    </div><!-- end portfolio images -->
                </div>
            </div>
            
        </div>
    </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>