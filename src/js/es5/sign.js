"use strict";

$(document).ready(function () {
    $(".myself").hover(function () {
        $(".tool-bar-list").stop().slideDown();
    }, function () {
        $(".tool-bar-list").stop().slideUp();
    });

    $(".helpcenter").hover(function () {
        $(".tool-bar-list2").stop().slideDown();
    }, function () {
        $(".tool-bar-list2").stop().slideUp();
    });

    var tet = document.getElementById('tet');
    var tet3 = document.getElementById('tet3');
    var wu = document.getElementById('wu');
    var isok = false;
    var isok1 = false;

    tet.onblur = function () {
        var val = tet.value.trim();
        var str1 = checkReg.trim(val);
        if (str1 && checkReg.tel(str1)) {
            //var xhr=new XMLHttpRequest();
            var url = '../api/sign.php';
            var data = "username=" + val + "&time=" + new Date();
            ajaxhwc('GET', url, data, function (str) {

                if (str == '0') {
                    //已存在
                    wu.innerHTML = '手机号已存在';
                    wu.style.color = 'red';
                } else {
                    //不存在
                    wu.innerHTML = '手机号可用';
                    wu.style.color = 'green';
                    isok = true;
                }
            });
        } else {
            wu.innerHTML = '手机号格式不对';
            wu.style.color = 'red';
        }
    };
    var yuanzheng = document.getElementById('yuanzheng');
    yuanzheng.onclick = function () {
        yuanzheng.value = yaunzhengma();
        yuanzheng.style.background = randomColor(16);
    };

    tet3.onblur = function () {
        var _tet = tet3.value;
        var _yz = yuanzheng.value;
        console.log(_yz);
        console.log(_tet);
        if (_tet === _yz) {
            wu.innerHTML = '验证码正确';
            wu.style.color = 'green';
            isok1 = true;
        } else {
            wu.innerHTML = '验证码不对';
            wu.style.color = 'red';
        }
    };

    var psw = document.getElementById('tet1');
    var btn = document.getElementById('zhuche');
    var paw2 = document.getElementById('tet2');
    psw.onblur = function () {
        var valPsw = psw.value.trim();
        var str1 = checkReg.trim(valPsw);
        if (str1 && checkReg.psweasy(str1)) {
            wu.innerHTML = '密码可用';
            wu.style.color = 'green';
            btn.onclick = function () {
                var val = paw2.value.trim();
                var valName = tet.value.trim();

                //注册功能
                if (isok && val == valPsw && isok1) {
                    var url = '../api/zhuche.php';
                    var data = "name=" + valName + "&psw=" + valPsw + "&time=" + new Date();
                    console.log(data);
                    ajaxhwc('POST', url, data, function (str) {
                        console.log(str);
                        if (str == 'yes') {
                            //成功注册跳转到登陆页面
                            location.href = '../html/login.html';
                        }
                    });
                } else {
                    alert('注册失败');
                }
            };
        } else {
            wu.innerHTML = '密码格式不对';
            wu.style.color = 'red';
        }
    };
});