<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
	<head>
		<title>Home</title>
		
	</head>

	<body>
		<div class="sidebar-menu">
				<header class="logo1">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
				</header>
				<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
				<div class="menu">
					<ul id="menu">
						<li>
							<a href="index.html"><i class="fa fa-tachometer"></i>&nbsp;&nbsp; <span>主页</span>
								<div class="clearfix"></div>
							</a>
						</li>

						<li id="menu-academico">
							<a href="#"><i class="layui-icon ">&#xe613</i> &nbsp; </i><span> 用户管理</span> <span class="fa fa-angle-right" style="float: right"></span>
								<div class="clearfix"></div>
							</a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-avaliacoes">
									<a href="userAdd.html">用户添加</a>
								</li>
								<li id="menu-academico-avaliacoes">
									<a href="userList.html">用户列表</a>
								</li>

							</ul>
						</li>
						<li id="menu-academico">
							<a href="#"><i class="layui-icon layui-icon-snowflake" aria-hidden="true"></i>&nbsp;<span> 商品管理</span> <span class="fa fa-angle-right" style="float: right"></span>
								<div class="clearfix"></div>
							</a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-avaliacoes">
									<a href="goodsAdd.html">商品添加</a>
								</li>
								<li id="menu-academico-avaliacoes">
									<a href="goodsList.html">商品列表</a>
								</li>
								<li id="menu-academico-avaliacoes">
									<a href="portGoods.html">新品上架</a>
								</li>

							</ul>
						</li>
						<li id="menu-academico">
							<a href="orderList.html"><i class="fa fa-list-ul" aria-hidden="true"></i>&nbsp;<span> 订单管理</span>
								<div class="clearfix"></div>
							</a>

						</li>
						<li id="menu-academico">
							<a href="#"><i class="layui-icon layui-icon-chat" aria-hidden="true"></i>&nbsp;<span> 系统管理</span><span class="fa fa-angle-right" style="float: right"></span>
								<div class="clearfix"></div>
							</a>
							<ul id="menu-academico-sub">
								<li id="menu-academico-avaliacoes">
									<a href="adminAdd.html">管理员添加</a>
								</li>
								<li id="menu-academico-avaliacoes">
									<a href="adminList.html">管理员列表</a>
								</li>
								
							</ul>
						</li>

						

					</ul>
				</div>
			</div>
	</body>

</html>