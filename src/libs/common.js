
/*
 	
 	封装一个返回min到max之间的一个随机数
 	
 */

function randomNum(min, max) {
	//返回min到max之间是随机数
	//最新小：Math.random()+min 0-1之间   0-0.99999
	//最大的：Math.random()*max+1
	return parseInt(Math.random() * (max - min + 1)) + min;
}



/* 
 	
//--------------------------------------------------

 	封装一个过滤敏感词的函数
 * */

function filterTex(str) {

	//敏感词语
	var sensitive = ['傻B','妈蛋','bitch','fuck','操','小学生','尼玛','垃圾','辣鸡', '反清复明'];
	//循环数组得到每个敏感词
	for(var i = 0; i < sensitive.length; i++) {
		//利用正则式来过滤敏感词
		var reg = new RegExp(sensitive[i], 'gi');
		//用替换方法让敏感词换成**
		str = str.replace(reg, '**');
	}

	return str;
}

//--------------------------------------------------
//    封装一个四位数带字母的随机验证码
	 function yaunzhengma(){
	 					//先把需要用到的验证码写进字符串
                        var arr = '123qwer456tyui789opajshdgflzkxmcnvb0';
                        var aee = '';
                        //循环四次后获得数字串的下标
                        for(var i=0;i<4;i++){ 
                            var are=parseInt(Math.random()*35);
                            console.log(are)
                             aee+=arr[are];
                           
                            
                        } 
                            return aee;
                             
                             
                    }
	
                  
                    
                    

//--------------------------------------------------
/*
 	randomColor(str):
 	说明：生成随机颜色
 	参数：如果传16进来，生成16进制颜色，如果传rgb进来，传rgb颜色
 
 * */

function randomColor(str) {
	//生成随机颜色
	if(str == 16) {
		//先编写16进制需要的字符串  
		var str = '0123456789abcdef';
		var color = '#';
		//进行循环，得到字符串中的随机6个字符
		for(var i = 0; i < 6; i++) {

			color += str.charAt(parseInt(Math.random() * str.length));
		}

		return color;

	} else if(str == 'rgb') {
		//rgb(255,255,0) 生成3个随机数，每个随机数应该在  0-255，因为随机数获取是0-1之间所以要*255+1
		var r = parseInt(Math.random() * 256);
		var g = parseInt(Math.random() * 256);
		var b = parseInt(Math.random() * 256);

		return 'rgb(' + r + ',' + g + ',' + b + ')';

	} else {
		alert('你怕是失了智哦');
	}
}
//--------------------------------------------------
//获取当前时间封装
		function shijian(){
            var d=new Date()
            var year=d.getFullYear();
            var arr="日一二三四五六";
            var day = d.getDay();
            day=arr[day];
            var month=d.getMonth()+1;
            var date = d.getDate();
            var hour = d.getHours();
            var minute= d.getMinutes();
            var second = d.getSeconds();
            month=month<10? 0+month:month;
            date=date<10? 0+date:date;
            hour=hour<10? 0+hour:hour;
            minute=minute<10? 0+minute:minute;
            second=second<10? 0+second:second;
             var arr=(year+"年"+month+"月"+date+"日, "+hour+":"+minute+":"+second+"星期"+day);
            return arr
         } 
//--------------------------------------------------{'year':year,//年
            //         'month':month,//月
            //         'date':date,//日
            //         'hour':hour,//时
            //         'minute':minute,//分
            //         'second':second,//秒
            //         'day':day//星期
            // };
////---------------------------

//封装时间函数，把毫秒转成xx天xx时xx分xx秒   return {}

function setTime(diffTime) {
    
    var sec = setDb(diffTime % 60); //秒
    var min = setDb(Math.floor(diffTime / 60) % 60); //分
    var hour = setDb(Math.floor(diffTime / 60 / 60) % 24); //小时
    var day = Math.floor(diffTime / 60 / 60 / 24);
    
    return {//想返回多个数的时候，做成json数据
        'sec':sec,
        'min':min,
        'hour':hour,
        'day':day
    };
}
//-----------------------------------------------------------
/*
    获取样式：可以获取行内和非行内样式
    参数一：obj 节点名
    参数二：name 属性名    
 
 * */

function getstyle(obj, name) {
    //获取样式
    if(obj.currentStyle) {
        //ie8-
        return obj.currentStyle[name];
    } else {
        //主流浏览器
        return getComputedStyle(obj, false)[name];
    }
}

/*
    运动框架封装：startMove()过渡    jq animate()
    最终版：多对象，多属性，链式运动框架(运动队列)
    参数一：对象名
    参数二：属性，目标值  键名：属性名，键值：目标值    {'width':200,'heigth':400}  实现：宽度和高度一起改变，宽度变成200，高度变成400
    参数三：回调函数(可选参数)
 */

function startMove(obj, json, fnend) {

     clearInterval(obj.timer);//防止定时器叠加
    obj.timer = setInterval(function() {

        var istrue = true;

        //1.获取属性名，获取键名：属性名->初始值
        for(var key in json) {
//          console.log(key); //width heigth opacity
            var cur = 0; //存初始值

            if(key == 'opacity') {//初始值
                cur = getstyle(obj, key) * 100; //透明度
            } else {
                cur = parseInt(getstyle(obj, key)); //width heigth borderwidth px为单位的

            }

            //2.根据初始值和目标值，进行判断确定speed方向，变形：缓冲运动
            //距离越大，速度越大,下面的公式具备方向
            var speed = (json[key] - cur) / 6;
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed); //不要小数部分，没有这句话或晃动

            if(cur != json[key]) { //width 200 heigth 400
                istrue = false; //如果没有达到目标值，开关false
            } else {
                istrue = true; //true true
            }

            //3、运动
            if(key == 'opacity') {
                obj.style.opacity = (cur + speed) / 100;
                obj.style.filter = `alpha(opacity:${cur+speed})`;
            } else {
                obj.style[key] = cur + speed + 'px';//针对普通属性 left  top height 
            }

        }
        
        //4.回调函数:准备一个开关,确保以上json所有的属性都已经达到目标值,才能调用这个回调函数
        if(istrue) { //如果为true,证明以上属性都达到目标值了
            clearInterval(obj.timer);
            if(fnend) {
                fnend();
            }
        }

    }, 30); //obj.timer 每个对象都有自己定时器
}
//字符串转成对象
//传的参数： id=001&name=iphone7 plugs&imgurl=img/ip7.jpg&price=5899&sale=5888&color=土豪金
//返回值：{id: "001", name: "iphone7 plugs", imgurl: "img/ip7.jpg", price: "5899", sale: "5888", …}

function strToObj(str) {
    //  var str = str.slice(1);
    var arr = str.split('&');
    var obj = {};
    for(var i = 0; i < arr.length; i++) {
        var arr2 = arr[i].split('=');
        obj[arr2[0]] = arr2[1];
    }

    return obj;
}

//-----------------------------

//对象转成字符串方法封装

//传的参数：{id: "001", name: "iphone7 plugs", imgurl: "img/ip7.jpg", price: "5899", sale: "5888", …}
//返回值： id=001&name=iphone7 plugs&imgurl=img/ip7.jpg&price=5899&sale=5888&color=土豪金

function objToStr(obj) {
    var html = '';
    for(var key in obj) {
        html += key + '=' + obj[key] + '&';
    }

    html = html.slice(0, -1);
    return html;
}
/*
 checkReg:函数可以进行表单验证
    .trim() :去掉前后空格
    .tel() :号码
 
 */

var checkReg = {
    trim: function(str) { //去掉前后空格
        var reg = /^\s+|\s+$/g;
        return str.replace(reg, '');
    },
    tel: function(str) { //号码
        var reg = /^1[3-9]\d{9}$/
        return reg.test(str);
    },
    email: function(str) { //邮箱正则
        var reg = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/; 
        return reg.test(str);
    },
    idcard: function(str) { //身份证
        var reg = /^(\d{17}|\d{14})[\dX]$/;
        return reg.test(str);
    },
    psweasy: function(str) { //6-18位首字母开头
        var reg = /^[a-zA-Z]\w{5,17}$/;
        return reg.test(str);
    },
    pwwagain: function(str1, str2) {
        return str1 === str2; //全等 恒等
    },
    urladr: function(str) {
        var reg = /[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/;
        return reg.test(str);
    },
    name:function(str){//账号字母开头,6-20位
        var reg=/^[a-zA-Z][\w\-]{5,19}$/;
        return reg.test(str);
    },
    chinese:function(str){//昵称
        var reg=/^[\u2E80-\u9FFF]{1,6}$/;
        return reg.test(str);
    },
    birthdate:function(str){//日期
        var reg=/^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;

        return reg.test(str);
    }
}

/*
    封装cookie函数:
    存: Cookie.set()
    取:  Cookie.get()
    删: Cookie.remove()
 */

var Cookie={
    
    set:function(name,value,prop){//设置cookie
        //存数据到cookie里面:必写的
        var str=name+'='+value;
        
        //json存后面一些可选参数
        //expires:设置失效时间
        if(prop.expires){
            str+=';expires='+prop.expires.toUTCString();//把时间转成字符串
        }
        
        //设置path路径
        
        if(prop.path){
            //如果设置了
            str+=';path='+prop.path;
        }
        
        //domain设置可访问cookie的域名
        if(prop.domain){
            str+=';domain='+prop.domain;
        }
        
        //写到cookie
        document.cookie=str;
        
    },
    get:function(key){
        var cookies=document.cookie;//name=tiantian; age=18; usn=yuanyuan; pws=456123
        var arr=cookies.split('; ');//['name=tiantian','age=18','usn=yuanyuan','pws=456123']
        for(var i=0;i<arr.length;i++){
            var arr2=arr[i].split('=');//['name','tiantian']
            if(key==arr2[0]){
                return arr2[1];
            }
        }
    },
    remove:function(key){
        
        //删的原理:设置过期时间
        var now=new Date();
        now.setDate(now.getDate()-1);
        this.set(key,'no',{expires:now});
    }
}
//--------------------------------------
//-------下拉菜单封装
function xiala(id,p,property,property1){
                        var box= document.getElementById(id);
                    var p= document.getElementById(p);
                    var span= p.getElementsByTagName('span')[0];
                    var div= box.getElementsByTagName('div')[0];
                    
                    
                    box.onmouseover=function(){
                            
                           startMove(div,property);
                            
                            span.className='img2'
                    }
                    box.onmouseout=function(){
                           startMove(div,property1);

                            span.className='img'
                    }
                    };
//------------------------------------
//
//---------选项卡
function xuanxiang(id,uli,clas){
                    var box = document.getElementById(id);
                var ul =document.getElementById(uli);
                var Oli =ul.getElementsByTagName('li');
                var Onon=box.getElementsByClassName(clas);
                for(var i=0;i<Oli.length;i++){
                    Oli[i].index=i;
                    Oli[i].onclick=function(){
                        for(var i=0;i<Oli.length;i++){
                           Oli[i].className="";
                            Onon[i].style.display="none";
                        }   
                        this.className="lm"
                        Onon[this.index].style.display="block";
                    }
                }
                };
////------------------------------------
///回到顶部
function huidin(id,zhi){
                            var box =document.getElementById(id);
                            var arr;
                            // //先给页面添加内容，让水平滚动条有可以滚动的空间
                            // for(var i=0;i<500;i++){
                            //     js.innerHTML+='不要被骄傲蒙蔽了双眼<br>';
                            // }
                            //封装一个滚动条发生变化触发的函数，用来实现内容滚动到指定页面高度显示要点击返回的块
                            window.onscroll=function(){
                                if(window.scrollY>=zhi){
                                    box.style.display="block";
                                }else if(window.scrollY<zhi){
                                    box.style.display="none";
                            }
                        }
                            //封装一个点击函数，用来实现返回顶部功能
                            box.onclick=function(){
                                //一进来一定要先清除定时器，不然点击div的时候，只要内容的距离还不到0点击div都会触发定时器
                                clearInterval(arr);
                                //开启定时器，实现内容每30毫秒就向上移动
                                arr=setInterval(function(){
                                    //获取到垂直滚动条的距离
                                    var abc=window.scrollY;
                                    //用获取到垂直滚动条的距离进行判断什么时候可以关闭定时器
                                    if(abc<=0){
                                        abc=0;
                                        clearInterval(arr);
                                    }
                                    //用获取到的垂直滚动条距离/10，得到的结果再向上取整，得到每一次返回顶部滚动条要走的距离。（除以10是因为想要得到由快到慢的返回效果）
                                    var are= Math.ceil(abc);
                                    //获取当前位置滚动的距离，因为是要向上滚动所以要取负数
                                    window.scrollBy(0, -are);
                                },30)
                            }
                    };
///--------------------侧栏广告
///----------
 function clgg(id,property,property1){
                    var box = document.getElementById(id);

                    box.onmouseenter=function(){
                        //有过渡
                        startMove(box,property);
                    }
                    
                    box.onmouseleave=function(){
                        //有过渡
                        startMove(box,property1);
                    }
                }


//-------------------------------
//ajax的创建和php的数据的传输和接收
//
/*
    ajax函数封装：要参数
        参数一：请求方式：get  post
        参数二：接口路径
        参数三：数据(可选)  name='tiantian'&psw=123456  传给后端的数据
        参数四：成功的回调函数(可选的)
 
*/

function ajaxhwc(mechod,url,data,success){
    
    //1.创建对象
    var xhr=new XMLHttpRequest();
    
    if(mechod=='GET' && data){
        //请求方式是get并且有数据
        url+='?'+data;  //var url=`api/checkname.php?username=${val}&time=${new Date()}`;
    }
    
    xhr.open(mechod,url,true);
    
    //2.发送请求
    if(mechod=='GET'){
        xhr.send();//如果是get方式，直接发送请求
    }else{
        //post方式
        xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
        xhr.send(data);//如果是post方式，数据放在send()里面传输
    }
    
    //3.后台做
    
    //4.接收数据
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
            if(xhr.status==200){
                //成功的：dom操作，数据渲染
                if(success){
                    //如果有回调，就用回调
                    success(xhr.responseText);//实参
                }
            }else{
                alert('出错了，状态码是：'+xhr.status);//404 找不到页面，408请求超时
            }
        }
    }
    
}
///-----------------------
///
///
/// 
function getid(id) {
    return document.getElementById(id);
}
///--------------------
///----------------
function animate(ele,opt,callback){
    time = opt.time || 50;

    // 如果当前存在正在执行的动画，先清除
    if(ele.timerList && ele.timerList.length){
        for(var name in ele.timerList){
            // if(name == 'length') continue;
            clearAnimate(name);
            typeof callback === 'function' && callback();
        }
    }

    // 开始动画
    // 为当前ele对象创建一个存放定时器的属性timerList
    ele.timerList = {};

    // 创建一个不可枚举的length属性
    // 不可通过for..in获取
    Object.defineProperty(ele.timerList,'length',{enumerable:false,writable:true,value:0});

    // 为每个属性创建一个定时器，实现多个动画同时执行
    for(var attr in opt){
        (function(attr){
            // 为每个属性设一个定时器
            ele.timerList[attr] = setInterval(function(){
                //当前样式
                var currentStyle = parseFloat(getStyle(ele,attr));
                var speed = (opt[attr] - currentStyle)/8;

                //opacity速度
                var ospped = speed>0 ? .1 : -.1;

                // 其他属性速度
                speed = speed>0 ? Math.ceil(speed) : Math.floor(speed);

                // 变化到目标属性值时清除定时器
                if(currentStyle == opt[attr]){
                    clearAnimate(attr);
                    if(ele.timerList.length == 0){
                        typeof callback === 'function' && callback();
                    }
                    return;
                }
                if(attr == "opacity"){
                    ele.style.opacity = (currentStyle+ospped);
                    ele.style.filter = "alpha(opacity="+(currentStyle+ospped)*100+")";
                }else{
                    ele.style[attr] = currentStyle + speed + 'px';
                }
            },time);
            ele.timerList.length++;
        })(attr);
    }

    // 清除定时器
    function clearAnimate(attr){
        clearInterval(ele.timerList[attr]);
        delete ele.timerList[attr];
        ele.timerList.length--;
    }
}