<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qing.bookstore.entity.BuyCar"%>
<%@page import="com.qing.bookstore.entity.Book"%>
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
  <body >
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
                  <li aria-current="page" class="breadcrumb-item active">购物车</li>
                </ol>
              </nav>
            </div>
            <div id="basket" class="col-lg-9">
              <div class="box">
                <form method="post" >
                  <h1>购物车</h1>
                  <p class="text-muted">您目前在购物车有件${count}商品</p>
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">产品</th>
                          <th>数量</th>
                          <th>单价(元)</th>
                          <th>优惠类型</th>
                          <th colspan="2">总价(元)</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%ArrayList<BuyCar> userCar=(ArrayList)session.getAttribute("userCar"); 
                      ArrayList<Book> books=(ArrayList)session.getAttribute("books");
                      int i=0;
                      int sum=0;
                      int msum = 0;
                      int num=0;
                      for(Book book:books){	
                    	 num+=userCar.get(i).getNum();
                    	%>
                        <tr>
                          <td><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><img src="/bookstore/img/product/<%=book.getImage() %>" alt="White Blouse Armani"></a></td>
                          <td><a href="/bookstore/book/bookView?bName=<%=book.getBname() %>"><%=book.getBname() %></a></td>
                          <td>
                            <input style="width:50pt;" id="count<%=i %>" type="number" onclick="update(<%=i %>)" value=<%=userCar.get(i).getNum() %> class="form-control">
                          </td>
                          	<td id="price<%=i%>"><%=book.getPrice() %></td>
                          <td id="type<%=i%>"><%if(book.getState().equals("1")){ msum+=book.getPrice()*userCar.get(i).getNum();%>满减<%}else{%>特价<%} %></td>
                          	<td id="sum<%=i %>"><%=book.getPrice()*userCar.get(i).getNum() %></td>
                          <td><a href="/bookstore/buyCar/delete?id=<%=userCar.get(i).getId()%>&uid=${user.uid}"><i class="fa fa-trash-o"></i></a></td>
                        </tr>
                  	
                     <%  sum+=book.getPrice()*userCar.get(i).getNum();
                     i++;}%>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="5">总计(元)</th>
                          <th colspan="2" id="sum">￥<%=sum %></th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <!-- /.table-responsive-->
                  <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                    <div class="left"><a href="/bookstore/book/bookList?currPage=1&pageSize=6&sort=bid&cond=&state=" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> 继续购物</a></div>
                    <div class="right">
                      <a class="btn btn-outline-secondary" onclick="updateCar()"> <i class="fa fa-refresh"></i> 更新购物车</a>
                      <button type="submit" class="btn btn-primary">进行结算 <i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.box-->
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
            </div>
            <!-- /.col-lg-9-->
            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">订单摘要</h3>
                </div>
                <p class="text-muted">运输和其他费用是根据您输入的值计算的。折扣商品不享受满减优惠哦！</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>商品总价(元)</td>
                        <th id="sums"><%=sum %></th>
                      </tr>
                      <tr>
                        <td>运费和手续费</td>
                        <th id="freight">￥${count*5}</th>
                      </tr>
                      <tr>
                        <td>优惠</td>
                        <th id="discounts"><%if(msum>100){ %>订单已满<%=msum/100 *100%>，立减<%=msum/100*10 %>元！<%}else{%>已满<%=msum%>,还差<%=100-msum%>即可立减10元<%} %></th>
                      </tr>
                      <tr class="total">
                        <td>总计</td>
                        <th id="total"><%=sum+num*5-msum/100*10 %>(元)</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="box">
                <div class="box-header">
                  <h4 class="mb-0">优惠卷</h4>
                   
                </div>
                <p class="text-muted">如果您有优惠券代码，请在下面的框中输入。</p>
                <form>
                  <div class="input-group">
                    <input type="text" class="form-control"><span class="input-group-append">
                      <button type="button" class="btn btn-primary"><i class="fa fa-gift"></i></button></span>
                  </div>
                  <!-- /input-group-->
                </form>
              </div>
            </div>
            <!-- /.col-md-3-->
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
	<div ><%@ include file="/WEB-INF/views/common/footer.html"%></div>
    <script>
  
    function update(n) {
    	if(document.getElementById("count"+n).value<1){
    		document.getElementById("count"+n).value=1;
    		alert("订单数最少为1");
    	}else{
    	document.getElementById("sum"+n).innerHTML= Number(document.getElementById("count"+n).value)* Number(document.getElementById("price"+n).innerText);
    	var sum=0;
    	var msum=0;
    	var num=0;
    	var total=0;
    	var str='';
    	for(let i=0;i<<%=i%>;i++){
    		sum+=Number(document.getElementById("sum"+i).innerText);
    		num+=Number(document.getElementById("count"+i).value);
    		if(document.getElementById("type"+i).innerText=='满减'){
    			msum+=Number(document.getElementById("sum"+i).innerText);
    		}
    	}
    	if(msum>100){
    		str="订单已满"+(parseInt(msum/100)*100)+", 立减"+(parseInt(msum/100)*10)+"元";
    	}else{
    		str="已满"+msum+"还差"+(100-msum)+"即可立减10元";	
    	}
    
    	document.getElementById("sum").innerHTML=sum;
    	document.getElementById("sums").innerHTML=sum;
    	document.getElementById("freight").innerHTML = num*5;
    	document.getElementById("discounts").innerHTML = str;
    	document.getElementById("total").innerHTML =sum+num*5-parseInt(msum/100)*10+"元" ;
    	}
    	 
       
	}
    function updateCar(){
    	var list = [];
    	
    	<%for(int j=0;j<i;j++){%>
    		var car =new Object();
    		car.bid = <%= userCar.get(j).getBid() %>;
    		car.num = document.getElementById("count"+<%=j%>).value;
    		list.push(car);
    		
    	<%}%>
    	
    	 window.location ="/bookstore/buyCar/updateCar?uid=${user.uid}&list="+encodeURI(JSON.stringify(list));
    	
    	console.log(list);
    }
    window.onbeforeunload = function(){
    	 return "离开?";
    }
    </script>
  </body >
</html>