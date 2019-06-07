<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<title>我的小店</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit" />
	<link rel="stylesheet" type="text/css" href="./res/css/index.css">
	<link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
<!-- 顶部导航栏 -->
  <div class="cover">
  	<ul class="cover-left">
  		<li class="land">中国大陆</li>
  		<li class="login">
  			<a href="login">亲，请登录</a>
  		</li>
  		<li>
  			<a href="##">手机App</a>
  		</li>
  	</ul>
  	<ul class="cover-right">
  		<li>
  			<a href="##">网站导航</a>
  		</li>
  		 <li>
  		 	<div class="hid">
  			   <a href="##">联系客服</a>
  			</div>
  			<div class="my">
			   <ul>
				<li>
					<a href="##">消费者客服
					</a>
				</li>
				<li>
					<a href="##">卖家客服</a>
				</li>
			   </ul>
  		 </div> 
  		 </li>
  		<li>
  			<a href="##">卖家中心</a>
  		</li>
  		<li>
  			<a href="##">商品分类</a>
  		</li>
  		<li>|</li>
  		<li>
  			<a href="##">收藏夹</a>
  		</li>
  		<li>
  			<a href="queryPage/1" id="cars">购物车</a>
  		</li>
  		<li>
  			<a href="myshop.html">我的小店</a>
  		</li>
  	</ul>
  </div>	
  <!-- 搜索区 -->
  <div class="head">
   <div class="wrape">
   	 <div class="logo">
        <a href=".">
        	<img src="./res/image/logo.jpg">
        </a>	
   	 </div>
   	 <!-- 搜索框 -->
   	 <div class="search">
   	 	<div class="search-top">
   	 		<ul class="top">
   	 			<li class="top-left"><a href="##">宝贝</a></li>
   	 			<li class="top-right"><a href="##">店铺</a></li>
   	 		</ul>
   	 	</div>
   	 	<div class="search-input">
   	 		 <form action="##" method="get">
   	 		 	<div class="input">
   	 		     <input type="text" name="search" id="search" autocomplete="off" placeholder="请输入要搜索的宝贝">
   	 		    </div>
   	 		 <div class="button">
   	 		   <button type="submit">搜索</button>
   	 		 </div>
   	 		</form>
   	 	</div>
   	 	<div class="search-bot">
   	 		<ul class="b">
   	 		    <li><a href="##">背心</a></li>
   	 		    <li><a href="##">新款连衣裙</a></li>
   	 		    <li class="t"><a href="##">潮流T恤</a></li>
   	 			<li><a href="##">时尚女鞋</a></li>
   	 			<li><a href="##">短裤</a></li>
   	 			<li><a href="##">半身裙</a></li>
   	 			<li><a href="##">男士外套</a></li>
   	 			<li><a href="##">墙纸</a></li>
   	 			<li><a href="##">行车记录仪</a></li>
   	 			<li><a href="##">新款男鞋</a></li>
   	 			<li><a href="##">耳机</a></li>
   	 			<li class="more"><a href="##">更多 ></a></li>
   	 		</ul>
   	 	</div>
   	 	<div class="showresult">
          <ul class="results" id="results">
          </ul>
      </div>
   	  </div>
   </div>
  </div>
  <!-- 中间导航栏 -->
  <div class="nav-center">
  	<div class="center">
  	  <ul class="nav">
  		<li class="mall">主题市场</li>
  		<li><a href="##">抢购</a></li>
  		<li><a href="##">电器城</a></li>
  		<li><a href="##">司法拍卖</a></li>
  		<li class="fgf">|</li>
  		<li><a href="##">中国质造</a></li>
  		<li><a href="##">兴农扶贫</a></li>
  		<li><a href="##">智能生活</a></li>
  		<li><a href="##">我的小屋</a></li>
  	  </ul>
  	</div>
  </div>
  <!-- 中间展示区域 -->
  <div class="show">
  	<!-- 左部展示区 -->
  	<div class="show-left">
  		<ul class="item">
  			<li>
  				<a href="##" target="_blank">女装</a> /
  				<a href="queryAllShops" target="_blank">男装</a> /
  				<a href="##">内衣</a>
  				<div class="none">
  					<ul>
  						<h5>女装</h5>
  						<li><a href="##">短袖</li>
  						<li><a href="##">衬衣</a></li>
  						<li><a href="##">棉服</li>
  						<li><a href="##">阔腿裤</a></li>
  						<h5>男装</h5>
  						<li><a href="##">外套</li>
  						<li><a href="##">衬衣</a></li>
  						<li><a href="##">夹克</li>
  						<li><a href="##">短裤</a></li>
  						<h5>内衣</h5>
  						<li><a href="##">棉袜</li>
  						<li><a href="##">长筒袜</a></li>
  						<li><a href="##">秋裤</li>
  						<li><a href="##">内裤</a></li>
  					</ul>
  				</div>
  			</li>
  			<li>
  				<a href="##">鞋靴</a> /
  				<a href="##">箱包</a> /
  				<a href="##">配件</a>
  			</li>
  			<li>
  				<a href="##">童装玩具</a> /
  				<a href="##">孕产</a> /
  				<a href="##">用品</a>
  			</li>
  			<li>
  				<a href="##">家店</a> /
  				<a href="##">数码</a> /
  				<a href="##">手机</a>
  			</li>
  			<li>
  				<a href="##">美妆</a> /
  				<a href="##">洗护</a> /
  				<a href="##">保健品</a>
  			</li>
  			<li>
  				<a href="##">珠宝</a> /
  				<a href="##">眼睛</a> /
  				<a href="##">手表</a>
  			</li>
  			<li>
  			    <a href="##">运动</a> /
  				<a href="##">户外</a> /
  				<a href="##">乐器</a>
  			</li>
  			<li>
  				<a href="##">游戏</a> /
  				<a href="##">动漫</a> /
  				<a href="##">影视</a>
  			</li>
  			<li>
  				<a href="##">美食</a> /
  				<a href="##">生鲜</a> /
  				<a href="##">零食</a>
  			</li>
  			<li>
  				<a href="##">鲜花</a> /
  				<a href="##">宠物</a> /
  				<a href="##">农资</a>
  			</li>
  			<li>
  				<a href="##">房产</a> /
  				<a href="##">装修</a> /
  				<a href="##">建材</a>
  			</li>
  			<li>
  				<a href="##">家具</a> /
  				<a href="##">家饰</a> /
  				<a href="##">家纺</a>
  			</li>
  			<li>
  				<a href="##">汽车</a> /
  				<a href="##">二手车</a> /
  				<a href="##">用品</a>
  			</li>
  			<li>
  				<a href="##">办公</a> /
  				<a href="##">DIY</a> /
  				<a href="##">五金电子</a>
  			</li>
  			<li>
  				<a href="##">百货</a> /
  				<a href="##">餐厨</a> /
  				<a href="##">家庭保健</a>
  			</li>
  			<li>
  				<a href="##">学习</a> /
  				<a href="##">卡券</a> /
  				<a href="##">本地服务</a>
  			</li>
  		</ul>
  	</div>
  	<!-- 中部展示区 -->
  	<div class="show-center">
	  	<!-- 中上 -->
  		<div class="center-top">
  		  <div class="lbt">
  			<a href="##"><img src="./res/image/show1.jpg"></a>
  			<a href="##"><img src="./res/image/show3.jpg"></a>
  			<a href="##"><img src="./res/image/show4.jpg"></a>
  			<a href="##"><img src="./res/image/show5.jpg"></a>
  			<a href="##"><img src="./res/image/show6.jpg"></a>
  		  </div>
  		  <div class="button">
  		    <strong class="on">1</strong>
  		    <strong>2</strong>
  		    <strong>3</strong>
  		    <strong>4</strong>
  		    <strong>5</strong>
  		  </div>
  		  <a href="##" class="right">></a>
  		  <a href="##" class="left"><</a>	
  		</div>
  		<!-- 中下 -->
  		<div class="center-bot">
  			<!-- 左 -->
  			<div class="left">
  				<a href="##"><img src="./res/image/show2.jpg" id="img"></a>
  			</div>
  			<!-- 中 -->
  			<div class="center">
  				<div class="center-top">
  				  <a href="##"><img src="./res/image/show3.jpg"></a>
  				</div>
  				<div class="center-bot">
  			      <a href="##"><img src="./res/image/show4.jpg"></a>		 
  				</div>
  			</div>
  			<!-- 右 -->
  			<div class="right">
  				<div class="right-top">
  				  <a href="##"><img src="./res/image/show5.jpg"></a>
  				</div>
  				<div class="right-bot">
  			      <a href="##"><img src="./res/image/show6.jpg"></a>		 
  				</div>
  			</div>
  		</div>
  	</div>
  	<!-- 右边展示区 -->
    <div class="show-right">
    	<!-- 登录 -->
    	<div class="login">
    		<div class="top">
    			<div class="tx">
    				<a href="##"><img src="./res/image/tx.jpg">
    			</a>
    			<div class="code">
	    			<img src="./res/image/ewm.jpg">
	    			<span>我的小屋</span>
    			</div>
    			</div>
    			<span id="hello">Hi! <em id="username">你好</em></span>
    			<p class="p">
    				<a href="##">
    				  <span class="p-left">领金币抵钱</span>
    				</a>
    				<a href="##">
    				  <span class="p-right">会员俱乐部</span>
    				</a>
    			</p>
    		</div>
    		<div class="bot">
    			<div class="bot-div">
			     <a href="login" id="login">登录</a>
			     <a href="regist">注册</a>
			     <a href="##">开店</a>
    			</div>
    		</div>
    	</div>
    	<!-- 举报 -->
    	<div class="jubao">
    		<a href="##">
    			<span id="jb">网上有害信息举报专区</span>
    		</a>
    	</div>
    	<div class="notice">
    		<ul class="not">
    			<li class="lli" style="border-bottom:2px solid #6ac1d4;">公告</li>
    			<li class="lli">规则</li>
    			<li class="lli">论坛</li>
    			<li class="lli">安全</li>
    			<li class="lli">公益</li>
    		</ul>
    		<div class="nr" style="display: inline-block;">
    		 <ul class="nei-rong">
    			<li>
    			 <a href="##">2018小店造物节9月定址西湖</a>
    			</li>
    			<li>
    			 <a href="##">小店618激活传统商圈
    			 </a>
    		    </li>
    		 </ul>
    		</div>
    		<div class="nr">
    		 <ul class="nei-rong">
    			<li>
    			 <a href="##">《我的小店抽检标准（商用厨房电器）》</a>
    			</li>
    			<li>
    			 <a href="##">《我的小店禁售商品管理规范》
    			 </a>
    		    </li>
    		 </ul>
    		</div>
    		<div class="nr">
    		 <ul class="nei-rong">
    			<li>
    			 <a href="##">关于新增订单产询服务</a>
    			</li>
    			<li>
    			 <a href="##">云标签工具，30秒打标
    			 </a>
    		    </li>
    		 </ul>
    		</div>
    		<div class="nr">
    		 <ul class="nei-rong">
    			<li>
    			 <a href="##">小二分享大促干货</a>
    			</li>
    			<li>
    			 <a href="##">中差评功能升级
    			 </a>
    		    </li>
    		 </ul>
    		</div>
    		<div class="nr">
    		 <ul class="nei-rong">
    			<li>
    				公益
    			 <a href="##">公益“护苗”行动招募</a>
    			</li>
    			<li>
    			 <a href="##">你愿意加入我们吗？
    			 </a>
    		    </li>
    		 </ul>
    		</div>
    	</div>
    	<div class="xiaoge">
    		<ul class="xg">
    			<li><a href="##">
    				<span class="span1"></span>
    				<p>充话费</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span2"></span>
    				<p>旅行</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span3"></span>
    				<p>车险</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span4"></span>
    				<p>游戏</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span5"></span>
    				<p>彩票</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span6"></span>
    				<p>电影</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span7"></span>
    				<p>酒店</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span8"></span>
    				<p>理财</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span9"></span>
    				<p>找服务</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span10"></span>
    				<p>演出</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span11"></span>
    				<p>水电煤</p>
    			</a></li>
    			<li><a href="##">
    				<span class="span12"></span>
    				<p>火车票</p>
    			</a></li>
    		</ul>
    	</div>
    	<div class="bot">
    	</div>
    </div> 
  </div>
  <!-- 固定滚动条 -->
  <div class="bar">
  	<ul>
  		<li><a href="#">返回顶部</a></li>
  		<li><a href="##">爱逛好货</a></li>
  		<li><a href="##">好店直播</a></li>
  		<li><a href="##">品质特色</a></li>
  		<li><a href="##">实惠热卖</a></li>
  		<li><a href="##">猜你喜欢</a></li>
  		<li><a href="##" class="fback">反馈</a></li>
  		<li><a href="##">暴恐举报</a></li>
  	</ul>
  </div>
  <!-- 底部 -->
  <div class="bottom">
	  <!-- end -->
	  <div class="end">
	  	<span>END</span>
	  </div>
	  <div class="bot">
	  	<ul class="title">
	  		<li class="li">消费者保障
               <ul>
               	 <li><a href="##">保障范围</a></li>
               	 <li><a href="##">退货退款流程</a></li>
               	 <li><a href="##">服务中心</a></li>
               	 <li><a href="##">更多特色服务</a></li>
               </ul>
	  		</li>
	  		<li class="li">新手上路
                <ul>
               	 <li><a href="##">新手专区</a></li>
               	 <li><a href="##">消费警示</a></li>
               	 <li><a href="##">交易安全</a></li>
               	 <li><a href="##">24小时在线帮助</a></li>
               	 <li><a href="##">免费开店</a></li>
                </ul> 
	  		</li>
	  		<li class="li">付款方式
	  		  <ul>
               	 <li><a href="##">快捷支付</a></li>
               	 <li><a href="##">信用卡</a></li>
               	 <li><a href="##">余额宝</a></li>
               	 <li><a href="##">蚂蚁花呗</a></li>
               	 <li><a href="##">货到付款</a></li>
              </ul>
            </li>
	  		<li class="li">本店特色
                <ul>
               	 <li><a href="##">手机小店</a></li>
               	 <li><a href="##">旺旺/旺信</a></li>
               	 <li><a href="##">大众点评</a></li>
                </ul>
	  		</li>
	  	</ul>
	  </div>
  </div>
  <hr>
  <!-- 关于 -->
  <div class="about">
  	<p class="about-p-top">
  		<span><a href="##">关于本店</a></span>
  		<span><a href="##">合作伙伴</a></span>
  		<span><a href="##">营销中心</a></span>
  		<span><a href="##">廉政举报</a></span>
  		<span><a href="##">联系客服</a></span>
  		<span><a href="##">开放平台</a></span>
  		<span><a href="##">诚征英才</a></span>
  		<span><a href="##">联系我们</a></span>
  		<span><a href="##">网站地图</a></span>
  		<span><a href="##">法律声明及隐私权政策</a></span>
  		<span><a href="##">知识产权</a></span>
        <span><b>|</b></span>
  		<span>
            <em>© 2003-现在 Taobao.com 版权所有</em>
  	    </span>
  	</p>
  	<p class="about-p-center">
  		<span><a href="##">网络文化经营许可证：浙网文[2016]0268-027号</a></span>
  		<span><b>|</b></span>
  		<span><a href="##">增值电信业务经营许可证：浙B2-20080224</a></span>
        <span><b>|</b></span>
  		<span>
            <em>互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com</em>
  	    </span>
  	</p>
	<p class="about-p-bot">
		<span class="pic"></span>
	    <span><a href="##">浙公网安备 33010002000078号</a></span>
	    <span><b>|</b></span>
	    <span>
         <em>（浙）网械平台备字[2018]第00004号</em>
        </span>
        <span><b>|</b></span>
	    <span><a href="##">出版物网络交易平台服务经营备案证：新出发浙备字第002号</a></span>
        <span><b>|</b></span>
    </p>
	<div class="about-bot">
	  	<span><a href="##" class="pic1"></a></span>
     	<span><a href="##" class="pic2"></a></span>
	  	<span><a href="##" class="pic3"></a></span>
	  	<span><a href="##" class="pic4"></a></span>
	  	<span><a href="##" class="pic5"></a></span>
	  	<span><a href="##" class="pic6"></a></span>
	  	<span><a href="##" class="pic7"></a></span>
	  	<span><a href="##" class="pic8"></a></span>
	  	<span><a href="##" class="pic9"></a></span>
	  	<span><a href="##" class="pic10"></a></span>
	  	<span><a href="##" class="pic11"></a></span>
    </div>
  </div>
  <script type="text/javascript">
  		 if(sessionStorage.getItem("user") !== ""){
  			username.innerHTML = sessionStorage.getItem("user");
  		 }else{
  			username.innerHTML = "你好";
  		 }
  	     cars.onclick = (e)=>{
  	    	if(sessionStorage.getItem("user") !== 'aaa'){
  	    		e.preventDefault();
  	    		let flag = window.confirm("请登录");
	  	    	if(flag == true){
	  	    		window.location = "http://localhost:8888/shop/login";
	  	    	}
  	     	}
  	     }
  	   	 let show = document.getElementsByClassName('showresult')[0];
		 function inputb(json){
			if(json.result.length >= 10){
				json.result.length = 10;
			}
			show.style.display = 'block';
     		for (var i = 0; i < json.result.length; i++) {
     			let li = document.createElement('li');
     			li.innerHTML = `<a href="https://s.taobao.com/search?q=${json.result[i]}">${json.result[i][0]}</a>`;
     			results.appendChild(li);
     		}
	     }
    	search.oninput = function(){
    		if(search.value == ''){
    			show.style.display = 'none';
    			show.style.padding = '0';
    		}
    		let script = document.createElement('script');
    		results.innerHTML = '';
    		script.src = `https://suggest.taobao.com/sug?q=${search.value}&&callback=inputb` ;
    		document.body.appendChild(script);
    		script.remove();
		};
		document.onclick = () => {
			show.style.display = 'none';
		}
	    // 举报专栏
	    var rgbs = 0; 
	    setInterval(function (){
           document.getElementById("jb").style.backgroundColor = "rgb(255,"+rgbs+",0)";
           rgbs += 50;
           if(rgbs >= 255){
           	rgbs = 0;
           }
	    },1000);
	    // 轮播图
	    var yd = document.getElementsByClassName('lbt')[0];
	    var left = document.getElementsByClassName('left')[0];
	    var right = document.getElementsByClassName('right')[0];
	    var strong = document.getElementsByTagName("strong");
	    var index = 0;
	    function showDot(){
	        for(var i=0;i<strong.length;i++){
	    	 	strong[i].className = "";
	    	}
	    	strong[index].className = "on";
	    }
	    function l(){
	    	var newLeft;
	    	 index --;
	    	 if(index < 0){
	    	 	index = 4;
	    	 }
	    	showDot();
            if((yd.style.left == "") || (yd.style.left == "0px")){
               newLeft = -2765;
            }else{
                newLeft = parseInt(yd.style.left)+690;
                if(newLeft > -5){
                	newLeft = -2765;
                }
            }
            yd.style.left = newLeft + "px";
	    }
	    left.onclick = function(){
	    	   l();
	    }
	    function r(){
            var newLeft;
	    	index ++;
	    	if(index == 5){
	    	 	index = 0;
	    	}
	    	showDot();
            if(yd.style.left == ""){
                 newLeft = -695;
            }else{
               newLeft = parseInt(yd.style.left)-690;
               if(newLeft < -2765){
                	newLeft = -5;
                }
            }
            yd.style.left = newLeft + "px";
	    }
	    right.onclick = function(){
	    	   r();
	    }
	    var t = null;
	    function autoMove(){
	       t = setInterval(function(){ 
                 // l();
              r();
	         }, 2000)
	    }
	    autoMove();
	    var ctp = document.getElementsByClassName('center-top')[0];
	    ctp.onmouseenter = function(){
	    	clearInterval(t);
	    }
	    ctp.onmouseleave = function(){
	    	autoMove();
	    }
	    // 选项卡
	    var d = document.getElementsByClassName('nr');
	    var lli = document.getElementsByClassName('lli');
	    for(var i=0; i<lli.length; i++){
            (function(n){
               lli[n].onclick = function(){
            	for(var j=0;j<lli.length;j++){
            	   lli[j].style.borderBottom = 'none';
            	   d[j].style.display = "none";	
            	}
            	this.style.borderBottom = '2px solid #6ac1d4';
            	d[n].style.display = "inline-block";
               }
            }(i))
	    }
	    //拖拽
	    var bar = document.getElementsByClassName('bar')[0];
	    bar.style.top = '90px'; 
	    bar.onmousedown = function(e){
	    	var leny = e.pageY - parseInt(bar.style.top);
	        document.onmousemove = function(e){
	        	bar.style.top = e.pageY - leny + 'px';
	        }
       }
        bar.onmouseup = function(){
	        // bar.onmousedown = null;
	        document.onmousemove = null;
	    }
	</script>
</body>
</html>























