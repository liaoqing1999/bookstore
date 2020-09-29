<!DOCTYPE html>
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
                  <li aria-current="page" class="breadcrumb-item active">新账户 / 登录</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>新账户</h1>
                <p class="lead">还未成为我们的用户?</p>
                <p>通过向我们注册，我们将带你享受书籍的优越，还有更多功能对你开放！整个注册过程不会花费超过一分钟！</p>
                <p class="text-muted">如果你有任何疑问，请随时与<a href="contact.html">联系我们</a>,我们的客户服务中心将为您提供24/7全天候服务。</p>
                <hr>
                <form action="/bookstore/user/register" method="post"  οnsubmit="return checkForm()">
                  <div class="form-group">
                    <label for="name">用户名</label>
                    <input id="username" name="username"type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="email">邮箱</label>
                    <input id="email" name="email" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password">密码</label>
                    <input id="password" name="password" type="password" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="gender" style="font-size:14px;width:40px;">性别</label>
                   	<input name="gender" type="radio" value="男" style="width:30px"/>男 
                   	<input name="gender" type="radio" value="女" style="width:30px"/>女 
                   </div>
                  <div class="form-group">
                    <label for="phone">电话号码</label>
                    <input id="phone" name="phone"type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="username">地址</label>
                    <input id="address"name="address" type="text" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-user-md" onclick="checkForm()"></i>立即注册</button>
                  </div>
                  <div align="center" style="margin-top: 10px;">
                  <strong style="color:red;font-size:20px">${msg}</strong>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>登录</h1>
                <p class="lead">已经是我们的用户了?</p>
                <p class="text-muted">现在就去登录吧！登录之后可以享受更多功能和折扣奥！</p>
                <hr>
                <form action="/bookstore/user/login" method="post">
                  <div class="form-group">
                    <label for="username">用户名</label>
                    <input id="lusername" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password">密码</label>
                    <input id="lpassword" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>立即登录</button>
                  </div>
                  
                </form>
              </div>
            </div>
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
  
 
	function checkForm(){
		
		/**校验用户名*/
		//1.获取用户输入的数据

		var uValue = document.getElementById("username").value;
		console.log(uValue);
		console.log("1234");
		if(uValue==""){
			//2.给出错误提示信息
			alert("用户名不能为空!");
			return false;
		}
		
		/*校验密码*/
		var pValue = document.getElementById("password").value;
		if(pValue==""){
			alert("密码不能为空!");
			return false;
		}
		
		
	}
	</script>
  </body>
  
</html>