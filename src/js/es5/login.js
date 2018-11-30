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
    var but = document.getElementById('btn');
    var tet = document.getElementById('tet');
    var pwd = document.getElementById('pwd');
    var check1 = document.getElementById('check1');
    var check = document.getElementById('check');
    var nav1 = document.getElementsByClassName('nav')[0];
    console.log(nav1);
    var p = nav1.getElementsByTagName("p");
    var box1 = document.getElementById('box1');
    var box2 = document.getElementById('box2');
    p[0].onclick = function () {
        box1.style.display = 'none';
        box2.style.display = "block";
        p[0].style.color = "#89b929";
        p[1].style.color = "#ccc";
    };
    p[1].onclick = function () {
        box1.style.display = 'block';
        box2.style.display = "none";
        p[1].style.color = "#89b929";
        p[0].style.color = "#ccc";
    };
    console.log(but);
    but.onclick = function () {
        var val1 = tet.value.trim();
        var val = pwd.value.trim();

        var url = '../api/login.php';
        var data = "name=" + val1 + "&psw=" + val;
        ajaxhwc('POST', url, data, function (str) {
            //console.log(str);

            if (str == '0') {
                //已存在

                var shijian = new Date();
                shijian.setDate(shijian.setDate() + 7);
                Cookie.set('name', val1, { 'expires': shijian, path: '/' });
                Cookie.set('name1', val1, { 'expires': shijian });
                if (check1.checked) {

                    Cookie.set('mima', val, { 'expires': shijian });
                    Cookie.set('zhidon', true, { 'expires': shijian });
                }
                // if(check.checked){

                // 
                //          }
                location.href = '../souyue.html';
            } else {
                alert('用户名或者密码有错');
            }
        });
    };
    var texd = Cookie.get('name1');
    var mima = Cookie.get('mima');
    var zhidon = Cookie.get('zhidon');
    if (texd && mima && zhidon) {
        tet.value = texd;
        pwd.value = mima;
        //location.href='../souyue.html';
    }
});