<%-- 
    Document   : GalleryPage
    Created on : May 16, 2021, 7:27:38 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/gastyle.css" rel="stylesheet" type="text/css"/>
        <script src="script.js" type="text/javascript"></script>
    </head>
    <body>

        <div class="container-fluid">
            <%@include file="header.jsp" %>

            <div class="content">
                <div class="container">
                    <div class="wrapper-content">
                        <div class="left">
                            <c:if test="${errorGallery == null}">
                                <div class="left-heading">
                                    <h2>${gallery.title}</h2>
                                </div>
                                <div class="left-content">

                                    <div class="layout-row">

                                        <div class="span12" id="big_block">
                                            <div class="image">
                                                <img src="${Top1Img}" alt="" class="main-image"/>
                                            </div>

                                        </div>
                                        <c:if test="${errorpageclick == null}">
                                            <div class="section" id="section">

                                                <c:forEach items="${listImg}" var="list">
                                                    <div class="span3" id="small-image" >

                                                        <div class="thumbnail" id="thumbnail">

                                                            <div id="smallimg" onclick="changeImage(this)">
                                                                <img src="${list.url}" alt="" />
                                                            </div>

                                                        </div>


                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </c:if>
                                        

                                    </div>

                                    <c:if test="${countNumberGallery > 1}">
                                        <div class="page">
                                            <c:forEach begin="1" end="${countNumberGallery}" var="i">
                                                <c:choose>
                                                    <c:when test="${pageClick eq i}">
                                                        <a class="page-number active"><p>${i}</p></a>
                                                            </c:when>
                                                            <c:otherwise>
                                                        <a class="page-number " href="galleryController?pageClick=${i}&galleryID=${gallery.gid}">
                                                            <p>${i}</p>
                                                        </a>
                                                    </c:otherwise>
                                                </c:choose>              
                                            </c:forEach>
                                        </div>
                                    </c:if>
                                </div>
                                <c:if test="${errorpageclick!=null}">
                                    <h3>${errorpageclick}</h3>
                                </c:if>

                            </c:if>
                            <c:if test="${errorGallery!=null}">
                                <h3>${errorGallery}</h3>
                            </c:if>
                        </div>
                        <%@include file="right.jsp" %>
                    </div>


                    <div class="footer-content">

                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
