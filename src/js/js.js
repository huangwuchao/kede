
$(document).ready(function () {



    // 顶部通栏菜单
$(".myself").hover(function () {
   $(".tool-bar-list").stop().slideDown();
},function () {
    $(".tool-bar-list").stop().slideUp();
});

$(".helpcenter").hover(function () {
    $(".tool-bar-list2").stop().slideDown();
},function () {
    $(".tool-bar-list2").stop().slideUp();
});
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
        now.setDate(now.getDate()-100);
        this.set(key,'',{
            expires:now,
            path:'/'
        });
    }
}
var denlu=document.getElementsByClassName('tool-bar-content-mid')[0];
var denlu1=document.getElementsByClassName('tool-bar-content-right')[0];
console.log(denlu1);
var name=Cookie.get('name');
if(name){
    var are=`您好:用户${name}！&nbsp;&nbsp;<a id="tuichu" ref="javascript:;">[退出]</a>`;
    denlu.innerHTML=are;
var tuichu= document.getElementById('tuichu');
denlu1.style.marginLeft="239px";
tuichu.onclick=function(){
    denlu1.style.marginLeft="164px";
    Cookie.remove('name');

    var are=` 您好，欢迎登陆可得眼镜网！&nbsp;&nbsp;<a href="html/login.html" style="text-decoration: none;">登陆</a>&nbsp;&nbsp;<a href="html/sign.html" style="text-decoration: none;">[免费注册]</a>`;
    denlu.innerHTML=are;
}

}

// $('.tool-bar-content-mid').on('lick','#tuichu',function(){
//      Cookie.remove('name');
//     var are=` 您好，欢迎登陆可得眼镜网！&nbsp;&nbsp;<a href="html/login.html" style="text-decoration: none;">登陆</a>&nbsp;&nbsp;<a href="html/sign.html" style="text-decoration: none;">[免费注册]</a>`;
//     denlu.innerHTML=are;
// })





    var num = $(".wide-banner>img").length;
     console.log(num);
    var bgColor = ["#FEDCDD","#BD3865","#550170","#FEDE33","#EE7E1C","#DFE3E4","#1E2326","#2A3D44","#095FC6"];
    createNum();
    $(".wide-banner>img").eq(0).css({"display":"block"});
    $(".banner-num>li").eq(0).addClass("on");

    //热门区域的选项卡
    $(".hot-classify-right-checkbox>li").eq(0).addClass("on");
    $(".hp-mbody-checkbox>li").eq(0).addClass("on");
    $(".hp-mbody-content").eq(1).hide();
    // 楼层轮播
    $(".wide-f-left-num>li").eq(0).addClass("on");
    // 底部门店选项卡
    $(".index-shop>ul>li").eq(0).addClass("on");
    $(".shopinfobox-mid").eq(0).addClass("on");
    // 门店区块内部的小选项卡
    $(".mendiangaikuang").addClass("on");
    $(".shopinfo-items").eq(0).addClass("on");
    //初始化结束

    var floorImgNum = 0;
    var floorImgNumT = setInterval(function () {
        floorImgNum++;
        floorImgChange();
    },1000);

    $(".wide-f-left-num>li").mouseenter(function () {
     var index = $(this).index();
        floorImgNum=index;
        $(".wide-f-left-changeimg").stop().animate({left:-(floorImgNum*210)});
        $(this).addClass("on").siblings("li").removeClass("on");
        floorImgChange();
    });

    //清除定时器
    $(".wide-f-left-changeimgbox").hover(function () {
        clearInterval(floorImgNumT);
    },function () {
            floorImgNumT = setInterval(function () {
            floorImgNum++;
            floorImgChange();
        },1000);
    });

    // 轮播函数
    function floorImgChange() {
        if(floorImgNum==3){
            $(".wide-f-left-changeimg").css({left:"0"});
            floorImgNum=1;
        }
        $(".wide-f-left-changeimg").animate({left:-(floorImgNum*210)});
        if(floorImgNum==2){
            $(".wide-f-left-num>li").eq(0).addClass("on").siblings("li").removeClass("on");
        }else {
            $(".wide-f-left-num>li").eq(floorImgNum).addClass("on").siblings("li").removeClass("on");
        }
    }

    //轮播效果
    var bannerNum = 0;
    var t = setInterval(bannerMoveNext,1500);
    $(".wide-banner").hover(function () {
        clearInterval(t);
    },function () {
        t = setInterval(bannerMoveNext,1500);
    });
    $(".wide-banner-next").on("click",function () {
        bannerMoveNext();
    });
    $(".wide-banner-prev").on("click",function () {
        bannerMovePrev();
    });
    $(".banner-num>li").mouseenter(function () {
        var index = $(this).index();
      
        bannerNum=index;
        $(".wide-banner-bg").css({backgroundColor:bgColor[bannerNum]});
        $(this).addClass("on").siblings().removeClass("on");
        $(".wide-banner>img").eq(index).stop().fadeIn().siblings("img").stop().fadeOut();
    });

    // 导航二级菜单
$(".category-info>li").mouseover(function () {
   var $index = $(this).index();
   $(".child-list").eq($index).css({display:"block"});
}).mouseleave(function () {
    var $index = $(this).index();
    $(".child-list").eq($index).css({"display":"none"});
});

    //选项卡
    //  热门分类
    $(".hot-classify-right-checkbox>li").mouseover(function () {

        checkCard($(this),$(".hot-check-item"),"div");
    });

    //今日秒杀
    $(".hp-mbody-checkbox>li").mouseover(function () {
        checkCard($(this),$(".hp-mbody-content"));
    });


    //门店区块
    $(".index-shop>ul>li").mouseover(function () {
    $(this).addClass("on").siblings("li").removeClass("on");
    var checkNum = $(this).index();
    console.log(checkNum);
    $(".shopinfobox-mid").eq(checkNum).addClass("on").siblings(".shopinfobox-mid").removeClass("on");
    $(".shopinfobox-mid").eq(checkNum).find(".shopinfo-items").eq(0).addClass("on").siblings(".shopinfo-items").removeClass("on");
    });
    //门店内部小选项卡
    $(".guilin .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".guilin .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".xintiandi .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".xintiandi .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".riyueguang .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".riyueguang .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".longzhimeng .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".longzhimeng .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".balichuntian .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".balichuntian .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".zhengda .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".balichuntian .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".baoshan .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".balichuntian .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });
    $(".changfeng .mapinfo").mouseover(function () {
        $(this).addClass("on").siblings().removeClass("on");
        var index = $(this).index();
        $(".balichuntian .shopinfo-items").eq(index).addClass("on").siblings().removeClass("on");
    });


    //选项卡函数
    function checkCard(objTabs,objDiv) {
        objTabs.addClass("on").siblings().removeClass("on");
        var index = objTabs.index();
        objDiv.eq(index).show().siblings("div").hide();
    }
    

function bannerMovePrev() {
    bannerNum--;
    if(bannerNum==-1){
        bannerNum=num-1;
    }
    $(".wide-banner-bg").css({backgroundColor:bgColor[bannerNum]});
    $(".wide-banner>img").eq(bannerNum).stop().fadeIn().siblings("img").stop().fadeOut();
    $(".banner-num>li").eq(bannerNum).addClass("on").siblings().removeClass("on");
}

function bannerMoveNext() {
    bannerNum++;
    if(bannerNum==num){
        bannerNum=0;
    }
    $(".wide-banner-bg").css({backgroundColor:bgColor[bannerNum]});
    $(".wide-banner>img").eq(bannerNum).stop().fadeIn().siblings("img").stop().fadeOut();
    $(".banner-num>li").eq(bannerNum).addClass("on").siblings().removeClass("on");
}

    function createNum() {
        var $ul = $(".banner-num");
        for(var i = 0;i<num;i++){
            var $li = $("<li></li>");
            $li.appendTo($ul);
        }
        var $ulWidth = $ul.width();
        var count = -($ulWidth/2);
        $ul.css({marginLeft:count});
    }

var f1 = $(".wide-f-main[data-slide='1']").offset().top;
    var fs = $(".pf-left>ul").children().length;
    var fss = new Array();
    for(var i=0;i<fs;i++){
        j=i+1;
        fss[i] = $('.wide-f-main[data-slide="' + j + '"]').offset().top;
    }

    $(window).scroll(function () {
      var currentTop = $(window).scrollTop();
      if(currentTop>f1-50){
          $(".pf-left").show();
          changefl(getFloor(currentTop));
      }else {
          $(".pf-left").hide();
      }
    });

    function getFloor(fh){
        if(fs==0||fh<=f1){
            return 1;
        }
        if(fh>=fss[fs-1]){
            return fs;
        }
        for (var k=0; k<fs;k++) {
            if(fh>fss[k]&&fh<fss[k+1]){
                return k+1;
            }
        }
    }

    function changefl(fno){
        $('.pf-left a').removeClass('on');
        $('.pf-left a[data-slide="'+fno+'"]').addClass('on');
    }
});

function gotoFloor(that) {
    $(".pf-left li a[class='on']").attr('class', '');
    $(that).attr("class", "on");
    dataslide = $(that).attr('data-slide');
    var pos = $('.wide-f-main[data-slide="' + dataslide + '"]').offset().top;
    $("html,body").animate({
        scrollTop : pos
    }, 800);
}

//回到顶部
$("#gotoTop").on("click",function () {
        $("html,body").animate({scrollTop : 0},800);
    });
    


