<%@page import="java.util.List"%>
<%@page import="xyz.com.entity.Comment"%>
<%@page import="xyz.com.entity.Shop"%>
<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>物品详情页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="../res/css/choose-item.css">
	<link rel="shortcut icon" href="../res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
<div class="ch-top">
		<div class="nz-top">
			<div class="nz-top-left">
				<a href="../index.jsp"><img src="../res/image/logo.jpg"></a>
			</div>
			<div class="nz-top-right">
				<form action="#" method="get">
					<div class="input">
					  <input type="text" name=" search" placeholder="请输入要搜索的女装">
					</div>
					<div class="button">
					  <button type="submit">
					  	<fmt:message key="search"></fmt:message>
					  </button>
					</div>
				</form>
			 </div>
	    </div>
	</div>
    <div class="cente">
    	 <div class="pic">
    		<img src=.${requestScope.shop.pic} alt="商品图片" id="imgs">
    	    <div class="fdj"></div>
    	 </div>
    	 <div class="bpic" style="background-image: url(.${requestScope.shop.pic})"></div>
    	<div class="xinxi">
    		<div class="name">
    			<span id="desc">${requestScope.shop.desc}</span>
    		</div>
    		<div class="list">
				<ul class="jg">
    				<li><span><fmt:message key="price"></fmt:message></span><span class="price">¥162.00</span></li>
    				<li><span><fmt:message key="now"></fmt:message></span><span id="price">￥${requestScope.shop.price}</span></li>
    				<li><span><fmt:message key="preferential"></fmt:message></span><span>5元店铺优惠券，满6元可用</span><a href="#">领取</a></li>
				</ul>
				<ul class="list-ul">
    				<li><span><fmt:message key="distribution"></fmt:message></span><span>浙江宁波 至 河北廊坊三河市 快递 免运费 30天内发货</span></li>
    				<li id="size"><span><fmt:message key="size"></fmt:message></span>
    					<span class="size">${requestScope.shop.size}</span>
    				</li>
    				<li id="color"><span><fmt:message key="color"></fmt:message></span>
    					<em>${requestScope.shop.color}</em>
    				</li>
			    </ul>
			    <div class="cnt">
	    			<span><fmt:message key="count"></fmt:message></span>
	    			<c:if test="${requestScope.shop.num > 0}">
		    			<span class="dis">-</span>
		    			<input type="text" value="1" class="count" id="num" />
	    				<span class="add">+</span>
	    			</c:if>
	    			<c:if test="${requestScope.shop.num <= 0}">
	    				<strong class="empty">无货</strong>
	    			</c:if>
	    			<span id="kucun"> <fmt:message key="surplus"></fmt:message> ${requestScope.shop.num}件</span>
    		    </div>
    		    <div class="button">
    		    	<form action="../insertShopCar" method="POST" id="shopForm">
    		    		<input type="text" name="id" id="id" value="${requestScope.shop.id}" hidden="hidden" />
    		    		<input type="text" name="username" id="id" value="${requestScope.shop.username}" hidden="hidden" />
    		    		<input type="text" name="desc" id="dc" hidden="hidden" value="${requestScope.shop.desc}" />
    		    		<input type="text" name="pic" id="im" hidden="hidden" />
    		    		<input type="text" name="price" id="pr" hidden="hidden" />
    		    		<input type="text" name="size" id="si" hidden="hidden" />
    		    		<input type="text" name="color" id="col" hidden="hidden" />
    		    		<input type="text" name="num" id="nm" hidden="hidden" />
    		    		<c:if test="${requestScope.shop.num <= 0}">
	    		    		<button type="submit" class="shopcar" disabled>
	    		    			<fmt:message key="addcar"></fmt:message>
	    		    		</button>
    		    		</c:if>
    		    		<c:if test="${requestScope.shop.num > 0}">
	    		    		<button type="submit" class="shopcar">
	    		    			<fmt:message key="addcar"></fmt:message>
	    		    		</button>
    		    		</c:if>
    		    	</form>
    		    </div>
    		</div>
    	</div>
    </div>
    <div class="introduce">
    	  <ul class="ul">
    	  		<li>商品评论</li>
    	  		<li>宝贝详情</li>
    	  		<li>专享服务</li>
    	  </ul>
    	  <div class="wrap">
	    	  <div class="comment" contenteditable="true">
	    	  		请输入您对本商品的评论。
	    	  </div>
	    	  <div class="textNum"><span class="fontNum">0</span>/100</div>
    	  </div>	
    	  <form action="../insertComment" method="POST" class="form">
    	  		<input type= "text" hidden="hidden" name="id" class="comId"/>
    	  		<input type= "text" hidden="hidden" name="comment" class="comInput"/>
        		<input type="submit" class="right submit" value="<fmt:message key="send"></fmt:message>"/>
    	  </form>
          <ul class="intro">
            <c:forEach items="${requestScope.comment}" var="c">
	        	<li class="commentText">
	        		<div class="commentLeft">
				       <img src="../res/image/tx.jpg" alt="用户头像"><br/>
				       <span class="username">aaa</span>
				   </div>  
				   <div class="commentRight">
				       <div class="comText">${c.comment}</div>
				       <div class="date"></div>
				   </div>
	        	</li>
        	</c:forEach>
          </ul>
        </div>
    <div class="tip">
    	<span>添加成功！</span>
    </div>
    <script>
    	let descs = desc.innerText,
    		img = imgs.src.replace('http://localhost:8888/shop','.'),
    		prices = price.innerText.slice(1),
    		nums = num.value;
    	dc.value = descs,
    	im.value = img;
    	pr.value = prices;
    	nm.value = 1;
    	var shop = document.getElementsByClassName('shopcar')[0];
    	var tip = document.getElementsByClassName('tip')[0];
    	var rightCommit = document.getElementsByClassName('right')[0];
    	let comment = document.getElementsByClassName('comment')[0];

    	if(!sessionStorage.getItem("user")){
    		rightCommit.setAttribute("disabled", "disabled");
    		comment.innerText="您要先登录才能评论哦！"
    	}
    	
    	shop.onclick = function(e){
    		e.preventDefault();
    		if(sessionStorage.getItem("user") !== 'aaa' || sessionStorage.getItem("user") == null ){
  	    		let flag = window.confirm("请登录");
	  	    	if(flag == true){
	  	    		window.location = "http://localhost:8888/shop/login";
	  	    	}
  	     	}else {
             shop.style.backgroundColor = '#c0c0c0';
             tip.style.display = 'inline-block';
             if(tip.style.display == 'inline-block'){
    		   setTimeout(function(){
                  tip.style.display = 'none';
    		  },1000);
	        	shopForm.submit();
  	     	}
  	     }
    	}
    	
    	var pic = document.getElementsByClassName('pic')[0]; 
    	var fdj = document.getElementsByClassName('fdj')[0];
    	var bpic = document.getElementsByClassName('bpic')[0];
    	var x = 170,
    	    y = 85,
    	    disX = 200/2;
    	    disY = 144/2;
    	pic.onmousemove = function(e){
    		bpic.style.display = 'block';
            fdj.style.left = e.clientX - x - disX+ 'px';
            fdj.style.top = e.clientY - y - disY + 'px';
            if(parseInt(fdj.style.left) <= 0){
            	fdj.style.left = '0px';
            }else if(parseInt(fdj.style.left) >=300){
                fdj.style.left = '300px';
            }
            if(parseInt(fdj.style.top) <= 0){
            	 fdj.style.top = '0px';
            }else if(parseInt(fdj.style.top) >= 216){
                 fdj.style.top = '216px';
            }
            bpic.style.backgroundPositionX =- parseInt(fdj.style.left)*2.5+'px';
            bpic.style.backgroundPositionY =- parseInt(fdj.style.top)*2.5+'px';
    	}
        pic.onmouseleave = function(){
        	fdj.style.left = '-200px';
            bpic.style.display = 'none';	
        }
        var size = document.getElementsByClassName('size');
        var em = document.getElementsByTagName('em');
        for(var j=0;j<size.length;j++){ 
        	size[0].classList.add('checked');
            si.value = size[0].innerText;
        }
        for(var j=0;j<em.length;j++){ 
        	em[0].classList.add('checked');
            col.value = em[0].innerText;
        }
        var dis = document.getElementsByClassName('dis')[0];
        var add = document.getElementsByClassName('add')[0];
        var count = document.getElementsByClassName('count')[0];
        dis.onclick = function(){
        	if(count.value <= 0){
        		return;
        	}
            count.value --;
            nm.value = count.value;
        }
        add.onclick = function(){
        	if(count.value >= kucun.innerText.match(/\d+/)[0]){
        		return;
        	}
            count.value ++;
            nm.value = count.value;
        }
        let fontNum = document.getElementsByClassName('fontNum')[0];
        let comInput = document.getElementsByClassName('comInput')[0];
        let submit = document.getElementsByClassName('submit')[0];
        let comId = document.getElementsByClassName('comId')[0];
        let date = document.getElementsByClassName('date')[0];
        let commentForm = document.getElementsByClassName('form')[0];
        comment.onfocus = function(){
        	if(comment.innerText == "请输入您对本商品的评论。"){
        		comment.innerText = "";	
        	}
        }
        comment.onblur = function(){
        	if(comment.innerText == ""){
        		comment.innerText = "请输入您对本商品的评论。";	
        	}
        }
        comment.oninput = function(e){
        	let len = comment.innerText.trim().length;
        	if(len > 100){
        		comment.innerText = comment.innerText.slice(0, 100);
        		return;
        	}
        	fontNum.innerText = len;
        }
        
        submit.onclick = function(e){
        	e.preventDefault();
        	comment.innerText = comment.innerText.trim().replace(/</gi, "&lt;");
        	comment.innerText = comment.innerText.trim().replace(/>/gi, "&gt;");
        	comInput.value = comment.innerText;
        	comId.value = location.href.split("/")[location.href.split("/").length - 1];
        	comment.innerText = "";
        	fontNum.innerText = 0;
        	commentForm.submit();
        }
    </script>
</body>
</html>
