<%-- 
    Document   : index.jsp
    Created on : 30-Jan-2015, 20:21:41
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
            <div class="span3">
                <div class="nav-headers">
                    <h3>Parce qu'une image est un souvenir precieux,partageons la avec tous</h3>
                    <p><a href="/ensaGal/image/add" class="btn">Ajouter une image &rarr;</a></p>
                </div>
                <ul class="nav nav-tabs nav-stacked">
                    <li class="active"><a href="#"><i class="icon-picture"></i> Newest</a></li>
                    <li><a href="/ensaGal/index/popular"><i class="icon-ok"></i> Popular</a></li>
                    <li><a href="/ensaGal/index/liked"><i class="icon-bookmark"></i> Most likes</a></li>
                    <li><a href="/ensaGal/index/download"><i class="icon-th-list"></i> Most Downloaded</a></li>
                </ul>
            </div>
            <c:if test="${!empty user.images}">
                    <c:forEach items="${user.images}" var="userImage">
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="/ensaGal/detail" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="/ensaGal/detail" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                        <div class="image-galery">
                             <a href="/ensaGal/detail/${userImage.id}" class="thumbnail">
                                 <img src="${userImage.url}" alt="" /></a>
                        </div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i>${userImage.comment}</li>
                        <li><i class="icon-download-alt"></i>${userImage.downloads}</li>
                        <li><i class="icon-star"></i>${userImage.likes}</li>
                        <li><i class="icon-eye-open"></i>${userImage.shares}</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags">
                         <c:if test="${!empty userImage.keywords}">
                                <c:forEach items="${userImage.keywords}" var="keyword">
                                </i> Tags : <a href="#">${keyword}</a>,
                                </c:forEach>
                           </c:if> 
                    </p>
                </div>
            </div>
                     </c:forEach>
                </c:if> 
            </div>
        </div>
    </div>
    
    
<%@ include file="footer.jsp" %>

    </body>
</html>
