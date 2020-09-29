<!DOCTYPE html>
<%@page import="com.qing.bookstore.entity.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

  <head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 	<title>qing书店</title>
 	<%@ include file="/WEB-INF/views/common/head.html"%>


  </head>
  <body>
    <header class="header mb-5">
    <div ><%@ include file="/WEB-INF/views/common/top.jsp"%></div>
    </header>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div id="main-slider" class="owl-carousel owl-theme">
                <div class="item"><img src="/bookstore/img/main-slider1.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="/bookstore/img/main-slider2.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="/bookstore/img/main-slider3.jpg" alt="" class="img-fluid"></div>
                <div class="item"><img src="/bookstore/img/main-slider4.jpg" alt="" class="img-fluid"></div>
              </div>
              <!-- /#main-slider-->
            </div>
          </div>
        </div>
        <!--
        *** ADVANTAGES HOMEPAGE ***
        _________________________________________________________
        -->
       <div id="advantages">
          <div class="container">
            <div class="row mb-4">
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-heart"></i></div>
                  <h3><a href="#">顾客至上</a></h3>
                  <p class="mb-0">我们提供最好的服务</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-tags"></i></div>
                  <h3><a href="#">最优惠的价格</a></h3>
                  <p class="mb-0">因为专注所以专业</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-thumbs-up"></i></div>
                  <h3><a href="#">100% 满意</a></h3>
                  <p class="mb-0">3个月免费退货</p>
                </div>
              </div>
            </div>
            <!-- /.row-->
          </div>
          <!-- /.container-->
        </div>
        <!-- /#advantages-->
     
        <!-- *** ADVANTAGES END ***-->
        <!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
        <div id="hot">
          <div class="box py-4">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h2 class="mb-0">本周热门</h2>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="product-slider owl-carousel owl-theme">
              <%ArrayList<Book> indexBookList=(ArrayList)session.getAttribute("indexBookList"); 
              for(Book book:indexBookList){ %>
              <div class="item">
                <div class="product">
                  <div class="flip-container">
                    <div class="flipper">
                      <div class="front"><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a></div>
                      <div class="back"><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a></div>
                    </div>
                  </div>
                  <a href="/bookstore/book/bookView?bName=<%=book.getBname() %>" class="invisible"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a>
                  <div class="text">
                    <h3><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><%=book.getBname() %></a></h3>
                    <p class="price"> 
                    <%if(book.getState().equals("1")){%>
                    	￥<%=book.getPrice()%>
                    <%}else{%>
                    <del>￥<%=book.getPrice()*1.25 %></del>￥<%=book.getPrice() %>
                    <%} %>
                    </p>
                  </div>
                  <!-- /.text-->
                 
                  <div class="ribbon sale">
                    <div class="theribbon"> <%if(book.getState().equals("1")){ %>满减<%}else{ %>特价<% }%></div>
                    <div class="ribbon-background"></div>
                  </div>
                  <%if(book.getPrice()%3==0){ %>
                  <!-- /.ribbon-->
                  <div class="ribbon new">
                    <div class="theribbon">新品</div>
                    <div class="ribbon-background"></div>
                  </div>
                  <%} %>
                  <%if(book.getPrice()%4==0){ %>
                  <!-- /.ribbon-->
                  <div class="ribbon gift">
                    <div class="theribbon">热销</div>
                    <div class="ribbon-background"></div>
                  </div>
                   <%} %>
                  <!-- /.ribbon-->
                </div>
                <!-- /.product-->
              </div>
              <%} %>
              <!-- /.product-slider-->
            </div>
            <!-- /.container-->
          </div>
          <!-- /#hot-->
          <!-- *** HOT END ***-->
        </div>
        <!--
        *** GET INSPIRED ***
        _________________________________________________________
        -->
        <div class="container">
          <div class="col-md-12">
            <div class="box slideshow">
              <h3>团队精神       企业目标</h3>
              <p class="lead">专注    专业      打造卓越品牌       用心服务大众</p>
              <div id="get-inspired" class="owl-carousel owl-theme">
                <div class="item"><a href="#"><img src="/bookstore/img/getinspired1.jpg" alt="Get inspired" class="img-fluid"></a></div>
                <div class="item"><a href="#"><img src="/bookstore/img/getinspired2.jpg" alt="Get inspired" class="img-fluid"></a></div>
                <div class="item"><a href="#"><img src="/bookstore/img/getinspired3.jpg" alt="Get inspired" class="img-fluid"></a></div>
              </div>
            </div>
          </div>
        </div>
        <!-- *** GET INSPIRED END ***-->
        <!--
        *** BLOG HOMEPAGE ***
        _________________________________________________________
        -->
        <div class="box text-center">
          <div class="container">
            <div class="col-md-12">
              <h3 class="text-uppercase">书籍笔记</h3>
              <p class="lead mb-0">你在寻求志同道合的书友吗? <a href="blog.html">了解更多!</a></p>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="col-md-12">
            <div id="blog-homepage" class="row">
              <div class="col-sm-6">
                <div class="post">
                  <h4><a href="post.html">追风筝的人</a></h4>
                  <p class="author-category"> <a href="#">qing</a>分享 <a href="">追风筝的人</a></p>
                  <hr>
                  <p class="intro">第一次接触这本书就被它的名字所吸引,风筝可以唤起每个人童年时代的一段美好回忆。"追风筝的人"到底又是怎样一种人呢?这是一部震撼人心的作品！推荐大家去可靠</p>
                  <p class="read-more"><a href="post.html" class="btn btn-primary">继续阅读</a></p>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="post">
                  <h4><a href="post.html">外科风云</a></h4>
                  <p class="author-category"> <a href="#">qing</a> 分享 <a href="">外科风云</a></p>
                  <hr>
                  <p class="intro">看到故事中的陆大夫刚开始的鲁莽直率，仿佛看到曾经的自己，本着正义之名面对不合理的事情总是一副小愤青的姿态。这本书写得很好，就是结局略显草率，要是有下部的话就更好了。</p>
                  <p class="read-more"><a href="post.html" class="btn btn-primary">继续阅读</a></p>
                </div>
              </div>
            </div>
            <!-- /#blog-homepage-->
          </div>
        </div>
        <!-- /.container-->
        <!-- *** BLOG HOMEPAGE END ***-->
      </div>
    </div>
    <form><input id="msg" type = "hidden" name = "#" value = ${msg}></form>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
  	<div ><%@ include file="/WEB-INF/views/common/footer.html"%></div>
    
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
   <script > 
   if(document.getElementById("msg").value!=''){
	   
	   alert(document.getElementById("msg").value)
   }
  
   </script>
   
  </body>
</html>