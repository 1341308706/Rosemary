﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 页面初始化加载，判断session是否存在鲜花类别的值 -->
 <c:if test="${sessionScope.flowerType eq null }">
<script>location.href="/Rosemary/flower.do?op=queryFlowerType";</script>
</c:if> 
<!-- 页面初始化加载，判断session是否存在分页鲜花的值 -->
 <%-- <c:if test="${sessionScope.FlowerInfo eq null }">
<script>location.href="/Rosemary/flower.do?op=queryFlowerInfoByPage";</script>
</c:if>   --%>
<html>

<head>
<meta charset="utf-8">
<title>店铺</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Specific Meta  -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- Custom CSS -->
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />


</head>

<body>


	<!-- header-start -->
	<%@ include file="headhav.jsp"%>
	<!-- header-end -->
	<!-- heading-banner-start -->
	<div class="heading-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<div class="breadcrumb">
						<a title="Return to Home" href="index.html"> <i
							class="icon-home"></i>
						</a> <span class="navigation-page"> <span
							class="navigation-pipe">></span> Shop
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- heading-banner-end -->
	<!-- shop-area-start -->
	<div class="shop-area">
		<div class="container">
			<div class="ro w">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="shop-left-col wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="content-box">
							<h2>鲜花类别</h2>
							<ul>
								 <c:forEach var="flowerType" items="${sessionScope.flowerType }">
							
							<li ><label class="check-label"> <a href="javascript:void(0);" id="${flowerType.typeId}" class="flowerType">${flowerType.typeName}</a>
								</label></li>
							</c:forEach> 


							</ul>
						</div>
						<div class="content-box">
							<h2>价格</h2>
							<div class="info_widget">
								<div class="price_filter">
									<div id="slider-range"></div>
									<div class="price_slider_amount">
										<input type="text" id="amount" name="price"
											placeholder="Add Your Price"  /> <input type="submit"
											value="范围" >
									</div>
								</div>
							</div>
						</div>


						<div class="content-box">
							<h2>标签</h2>
							<ul class="tags">
								<li><a href="#">香槟玫瑰</a></li>
								<li><a href="#">粉色洋桔梗</a></li>
								<li><a href="#">戴安娜粉玫瑰</a></li>
								<li><a href="#">粉百合</a></li>
								<li><a href="#">紫色小雏菊</a></li>
								<li><a href="#">红色康乃馨</a></li>
								<li><a href="#">白色郁金香</a></li>
								<li><a href="#">白色多头香水百合</a></li>
								<li><a href="#">粉色满天星</a></li>
								<li><a href="#">红色扶郎</a></li>
								<li><a href="#">浅香槟玫瑰</a></li>
								<li><a href="#">金枝玉叶玫瑰</a></li>
								<li><a href="#">明亮向日葵</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 col-xs-12">
					<div class="shop-right-col wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<div class="category-products">
							<div class="topbar-category">
								<div class="pager-area">
									<div>
										<!-- Nav tabs -->
										<ul class="shop-tab">
											<li role="presentation" class="active"><a
												href="#gried_view" role="tab" data-toggle="tab"> <i
													class="fa fa-th-large"></i></a></li>
											<li role="presentation"><a href="#list_view" role="tab"
												data-toggle="tab"> <i class="fa fa-th-list"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="sort-by hidden-xs">
									<label>排序方式</label> <select id="sort">
										<option value="#">最低价格</option>
										<option value="#">最高价格</option>
										<option value="#">鲜花名从A-Z</option>
										<option value="#">鲜花名从Z-A</option>
										<option selected="selected" value="#"></option>
									</select>
								</div>
								
								
							</div>
							<div class="shop-category-product">
								<div class="row">
									<div class="category-product">
										<!-- Tab panes -->
										<div class="tab-content">
											<div role="tabpanel"
												class="tab-pane active fade in flower-show" id="gried_view">
												<!-- 商品展示区域 -->

											</div>
											<!-- 分页区域 -->
										
										<!-- 分页结束 -->
  										</div>
  										
									</div>
									
								</div>
								<div id="pageDiv"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- shop-area-end -->

	<!-- footer-start -->
	<%@ include file="foot.jsp"%>
	<!-- footer-end -->
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="product-details">
						<div class="container">
							<div class="row">
								<div class="col-md-5 col-xs-12 col-sm-5">
									<div class="picture-tab">
										<ul class="pic-tabs">
											<li class="active"><a data-toggle="tab" href="#pic11"><img
													src="img/pro-tab/a01.jpg" alt="" /></a></li>

										</ul>
										<div class="tab-content">
											<div id="pic11" class="tab-pane fade in active">
												<!-- single-product-start -->
												<div class="single-product">
													<div class="single-product-img">
														<a href="#"> <img src="img/singlepro/a01.jpg" " />
														</a> <span class="sale-box "> <span class="sale ">Sale</span>
														</span> <span class="new-box "> <span class="new ">New</span>
														</span>
													</div>
												</div>
												<!-- single-product-end -->
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-7 col-xs-12 col-sm-7 ">
									<div class="product-details-info ">
										<h5 class="product-title ">粉色洋桔梗</h5>
										<div class="price-box ">
											<span class="price ">£359.00</span> <span class="old-price ">£390.00</span>
										</div>
										<div class="rating ">
											<div class="star star-on "></div>
											<div class="star star-on "></div>
											<div class="star star-on "></div>
											<div class="star star-on "></div>
											<div class="star "></div>
										</div>
										<div class="short-description ">
											<p>花语：洋桔梗是真诚不变的爱，纯洁、无邪、漂亮、感动，富于感情。</p>
											<p>材
												料：白色紫罗兰2扎（紫罗兰花期为3-6月，其他月份用白色金鱼花或者白色桔梗替代）、粉色洋桔梗1扎，斑春兰0.5扎（斑春兰如缺货可用尤加利替代）.
											</p>
											<p>包 装：矮身圆肚玻璃花瓶系丝带.</p>
										</div>
										<div class="add-cart ">
											<p class="quantity cart-plus-minus ">
												<label>数量</label> <input type="text " value="1 " />
											</p>
											<div class="shop-add-cart ">
												<button>加入购物车</button>
											</div>
										</div>
										<div class="widget-icon ">
											<a href="# "> <i class="fa fa-facebook "></i>
											</a> <a href="# "> <i class="fa fa-twitter "></i>
											</a> <a href="# "> <i class="fa fa-linkedin "></i>
											</a> <a href="# "> <i class="fa fa-google-plus "></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- modal-end -->
	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="js/vendor/jquery-1.12.0.min.js "></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js "></script>
	<!-- owl.carousel js -->
	<script src="js/owl.carousel.min.js "></script>
	<!-- meanmenu js -->
	<script src="js/jquery.meanmenu.js "></script>
	<!-- countdown js -->
	<script src="js/countdown.js "></script>
	<!-- jquery.nivo.slider.pack js -->
	<script src="js/jquery.nivo.slider.pack.js "></script>
	<!-- jquery-ui.min.js -->
	<script src="js/jquery-ui.min.js "></script>
	<!-- wow js -->
	<script src="js/wow.min.js "></script>
	<!-- plugins js -->
	<script src="js/plugins.js "></script>
	<!-- main js -->
	<script src="js/main.js "></script>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
		
	</script>
	 <script type="text/javascript" src="layui/layui.js">
			
		</script> 
	<script>
		 
		/*
		 定义一个拼接字符串方法（用户页面输出）
		*/
		function displayFlower(arr){
			//每次输出之前先清空子节点。
			$("#gried_view").empty();
			 $.each(arr.data, function(index, obj) {
				 
					$("#gried_view").append('<div class="col-md-4 col-sm-6 col-xs-12 mar-bot">'+
							<!-- single-product-start -->
							'<div class="single-product">'+
								'<div class="single-product-img">'+
									'<a href="javacript:void(0);" class="flowershow"> <img  src="'+obj.sPicture+'" alt="'+obj.flowerId+'" />'+
									'</a> <span class="sale-box"> <span class="sale">Sale</span>'+
									'</span> <span class="new-box"> <span class="new">New</span>'+
									'</span>'+
								'</div>'+
								'<div class="single-product-content">'+
									'<div class="product-title">'+
										'<h5>'+
											'<a href="#">'+obj.flowerName+'</a>'+
										'</h5>'+
									'</div>'+
									'<div class="rating">'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star"></div>'+
									'</div>'+
									'<div class="price-box">'+
										'<span class="price">'+obj.price+'</span> <span'+
											' class="old-price">'+(obj.price+100)+'</span>'+
									'</div>'+
									'<div class="product-action">'+
										'<button class="button btn btn-default add-cart"'+
											'title="add to cart">加入购物车</button>'+
										'<a class="add-wishlist" href="#" title="add to wishlist">'+
											'<i class="fa fa-heart"></i>'+
										'</a> '+
									'</div>'+
								'</div>'+
							'</div>'+
							<!-- single-product-end -->
						'</div>');
                        
					
				}); 
		}
		
		 $(function() {
			 var typeId;//初始化花的类别编号。
			 var keyword;//初始化关键词（搜索框内容）
			 var total;//初始化总搜索条数
			 var page;//初始化当前页
			 var pageSize;//初始化每页条数
			
			 
			 
			 
			 /*
				进入页面即调用ajax方法后台查询所有鲜花
				*/ 
			$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage", function(
					data, status) {
          
				var array = JSON.parse(data);
				total=array.total;
				page=array.page;
				pageSize=array.pageSize;
				displayFlower(array);
				pageshow();
				

			});
			
			//点击图片时，获取图片ID（进入购物界面使用）
			$(document).on("click",".flowershow",function(){
				
				console.log("我是你点击鲜花的id"+$(this).find('img').attr('alt'));//测试输出鲜花ID
				
				
			});
			//输入框按下时的监听事件（进行模糊查询）
		     $("#keyword").keyup(function(){
		    	keyword=$(this).val(); 
		    	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&keyword="+keyword, function(
						data, status) {
	          
					var array = JSON.parse(data);
					total=array.total;
					page=array.page;
					pageSize=array.pageSize;
					
					displayFlower(array);
					pageshow();

				});
		    	 
		     });
			//左侧花的类别标签点击事件（用于模糊查询）
			$(".flowerType").click(function(){
				 typeId=$(this).attr("id");
				 
		    console.log("我是花类别的ID："+typeId);//测试输出类别ID	
		    $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&typeId="+typeId, function(
					data, status) {
          
				var array = JSON.parse(data);
				total=array.total;
				page=array.page;
				pageSize=array.pageSize;
				console.log('我是你点中花类别ID所查询出来对应的鲜花数据：'+array);
				//调用拼接方法
				 displayFlower(array); 
				pageshow();
				

			});
		   
			});
			//下拉框选中事件（模糊查询）
			 $("#sort").change(function(){
				 var sort="";//初始化排序方式关键词
				 var sortType="desc";//初始化排序方式（降序还是升序）
				 var sortRoot=$("#sort option:selected").text();//获取选中的下拉框的值
				 var selectedIndex=$("#sort ").get(0).selectedIndex;//获取选中的下拉框的索引
				 
				 //如果索引大于1，则为按花名排序
				 if(selectedIndex>1){
					 sort="flowerName";
					 if(selectedIndex==2){
						 //大于1且等于2，则按花名升序排序
						 sortType="asc";
					 }
					 
				 }
				 else{
					 sort="price"; 
					 if(selectedIndex==0){
						 sortType="asc";
					 }
				 }
				 console.log("下拉框选中的值是："+sortRoot+",索引是："+selectedIndex+",排序是根据："+sort+",排序方式是："+sortType+",选中的类别编号是："+typeId);//测试输出
				//调用ajax传参数，实现模糊查询（排序）
				 if(typeof(typeId)==true){//如果左侧类别标签被点击的情况下，我们就传排序方式和类别编号过去服务端
					 
					 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType+"&typeId="+typeId, function(
								data, status) {
			          
							var array = JSON.parse(data);
							console.log('我是根据你选中下拉框的值排序chulai'+array);
							//调用拼接方法
							 displayFlower(array); 
							

						});
				 }
				 else{//如果左侧类别标签未被点击的情况下，我们就判断输入框是不是有值。
					 if(typeof(keyword)==true){//有值就传值进行模糊搜索
						 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType+"&keyword="+keyword, function(
									data, status) {
				          
								var array = JSON.parse(data);
								console.log('我是根据你选中下拉框的值排序chulai'+array);
								//调用拼接方法
								 displayFlower(array); 
								

							});
					 }
					 else{//没有就认为用户未输入关键字，也未选中类别标签。 则默认是对所有鲜花进行我们的排序操作
						 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType, function(
									data, status) {
				          
								var array = JSON.parse(data);
								console.log('我是根据你选中下拉框的值排序chulai'+array);
								//调用拼接方法
								 displayFlower(array); 
								

							});
						 
					 }
					 
					 
				 }
				 
					 
					 
				
				 
				
				 
			 });
			//分页开始
			function pageshow(){
				
				 layui.use(['laypage', 'layer'], function(){
					  var laypage = layui.laypage
					  ,layer = layui.layer;
					  
					//完整功能 
					  laypage.render({
					    elem: 'pageDiv'
					    ,count: total,
					    curr:page
					   ,limit:pageSize
					    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
					    ,jump: function(obj,first){
					      console.log(obj);
					      console.log(first);
					    //首次不执行
					      if(!first){
					        //do something
					        if(typeof(keyword)==true){
					        	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&page="+obj.curr+"&pageSize="+obj.limit+"&keyword="+keyword, function(
										data, status) {
					          
									var array = JSON.parse(data);
									
									displayFlower(array);
									
									

								});
					        }
					        else{
					        	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&page="+obj.curr+"&pageSize="+obj.limit, function(
										data, status) {
					          
									var array = JSON.parse(data);
									
									displayFlower(array);
									
									

								});
					        	
					        }
					    	  
					      }
					    }
					  });
					 
					});
			}
		
			//分页结束
		
			
		}); 
		
	</script>
	<!-- 分页脚本 -->
	
</body>
</html>
















