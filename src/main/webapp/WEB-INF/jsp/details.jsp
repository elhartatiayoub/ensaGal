<%-- 
    Document   : details.jsp
    Created on : 01-Feb-2015, 18:38:23
    Author     : Sara
--%>

<%@page import="com.ensa.form.ImageAddForm"%>
<%@ include file="import.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ENSA Gallery</title>
        <%@ include file="header.jsp" %>
         <%
            if (request.getAttribute("ImageAddForm") == null) {
                request.setAttribute("ImageAddForm", new ImageAddForm());
            }
            %>
    </head>
    <body>
        <%@include file="body_header.jsp"%>
<div class="container">
        <div class="row">
            <div class="span9">
                <div class="row">
                    <div class="span9 image-detail">
                        <div class="auto image-single">
                            <img src="/ensaGal/resources/img/4_b.jpg" class="centered" />
                        </div>
                    </div>
                    <div class="span9 image-description">
                        <h3>Description</h3>
                        <p>${image.descripton}</p>
                    </div>
                    <div class="span9 image-comments">
                        <div class="comment">
                            <h3>${image.comment}Comments On This Image</h3>
                            <ul>
                                <li class="comment-blue">
                                    <div class="avatar">
                                        <a href="#"><img src="/ensaGal/resources/img/gravatar.jpg" /></a>
                                        <span class="comment-name"><a href="#">${image.title}</a></span>
                                        <span class="comment-date"><p>${image.date}</p></span>
                                    </div>
                                    <div class="comment-text">
                                        
                                    </div>
                                </li>
                            </ul>
                         </div>
                        <br class="clearfix" />
                        <h3>Post Comment</h3>
                        <div class="post-comment">
                            <form class="form-horizontal" />
                                <textarea rows="5" class="input-xxlarge inp-btm" name="comments" style="resize: none;" placeholder="Enter your comment here.."></textarea><br />
                                <input type="email" name="email" class="input-xxlarge inp-btm" placeholder="Enter your email address" required/="" /><br />
                                <input type="text" name="name" class="input-xxlarge inp-btm" placeholder="Enter your name" required="" /><br />
                                <input type="text" name="site" class="input-xxlarge inp-btm" placeholder="Enter your site" required="" /><br />
                                <input type="submit" name="submit" value="Submit" class="btn btn-primary" /> <input type="reset" name="reset" value="Reset" class="btn" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="span3">
                <div class="row">
                    <div class="span3 sidebar-detail-menu">
                        <ul>
                            <li><a href="#" rel="tooltip" title="Share">Share</a></li>
                            <li><a href="#" rel="tooltip" title="Add Comment">Comment</a></li>
                            <li><a href="#" rel="tooltip" title="Download">Download</a></li>
                            <li><a href="#" rel="tooltip" title="Like">Like</a></li>
                        </ul>
                    </div>
                    <div class="span3 sidebar-detail-similiar">
                        <div class="similiar-image">
                            <h4>Similar Image</h4>
                            <a href="#"><img src="img/1_b.jpg" class="img-thumbs" /></a><a href="#"><img src="img/2_b.jpg" class="img-thumbs" /></a><a href="#"><img src="img/3_b.jpg" class="img-thumbs" /></a>
                            <a href="#"><img src="img/4_b.jpg" class="img-thumbs" /></a><a href="#"><img src="img/5_b.jpg" class="img-thumbs" /></a><a href="#"><img src="img/1_b.jpg" class="img-thumbs" /></a>
                        </div>    
                    </div>
                    <div class="span3 sidebar-detail-category">
                        <div class="category-image">
                            <div class="cat-tags">Tags : <a href="#">Building</a>, <a href="#">Tower</a>, <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></div>
                            <div class="cat-category">Category : <a href="#">image</a>, <a href="#">building</a>, <a href="#">photography</a> </div>
                            <div class="cat-downloaded">Downloaded by : <a href="#">John Doe</a>, <a href="#">Lisa</a>, <a href="#">Andra</a>, <a href="#">Avriq</a>, <a href="#">Aji satria</a> </div>
                            <div class="cat-liked">Liked by : <a href="#">Lisa</a>, <a href="#">John Doe</a>, <a href="#">Avriq</a>, <a href="#">Aji satria</a> </div>
                            <div class="cat-shared">Shared by : <a href="#">Nichols</a>, <a href="#">John Doe</a>, <a href="#">Avriq</a>, <a href="#">Abraham</a>, <a href="#">Jordan</a>, <a href="#">James</a> </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="span12 more-images">
                <h3>More Images from <a href="#">John Doe</a></h3>
            </div>
            
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/1_b.jpg"><img src="img/1_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/2_b.jpg"><img src="img/2_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/3_b.jpg"><img src="img/3_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/5_b.jpg"><img src="img/5_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            
            <div class="span12 other-images">
                <h3>Other similar images</h3>
            </div>
            
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/1_b.jpg"><img src="img/1_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/2_b.jpg"><img src="img/2_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/3_b.jpg"><img src="img/3_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            <div class="span3 galery">
                <div class="menu-galery">
                    <ul>
                        <li><a href="detail.html" rel="tooltip" title="Detail"><i class="iconbig-search"></i></a></li>
                        <li><a href="detail.html" rel="tooltip" title="Add Comment"><i class="iconbig-speak"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Download"><i class="iconbig-download"></i></a></li>
                        <li><a href="#" rel="tooltip" title="Like"><i class="iconbig-black-star"></i></a></li>
                    </ul>
                </div>
                <div class="image-galery"><a class="images1" href="img/5_b.jpg"><img src="img/5_b.jpg" /></a></div>
                <div class="count-galery">
                    <ul>
                        <li><i class="icon-comment"></i> 5</li>
                        <li><i class="icon-download-alt"></i> 7</li>
                        <li><i class="icon-star"></i> 2</li>
                        <li><i class="icon-eye-open"></i> 20</li>
                    </ul>
                </div>
                <div class="tags-galery">
                    <p><i class="icon-tags"></i> Tags : <a href="#">Building</a>, <a href="#">Tower</a>, 
                    <a href="#">Eifel</a>, <a href="#">Wonders of the world</a>, <a href="#">Miracle</a></p>
                </div>
            </div>
            
        </div>
    </div>
    </body>
</html>
