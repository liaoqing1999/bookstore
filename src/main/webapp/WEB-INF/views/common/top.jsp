 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <div id="top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">今日优惠</a>
            <a href="#" class="ml-1">订单每满 ￥100即可享受立减10优惠!</a></div>
            <div class="col-lg-6 text-center text-lg-right">
              <ul class="menu list-inline mb-0">
              <%if(session.getAttribute("user")==null){%>
                <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#login-modal">登录</a></li>
              <%}else{ %>
              	<li class="list-inline-item"><a href="#">${user.uname}</a></li>
              	<li class="list-inline-item"><a href="/bookstore/user/loginout">退出</a></li>
              	<%} %>
                <li class="list-inline-item"><a href="/bookstore/register">注册</a></li>
                <li class="list-inline-item"><a href="contact.html">联系</a></li>
             
                <li class="list-inline-item"><a href="#">最近浏览</a></li>
            	
            	
                  
              </ul>
            </div>
          </div>
        </div>
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">顾客登录</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
              </div>
              <div class="modal-body">
                <form action="/bookstore/user/login" method="post">
                  <div class="form-group">
                    <input id="email-modal" name="userName" type="text" placeholder="用户名" class="form-control">
                  </div>
                  <div class="form-group">
                    <input id="password-modal" name="password" type="password" placeholder="密码" class="form-control">
                  </div>
                  <p class="text-center">
                    <button id = "submit" class="btn btn-primary" ><i class="fa fa-sign-in"></i>登录</button>
                  </p>
                </form>
                <p class="text-center text-muted">还未注册?</p>
                <p class="text-center text-muted"><a href="register.html"><strong>立即注册</strong></a>这很容易，只需1分钟即可完成，可让您获得特别折扣和更多优惠！</p>
              </div>
            </div>
          </div>
        </div>
        <!-- *** TOP BAR END ***-->
        
        
      </div>
      <nav class="navbar navbar-expand-lg">
        <div class="container">
        <a href="/bookstore" class="navbar-brand home">
        <img src="/bookstore/img/logo.png" alt="书店 LOGO" class="d-none d-md-inline-block">
        <img src="/bookstore/img/logo-small.png" alt="书店 logo" class="d-inline-block d-md-none">
        <span class="sr-only">回到首页</span></a>
          <div class="navbar-buttons">
            <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">导航</span><i class="fa fa-align-justify"></i></button>
            <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">搜索框</span><i class="fa fa-search"></i></button><a href="basket.html" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
          </div>
          <div id="navigation" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="#" class="nav-link active">首页</a></li>
              <li class="nav-item dropdown menu-large"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=0" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">特价<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>治愈</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">校园</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">爱情</a></li>
                          <li class="nav-item"><a href = "/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">成长</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">古代言情</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>小说</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">悬疑</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">魔幻</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">科幻</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">武侠</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>社会科学</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">科普读物</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">医学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">历史</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">工业</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">自然科学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">农林业</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>心理</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=0" class="nav-link">心理学百科</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=0" class="nav-link">社会心理学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=0" class="nav-link">情感心理学</a></li>
                        </ul>
                        <h5>计算机</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=0" class="nav-link">计算机基础</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=0" class="nav-link">数据库</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=0" class="nav-link">开发语言</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown menu-large"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=1" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">满减<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>治愈</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=1" class="nav-link">校园</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=1" class="nav-link">爱情</a></li>
                          <li class="nav-item"><a href = "/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=1" class="nav-link">成长</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=1" class="nav-link">古代言情</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>小说</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=1" class="nav-link">悬疑</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=1" class="nav-link">魔幻</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=1" class="nav-link">科幻</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=1" class="nav-link">武侠</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>社会科学</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">科普读物</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">医学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">历史</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">工业</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">自然科学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=1" class="nav-link">农林业</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>心理</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=1" class="nav-link">心理学百科</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=1" class="nav-link">社会心理学</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=1" class="nav-link">情感心理学</a></li>
                        </ul>
                        <h5>计算机</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=1" class="nav-link">计算机基础</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=1" class="nav-link">数据库</a></li>
                          <li class="nav-item"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=1" class="nav-link">开发语言</a></li>
                        </ul>
                      </div>
                      
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">Template<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>Shop</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="index.html" class="nav-link">Homepage</a></li>
                          <li class="nav-item"><a href="category.html" class="nav-link">Category - sidebar left</a></li>
                          <li class="nav-item"><a href="category-right.html" class="nav-link">Category - sidebar right</a></li>
                          <li class="nav-item"><a href="category-full.html" class="nav-link">Category - full width</a></li>
                          <li class="nav-item"><a href="detail.html" class="nav-link">Product detail</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>User</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="register.html" class="nav-link">Register / login</a></li>
                          <li class="nav-item"><a href="customer-orders.html" class="nav-link">Orders history</a></li>
                          <li class="nav-item"><a href="customer-order.html" class="nav-link">Order history detail</a></li>
                          <li class="nav-item"><a href="customer-wishlist.html" class="nav-link">Wishlist</a></li>
                          <li class="nav-item"><a href="customer-account.html" class="nav-link">Customer account / change password</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Order process</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="basket.html" class="nav-link">Shopping cart</a></li>
                          <li class="nav-item"><a href="checkout1.html" class="nav-link">Checkout - step 1</a></li>
                          <li class="nav-item"><a href="checkout2.html" class="nav-link">Checkout - step 2</a></li>
                          <li class="nav-item"><a href="checkout3.html" class="nav-link">Checkout - step 3</a></li>
                          <li class="nav-item"><a href="checkout4.html" class="nav-link">Checkout - step 4</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>Pages and blog</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="blog.html" class="nav-link">Blog listing</a></li>
                          <li class="nav-item"><a href="post.html" class="nav-link">Blog Post</a></li>
                          <li class="nav-item"><a href="faq.html" class="nav-link">FAQ</a></li>
                          <li class="nav-item"><a href="text.html" class="nav-link">Text page</a></li>
                          <li class="nav-item"><a href="text-right.html" class="nav-link">Text page - right sidebar</a></li>
                          <li class="nav-item"><a href="404.html" class="nav-link">404 page</a></li>
                          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="navbar-buttons d-flex justify-content-end">
              <!-- /.nav-collapse-->
              <div id="search-not-mobile" class="navbar-collapse collapse"></div><a data-toggle="collapse" href="#search" class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span class="sr-only">搜素</span><i class="fa fa-search"></i></a>
              <div id="basket-overview" class="navbar-collapse collapse d-none d-lg-block"><a href="#"  onclick="buyCar()"   id="buyCar"class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span id="buyCar">购物车</span></a></div>
            </div>
          </div>
        </div>
      </nav>
      <div id="search" class="collapse">
        <div class="container">
          <form role="search" class="ml-auto">
            <div class="input-group">
              <input id="searcha" type="text" placeholder="搜素你需要的书籍吧！" class="form-control">
              <div class="input-group-append">
                <button type="button"  onclick="searchs()" class="btn btn-primary"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <script >
     
      document.onreadystatechange = function() {
    	  if (document.readyState == "complete") {
    		  var str='';
    		  if("${user.uname}"==''){
    			  str="购物车";
    		  }else{
    			  str="购物车有${count}件商品";
    		  }
    		  document.getElementById("buyCar").innerHTML =str ;
    	  }
    	}
      function searchs(){
    	 
    	  console.log( document.getElementById("searcha"));
    	  window.location="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond="+document.getElementById("searcha").value+"&state=";
      }
      function buyCar(){
     		
     		var uid = "${user.uid}";
     		
  	   if(uid==''){
  		   alert("您还未登录，赶紧去登录吧！");
  	   }
  	   else{
  		   window.location="/bookstore/buyCar/userCar?uid="+uid;
  	   }
      }
      </script >
	
      