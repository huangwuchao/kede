"use strict";$(document).ready(function(){$(".myself").hover(function(){$(".tool-bar-list").stop().slideDown()},function(){$(".tool-bar-list").stop().slideUp()}),$(".helpcenter").hover(function(){$(".tool-bar-list2").stop().slideDown()},function(){$(".tool-bar-list2").stop().slideUp()});var l=document.getElementById("tet"),t=document.getElementById("tet3"),r=document.getElementById("wu"),c=!1,i=!1;l.onblur=function(){var e=l.value.trim(),n=checkReg.trim(e);if(n&&checkReg.tel(n)){var t="username="+e+"&time="+new Date;ajaxhwc("GET","../api/sign.php",t,function(e){"0"==e?(r.innerHTML="手机号已存在",r.style.color="red"):(r.innerHTML="手机号可用",r.style.color="green",c=!0)})}else r.innerHTML="手机号格式不对",r.style.color="red"};var o=document.getElementById("yuanzheng");o.onclick=function(){o.value=yaunzhengma(),o.style.background=randomColor(16)},t.onblur=function(){var e=t.value,n=o.value;console.log(n),console.log(e),e===n?(r.innerHTML="验证码正确",r.style.color="green",i=!0):(r.innerHTML="验证码不对",r.style.color="red")};var n=document.getElementById("tet1"),a=document.getElementById("zhuche"),u=document.getElementById("tet2");n.onblur=function(){var o=n.value.trim(),e=checkReg.trim(o);e&&checkReg.psweasy(e)?(r.innerHTML="密码可用",r.style.color="green",a.onclick=function(){var e=u.value.trim(),n=l.value.trim();if(c&&e==o&&i){var t="name="+n+"&psw="+o+"&time="+new Date;console.log(t),ajaxhwc("POST","../api/zhuche.php",t,function(e){console.log(e),"yes"==e&&(location.href="../html/login.html")})}else alert("注册失败")}):(r.innerHTML="密码格式不对",r.style.color="red")}});