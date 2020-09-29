<!DOCTYPE html>
<%@page import="com.qing.bookstore.entity.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

  <head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 	<title>qing书店</title>
 	<%@ include file="/WEB-INF/views/common/head.html"%>
  </head>
  <body>
    <!-- navbar-->
     <header class="header mb-5">
    <div ><%@ include file="/WEB-INF/views/common/top.jsp"%></div>
  	</header>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="/bookstore">首页</a></li>
                  <li  class="breadcrumb-item"><a href="#" id="state" >${book.state }</a></li>
                  <li class="breadcrumb-item"><a href="#">${book.type}</a></li>
                  <li aria-current="page" class="breadcrumb-item active">${book.bname }</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3 order-2 order-lg-1">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">分类</h3>
                </div>
                <%Book book = (Book)request.getAttribute("book"); %>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column category-menu">
                    <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=0" class="nav-link <% if(book.getState().equals("0")){%>active<%}%>">特价 <span class="badge badge-<%if(book.getState().equals("0")){%>light<%}else{%>secondary<%}%>">${tsum}</span></a>
                      <ul class="list-unstyled">
                       <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">治愈</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">小说</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">社会科学</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=0" class="nav-link">心理</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=0" class="nav-link">计算机</a></li>
                      </ul>
                    </li>
                    <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=1" class="nav-link <% if(book.getState().equals("1")){%>active<%}%>">满减  <span class="badge badge-<%if(book.getState().equals("1")){%>light<%}else{%>secondary<%}%>">${msum}</span></a>
                      <ul class="list-unstyled">
                         <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=1" class="nav-link">治愈</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=1" class="nav-link">小说</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">社会科学</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=1" class="nav-link">心理</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=1" class="nav-link">计算机</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
              <!-- *** MENUS AND FILTERS END ***-->
              <div class="banner"><a href="http://www.hnuc.edu.cn/"><img src="/bookstore/img/hnuc.png" alt="湖南工商大学" class="img-fluid"></a></div>
            </div>
            <div class="col-lg-9 order-1 order-lg-2">
              <div id="productMain" class="row">
                <div class="col-md-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div class="item"> <img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></div>
                    <div class="item"> <img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></div>
                    <div class="item"> <img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></div>
                  </div>
                  <div class="ribbon sale">
                    <div class="theribbon" id="stateLabel">特价</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                  <div class="ribbon new">
                    <div class="theribbon">新品</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <!-- /.ribbon-->
                </div>
                <div class="col-md-6">
                  <div class="box">
                    <h1 style="margin-top: 30px;" class="text-center">${book.bname}</h1>
                    <p class="goToDescription"><a href="#details" class="scroll-to">喜欢这件商品？ &amp; 来看看更多信息吧！</a></p>
                    
                    <p style="margin-top: 10px;" class="price"><del id="sale">￥${book.price*1.25}</del>￥${book.price}</p>
                    <p class="text-center buttons"><a href="#"  onclick="addCar()"   id="addCar" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> 添加到购物车</a><a href="basket.html" class="btn btn-outline-primary"><i class="fa fa-heart"></i> 立即购买</a></p>
                  </div>
                  <div data-slider-id="1" class="owl-thumbs">
                    <button class="owl-thumb-item"><img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="/bookstore/img/product/${book.image}" alt="" class="img-fluid"></button>
                  </div>
                </div>
              </div>
              <div id="details" class="box">
                <p></p>
                <h4>书籍描述</h4>
                <p>${book.detail}</p>
                <h4>作者</h4>
                <p>${book.writer}</p>
                <h4>出版社</h4>
                <p>${book.printer}</p>
                <h4>出版时间</h4>
                <p><fmt:formatDate value="${book.date}" pattern="yyyy-MM-dd"/></p>
                <hr>
                <div class="social">
                  <h4 class="text-center">分享给你的朋友</h4>
                  <p><a href="#" class="external facebook"><i class="fa fa-facebook"></i></a><a href="#" class="external gplus"><i class="fa fa-google-plus"></i></a><a href="#" class="external twitter"><i class="fa fa-twitter"></i></a><a href="#" class="email"><i class="fa fa-envelope"></i></a></p>
                </div>
              </div>
              <div class="row same-height-row">
                <div class="col-md-3 col-sm-6">
                  <div style="display: flex; justify-content: center;  align-items: center;" class="box same-height">
                    <h3  class="text-center">你可能还喜欢这些</h3>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=Python大战机器学习"><img src="/bookstore/img/product/43.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=Python大战机器学习"><img src="/bookstore/img/product/43.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=Python大战机器学习" class="invisible"><img src="/bookstore/img/product/43.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>Python大战机器学习</h3>
                      <p class="price">￥61</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=江村经济"><img src="/bookstore/img/product/40.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=江村经济"><img src="/bookstore/img/product/40.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=江村经济" class="invisible"><img src="/bookstore/img/product/40.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>江村经济</h3>
                      <p class="price">￥29</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=胜者思维"><img src="/bookstore/img/product/36.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=胜者思维"><img src="/bookstore/img/product/36.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=胜者思维" class="invisible"><img src="/bookstore/img/product/36.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>胜者思维</h3>
                      <p class="price">￥35</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
              </div>
              <div class="row same-height-row">
                <div class="col-md-3 col-sm-6">
                  <div style="display: flex; justify-content: center;  align-items: center;"class="box same-height">
                    <h3>推荐购买</h3>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=与孤独为友"><img src="/bookstore/img/product/33.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=与孤独为友"><img src="/bookstore/img/product/33.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=与孤独为友" class="invisible"><img src="/bookstore/img/product/33.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>与孤独为友</h3>
                      <p class="price">￥29</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=了不起的盖茨比"><img src="/bookstore/img/product/27.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=了不起的盖茨比"><img src="/bookstore/img/product/27.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=了不起的盖茨比" class="invisible"><img src="/bookstore/img/product/27.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>了不起的盖茨比</h3>
                      <p class="price">￥26</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="product same-height">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=苏菲的世界"><img src="/bookstore/img/product/22.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=苏菲的世界"><img src="/bookstore/img/product/22.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=苏菲的世界" class="invisible"><img src="/bookstore/img/product/22.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3>苏菲的世界</h3>
                      <p class="price">￥23</p>
                    </div>
                  </div>
                  <!-- /.product-->
                </div>
              </div>
            </div>
            <!-- /.col-md-9-->
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
   <div ><%@ include file="/WEB-INF/views/common/footer.html"%></div>
   <script > 
   if(document.getElementById("state").innerText== 0){
	  
	   document.getElementById("state").innerHTML='特价';
	   document.getElementById("stateLabel").innerHTML='特价';
   }else{
	   document.getElementById("state").innerHTML='满减';
	   document.getElementById("stateLabel").innerHTML='满减';
   }
  	if("${book.state}"=='1'){
  		
  		document.getElementById("sale").innerHTML='';
  		document.getElementById("sale").style.display="inline";
  	}
   function addCar(){
   		
   		var uid = "${user.uid}";
   		
	   if(uid==''){
		   alert("您还未登录，赶紧去登录吧！");
	   }
	   else{
		   window.location ="/bookstore/buyCar/add?uid="+uid+"&bid="+"${book.bid}";
	   }
   }
	   
	   
	
   </script > 
  </body>
</html>