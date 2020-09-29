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
                  <li aria-current="page" class="breadcrumb-item active">全部书籍</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">分类目录</h3>
                </div>
              	 <div class="card-body">
              	 <% String state =(String)request.getAttribute("state");%>
                  <ul class="nav nav-pills flex-column category-menu">
                    <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=0" class="nav-link <% if(state.equals("0")){%>active<%}%>">特价 <span class="badge badge-<%if(state.equals("0")){%>light<%}else{%>secondary<%}%>">${tsum}</span></a>
                      <ul class="list-unstyled">
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=治愈&state=0" class="nav-link">治愈</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=小说&state=0" class="nav-link">小说</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=社会科学&state=0" class="nav-link">社会科学</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=心理&state=0" class="nav-link">心理</a></li>
                        <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=计算机&state=0" class="nav-link">计算机</a></li>
                      </ul>
                    </li>
                    <li><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=1" class="nav-link <% if(state.equals("1")){%>active<%}%>">满减  <span class="badge badge-<%if(state.equals("1")){%>light<%}else{%>secondary<%}%>">${msum}</span></a>
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
            <div class="banner"><a href="http://www.hnuc.edu.cn/"><img src="/bookstore/img/hnuc.png" alt="湖南工商大学" class="img-fluid"></a></div>
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>全部书籍</h1>
                <p>这里是我们的书籍列表，您还可以根据分类来筛选，或是直接搜素您需要的！</p>
              </div>
              <div class="box info-bar">
                <div class="row">
                	<%if((Integer)request.getAttribute("pageSize")<=12){%>
                  <div class="col-md-12 col-lg-4 products-showing">每页显示 <strong>${pageSize}</strong>本书籍</div>
                  <%}else{%>
                	<div class="col-md-12 col-lg-4 products-showing"> <strong>显示所有</strong>书籍</div>
                  <% } %>
                  <div class="col-md-12 col-lg-7 products-number-sort">
                    <form class="form-inline d-block d-lg-flex justify-content-between flex-column flex-md-row">
                      <div class="products-number"><strong>展示</strong>
                      <%int currPage =(Integer) request.getAttribute("currPage");
                      int pageSize =(Integer) request.getAttribute("pageSize");
                      if(pageSize==6){ %>
                    	<a href="#" class="btn btn-sm btn-primary">6</a><a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=12&sort=${sort }&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">12</a><a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=0&sort=${sort }&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">所有</a><span>产品</span></div>
                      <%}else if(pageSize==12){%>
                       <a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=6&sort=${sort }&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">6</a><a href="#" class="btn btn-sm btn-primary">12</a><a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=0&sort=${sort}&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">所有</a><span>产品</span></div>
                      <%}else{ %>
                       <a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=6&sort=${sort }&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">6</a><a href="/bookstore/book/bookList?currPage=${currPage }&pageSize=12&sort=${sort }&cond=${cond }&state=${state }" class="btn btn-outline-secondary btn-sm">12</a><a href="#" class="btn btn-sm btn-primary">所有</a><span>产品</span></div>
                      <%} %>
                      <div class="products-sort-by mt-2 mt-lg-0"><strong>排序方式</strong>
                        <select id="sort-by" name="sort-by" class="form-control" >
                          <option  ${sort == "bid" ?"selected= 'selected'" : ""}value="bid">默认</option>
                          <option ${sort == "convert(bname using gbk)" ?"selected= 'selected'" : ""}value="convert(bname using gbk)">书名</option>
                          <option ${sort == "price" ?"selected= 'selected'" : ""}value="price">价格</option>
                        </select>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="row products">
              <%ArrayList<Book> booklist=(ArrayList)request.getAttribute("booklist"); 
              for(Book book:booklist){	
              %>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>" class="invisible"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.html"><%=book.getBname() %></a></h3>
                      <p class="price"> 
                      <%if(book.getState().equals("1")){%><%=book.getPrice() %><%}else{%><del><%=book.getPrice()*1.25 %></del><%=book.getPrice() %><%} %>
                      </p>
                      <p class="buttons"><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>" class="btn btn-outline-secondary">查看详情</a><a href="#"  onclick="addCar(<%=book.getBid() %>)"   id="addCar"  class="btn btn-primary"><i class="fa fa-shopping-cart"></i>加入购物车</a></p>
                    </div>
                    <!-- /.text-->
                    <%if(book.getState().equals("1")){%>
                   <div class="ribbon sale">
                      <div class="theribbon">满减</div>
                      <div class="ribbon-background"></div>
                    </div>
                   <% }else{ %>
                    <div class="ribbon sale">
                      <div class="theribbon">特价</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <%} %>
                   
                    <!-- /.ribbon-->
                    <div class="ribbon new">
                      <div class="theribbon">新品</div>
                      <div class="ribbon-background"></div>
                    </div>
                  </div>
                  <!-- /.product            -->
                </div>
                <%} %>
                <!-- /.products-->
              </div>
              <div class="pages">
              	<%if(pageSize>12){ %>
                <p class="loadMore"><a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> 加载更多</a></p>
                <%}else{ int i; 
                	int sum=(Integer)request.getAttribute("sum");
                	
                %>
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <%if(currPage!=1){%><li class="page-item"><a href="/bookstore/book/bookList?currPage=${currPage-1 }&pageSize=${pageSize }&sort=${sort }&cond=${cond }&state=${state }" aria-label="Previous" class="page-link"><span aria-hidden="true">«</span><span class="sr-only">上一页</span></a></li><%}%>
                     <%for(i=1;i<=(sum-1)/pageSize+1;i++){ %>
                    <li class="page-item <%if(i==currPage){ %>active<%} %>"><a href="/bookstore/book/bookList?currPage=<%=i %>&pageSize=${pageSize }&sort=${sort }&cond=${cond }&state=${state }" class="page-link"><%=i %></a></li>
                   
                     <%} %>
                     <%if(currPage!=(sum-1)/pageSize+1){%><li class="page-item"><a href="/bookstore/book/bookList?currPage=${currPage+1 }&pageSize=${pageSize }&sort=${sort }&cond=${cond }&state=${state }" aria-label="Next" class="page-link"><span aria-hidden="true">»</span><span class="sr-only">下一页</span></a></li> <%} %>
                  </ul>
                </nav>
                <%} %>
              </div>
            </div>
            <!-- /.col-lg-9-->
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
   
    $("#sort-by").change(function(){
    	
        var opt=$("#sort-by").val();
        
        console.log(opt);
        window.location = "/bookstore/book/bookList?currPage=${currPage }&pageSize=${pageSize }&sort="+opt+"&cond=${cond }&state=${state }";
    });

    
    function addCar(bid){
   		var uid = "${user.uid}";
	   if(uid==''){
		   alert("您还未登录，赶紧去登录吧！");
	   }
	   else{
		   window.location ="/bookstore/buyCar/add?uid="+uid+"&bid="+bid;
	   }
   }
    </script>
  </body>
</html>