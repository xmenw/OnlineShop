<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"  %>
<%@page import="xyz.com.entity.Shop"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>我的小店-男装</title>
<link rel="stylesheet" href="./res/css/nanzhuang.css">
<link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
	<div class="nz">
        <div class="nz-top">
            <div class="nz-top-left">
            	<a href="index.jsp">
                	<img src="./res/image/logo.jpg">
                </a>
            </div>
            <div class="nz-top-right">
                <form action="#" method="get">
                    <div class="input">
                        <input type="text" class="input" autocomplete="off" name="search" placeholder="请输入要搜索的男装">
                    </div>
                    <div class="button">
                        <button type="submit">搜索</button>
                    </div>
                </form>
                <ul class="result"></ul>
            </div>
        </div>
        <div class="navg">
            <ul class="nav">
                <li>
                	<a href="index.html"> 
                		<fmt:message key="index"></fmt:message> 
                	</a>
                </li>
                <li><a href="#">
                		<fmt:message key="design"></fmt:message>
               	</a></li>
                <li><a href="#">
                	<fmt:message key="style"></fmt:message>
                </a></li>
                <li><a href="#">
                	<fmt:message key="star"></fmt:message>
                </a></li>
                <li><a href="#">
                	<fmt:message key="sale"></fmt:message>
                </a></li>
                <li><a href="#">
                	<fmt:message key="tidal"></fmt:message>
                </a></li>
                <li><a href="#">
					<fmt:message key="fashion"></fmt:message>                	
                </a></li>
            </ul>
        </div>
        <div class="bar"></div>
        <div class="nav-center">
            <div class="center-top">
                <ul>
                    <li style="background-color: #fff;"><a href="#">综合排序</a></li>
                    <li><a href="#">人气</a></li>
                    <li><a href="#">销量</a></li>
                    <li><a href="#">信用</a></li>
                    <li><a href="queryShopsByPrice?order=1">价格升序</a></li>
                    <li><a href="queryShopsByPrice?order=2">价格降序</a></li>
                </ul>
                <span class="num">共:<em>${requestScope.num}</em>件商品</span>
            </div>
            <div class="center-bot">
                <div class="bot">
                    <ul>
                        <li><a href="#">包邮</a></li>
                        <li class="yf"><a href="#">赠送退险货运费</a></li>
                        <li><a href="#">货到付款</a></li>
                        <li><a href="#">公益宝贝</a></li>
                        <li><a href="#">二手</a></li>
                        <li><a href="#">小店</a></li>
                        <li><a href="#">正品保障</a></li>
                        <li class="more"><a href="#">更多</a></li>
                        <div class="hid">
                            <ul>
                                <li class="tuih"><a href="#">7+天内退货</li>
	    				<li><a href="#">海外商品</a></li>
                            </ul>
                        </div>
                    </ul>
                </div>
            </div>
            <div class="show">
                <ul>
				<c:forEach items="${requestScope.shops}" var="shop">
                    <li>
                        <a href="#">
                            <div class="item">
                                <div class="item-top">
                                    <a href="detail/${shop.id}" target="_blank">
    									<img class="img" alt="商品图片" data-src=${shop.pic}>
    								</a>
                                </div>
                                <div class="item-bot">
                                    <div class="bot1">
                                        <span class="span1">￥${shop.price}</span>
                                        <span class="span2">8635人付款</span>
                                    </div>
                                    <div class="bot2">
                                        <a href="#">
				    						<em>包邮</em>
				    						 ${shop.desc}
				    						 <span class="id">${shop.id}</span>
				    					</a>
                                    </div>
                                    <div class="bot3">
                                        <span><a href="#">QQ6358455</a></span>
                                        <span class="w"><a href="#">福建</a></span>
                                        <span><a href="#">泉州</a></span>
                                    </div>
                                    <div class="bot4">
                                        <span class="s1"></span>
                                        <span class="s2"></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    </c:forEach>
 				</ul>
            </div>
        </div>    
</body>
<script>
	const imgs = document.querySelectorAll('.img'),
		  text = document.querySelectorAll('.bot2'),
		  result = document.querySelectorAll('.result')[0],
		  input = document.querySelectorAll('.input')[0],
		  id = document.querySelectorAll('.id');
	let descs = [];
	
	checkImgs();
	window.onscroll = throttle(checkImgs, 600);
 	Array.from(text).forEach((el, index) => {
		  descs.push({"text": el.innerText.slice(3), "id": +id[index].innerText});
	})
	
	let frage = document.createDocumentFragment();
    input.oninput = function(e){
    	let value = e.target.value.trim() || e.srcElement.value.trim();
    	value = value.replace(/</gi, "&lt;");
    	value = value.replace(/>/gi, "&gt;");
    	result.innerHTML = frage.innerHTML = '';
        descs.forEach(function(val, index){
            let reg = new RegExp(value, "gi");
            if(value && reg.test(val.text)){
            	let li = document.createElement("li");
            	li.setAttribute("data-id", val.id);
            	val.text = val.text.replace(reg, "<mark>" + e.target.value + "</mark>");
                li.innerHTML = val.text;
       		    frage.appendChild(li);
            }
        })
        result.appendChild(frage);
    }
    
    document.getElementsByTagName("body")[0].onclick = e =>{
    	result.innerHTML = '';
    }
    
    result.onclick = e =>{
    	let id = e.target.getAttribute("data-id") || e.srcElement.getAttribute("data-id");
    	location.href = "http://localhost:8888/shop/detail/" + (id || 1); 
    	result.innerHTML = '';
    }
    
 	function checkImgs() {
	  	Array.from(imgs).forEach(el => {
			if(!el.src && isInSight(el)){
				loadImg(el);	
			}    
		})
	}
	
	function loadImg(el) {
	    const source = el.getAttribute("data-src");
	    el.src = source;
	    el.removeAttribute("data-src");
	}
		
	function isInSight(el) {
	  const bound = el.getBoundingClientRect();
	  const clientHeight = window.innerHeight;
	  return bound.top <= clientHeight + 100;
	}
	
	function throttle(cb, delay){
        var now,
            last = 0;
        return function(e){
            now = Date.now();
            if(now - last >= delay){
                cb.apply(this, [e]);
                last = now;
            }
        }
    }
</script>
</html>