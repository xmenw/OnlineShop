<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"  %>
<%@page import="xyz.com.entity.Shop"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="../res/css/shopcar.css">
<link rel="shortcut icon" href="../res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
	 <div class="shopcar">
    	<div class="shopcar-top">
    		<div class="shopcar-top-left">
    			<a href="../index.jsp"><img src="../res/image/logo.jpg"></a>
    			<span>购物车</span>
    		</div>
    		<div class="shopcar-top-right">
    			<form action="#" method="get">
    				<div class="inputh">
    				  <input type="text" name="search" placeholder="请输入要搜索的宝贝">
    				</div>
    				<div class="button">
    				  <button type="submit"><fmt:message key="search"></fmt:message></button>
    				</div>
    			</form>
    		</div>
    	</div>
    	<div class="shopcar-bot">
    		<div class="shopcar-bot1">
    			<ul class="ul">
    				<li><a href="#">全部商品</a><span id="quanbu"></span></li>
    				<li class="xian">|</li>
    				<li><a href="#" class="cur">降价商品</a><span>0</span></li>
    				<li class="xian">|</li>
    				<li><a href="#" class="cur">库存紧张</a><span>0</span></li>
    			</ul>
    			<ul class="right">
    				<li><a href="#">结算</a></li>
    				<li>所有商品（不含运费）
    				<span id="money"></span></li>
    			</ul>
    		</div>
    		<div class="shopcar-bot2">
    			<div class="shopcar-bot2-left">
    				<ul>
    					<li>
    						<input type="checkbox" name="check" value="all" class="all" onclick="check()">   全选
    					</li>
    					<li>商品信息</li>
    				</ul>
    			</div>
    			<div class="shopcar-bot2-right">
    				<ul>
    					<li>操作</li>
    					<li>金额</li>
    					<li><fmt:message key="count"></fmt:message></li>
    					<li><fmt:message key="price"></fmt:message></li>
    				</ul>
    			</div>
    		</div>
    		<div class="shopcar-bot3">
    			<div class="shop">
    				<ul>
    					<li>
    						<input class="input"type="checkbox" name="check" value="all">   店铺：<a href="#">粉色少女风
    						</a>
    					</li>
    				</ul>
    			</div>
    		</div>
    	<c:forEach items="${requestScope.lists}" var="shop">
    		<div class="shopcar-bot4" style="margin-bottom:20px;">
    		  <ul class="left">
    		  	<li>
    			 <div class="shop1">
    				<input class="input"type="checkbox" name="checkbox" data-index="${shop.id}">	
    			 </div>
    			</li>
    			<li>
    			  <div class="shop2">
    				<img src=.${shop.pic} style="margin-right:10px;">
    				<span><a href="../detail/${shop.id}">${shop.desc}</a></span>
    			  </div>
    			</li>
    			<li>
    			 <div class="shop3">
    			 	<p><fmt:message key="color"></fmt:message>：${shop.color}</p>
    			 	<p><fmt:message key="size"></fmt:message>：${shop.size}</p>
    			 </div>
    			</li>
    			</ul>
    		   <ul class="right">
    			<li>
    			 <div class="shop7">
    			 	<ul class="ul">
    			 		<li><a href="#">移入收藏夹</a></li>
    			 		<br>
    			 		<li><a href="../deleteById/${shop.id}"><fmt:message key="delete"></fmt:message></a></li>
    			 		<ul class="hid">
    			 			<li><a href="#">相似宝贝</a></li>
    			 		</ul>
    			 	</ul>
    			 </div>
                </li> 
                	<li>
    			 <div class="shop6">
    			 	<p><fmt:message key="price"></fmt:message>：<span class="allPrice">￥${shop.price * shop.num}</span></p>
    			 </div>
    			</li>  
    			<li>	
    			 <div class="shop5">
    			 	<a href="#" class="dis">-</a>
    			 	<input type="text" name="num" disabled style="text-align: center;"value=${shop.num} >
    			 	<a href="#" class="add">+</a>
    			 </div>
    			</li> 		  
    			  <li>
    			 <div class="shop4">
    			 	<p>￥${shop.price}</p>
    			 </div>
    			</li>
      		  </ul>
    		</div>
    	</c:forEach>
    		<ul class="pagination">
			    <li><a href="##" id="prev">&laquo;</a></li>
			    <c:forEach var="i" begin="1" end="${requestScope.count}">
		    		<c:if test="${i == requestScope.begin}">	
		    			<li class="active"><a href="./${i}">${i}</a></li>
		    		</c:if>
		    		<c:if test="${i != requestScope.begin}">
			    		<li><a href="./${i}">${i}</a></li>
			    	</c:if>
				</c:forEach>
			    <li><a href="##" id="next">&raquo;</a></li>
			</ul>
    		<br><br><br><br>
    		<div class="shopcar-bot5">
    			<ul class="left" style="margin-left:30px;">
    				<li>
    					<input class="all"type="checkbox" name="check" value="all" onclick="check()">   全选
    				</li>
    				<li><a href="DelShopServlrt"><fmt:message key="delete"></fmt:message></a></li>
    				<li><a href="#">移入收藏夹</a></li>
    				<li><a href="#">分享</a></li>
    			</ul>
    			<ul class="right">
    				<li class="bill" ><a href="#" class="bc">结算</a></li>
    				<li><fmt:message key="price"></fmt:message>（不含运费）<input type="text" class="nu" value="0.00"></input></li>
    				<li>已选商品<input type="text" class="nu" value="0"></input>	件</li>
    			</ul>
    		</div>
    	</div>
    </div>
    <script>
    	let alls = 0,
    		counts = 0,
    		allPrices = 0,
    		moenys = 0;
	   	let nums = [...document.getElementsByName("num")];
	   	let checkboxs = [...document.getElementsByName("checkbox")];
	   	let bottom = document.getElementsByClassName('shopcar-bot5')[0];
	   	let count = document.getElementsByClassName('nu');
	   	let pagination = document.getElementsByClassName('pagination')[0];
	   	pagination.onclick = (e)=>{
	   		[...pagination.children].forEach((element)=>{
	   			element.classList.remove('active');
	   		})
	   		e.target.parentElement.classList.add('active');
	   	}
	    nums.forEach((element)=>{
			alls += element.value*1;
		})
		checkboxs.forEach((element)=>{
			element.onclick = ()=>{
				if(element.checked){
					let i = element.getAttribute("data-index");
					let value = document.getElementsByName("num")[i].value;
					let price = document.getElementsByClassName("allPrice")[i].innerHTML.slice(1) * 1;
					counts += value * 1;
					allPrices += price * 1;
					count[0].value = allPrices;
		    		count[1].value = counts;
				}
				if(!element.checked){
					let i = element.getAttribute("data-index");
					let value = document.getElementsByName("num")[i].value;
					let price = document.getElementsByClassName("allPrice")[i].innerHTML.slice(1) * 1;
					counts -= value;
					allPrices -= price;
					count[0].value = allPrices;
		    		count[1].value = counts;
				}
			}
		})
		quanbu.innerHTML = alls;
	    document.onscroll = function(e){
	    	if(document.documentElement.scrollTop === 0){
	    		bottom.style.boxShadow="0 0 40px 0px #fff";
	    	}else{
	    		bottom.style.boxShadow="0 0 40px 0px black";	
	    	}
	    }
      function check(){
    	let input = document.getElementsByClassName('input');
    	let all = document.getElementsByClassName('all');
    	let a = document.getElementsByClassName('bc')[0];
    	let prices = [...document.getElementsByClassName("allPrice")];
    	let price = 0;
    	let num = 0;
    	prices.forEach((element)=>{
    		price += element.innerText.slice(1)*1;
    	})
    	nums.forEach((element)=>{
    		num += element.value*1;	
    	})
    	if(all[0].checked == true || all[1].checked == true){
    		if(input.length){
    		   for(let i=0;i<input.length;i++){
    		      input[i].checked = true;
    		   }
    		allPrices = price;
    		moenys = allPrices;
    		money.innerText = moenys;
    		counts = num;
    		count[0].value = allPrices;
    		count[1].value = counts;
    		}
            a.style.backgroundColor = '#64a1d6';
    	}else{
    		if(input.length){
    		   for(let i=0;i<input.length;i++)
    		     input[i].checked = false;
    	    }
    	    a.style.backgroundColor = '#9c9c9c';
    	    count[0].value = 0.00;
    		count[1].value = 0;
        }
    }
    </script>
</body>
</html>