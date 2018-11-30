
$(document).ready(function(){
    
    var list=document.getElementsByClassName('man_left_ul')[0];
    var h1=list.getElementsByClassName('fenqin');
    var ul1=list.getElementsByClassName('soufen');
    var span= document.getElementsByClassName('top_tap');
    var divimg=document.getElementsByClassName('bottom_right_bottom');


    //console.log(divimg);

    //tap切换
     for(var i=0;i<span.length;i++){
        span[i].index=i;
        span[i].onclick=function(){
            for(var j=0;j<span.length;j++){
                span[j].className='top_tap';
                divimg[j].style.display='none';
            }
            this.className='top_span top_tap';
            divimg[this.index].style.display='block';
        }
     }
                    //左侧手风琴               
    for(var i=0;i<h1.length;i++){
        h1[i].index=i;
        h1[i].istrue=true;//3个开关             
        h1[i].onclick=function(){
            if(this.istrue){
                                //第一次点击：显示
                                //this.index
            ul1[this.index].style.display='block';
        }else{
            ul1[this.index].style.display='none';
        }                
         this.istrue=!this.istrue;
                        }
                    }
//回到顶部
$("#gotoTop").on("click",function () {
        $("html,body").animate({scrollTop : 0},800);
    });
//顶部菜单栏
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
//放大镜
//鼠标移入放大镜显示
$('#top_left_img').mouseenter(function(){
    $('#top_left_img_fd').css("display","block");
})
//鼠标移出放大镜隐藏
$('#top_left_img').mouseleave(function(){
   $('#top_left_img_fd').css("display","none"); 
});

//鼠标在div移动时放大镜的显示也跟着移动
$('#top_left_img').mousemove(function(e){

    var pagex=e.pageX;
    var pagey=e.pageY;
    var pictop=$('#top_left_img').offset().top;
    var picleft=$('#top_left_img').offset().left;
    var magnifyw=$('.fdjp').width();
    var magnifyh=$('.fdjp').height();
    var magnifytop= pagey - pictop - magnifyh / 2;
    var magnifleft= pagex - picleft -magnifyw / 2;
    var picw= $('#top_left_img').width() - magnifyw;
    var pich= $('#top_left_img').height() - magnifyh;
    magnifytop= magnifytop<0? 0 : magnifytop;
    magnifleft= magnifleft<0? 0 : magnifleft;
    magnifytop= magnifytop>pich? pich : magnifytop;
    magnifleft= magnifleft>picw? picw : magnifleft;
    $('.fdjp').css({top:magnifytop,left:magnifleft});
    var minl= $('#top_left_img_fd').width() - $('.det_img').width();
    var mint= $('#top_left_img_fd').height() - $('.det_img').height();
    var objimgl= -magnifleft * 2;
    var objimgt= -magnifytop * 2;
    objimgl= objimgl<minl ? minl : objimgl;
    objimgt= objimgt<mint ? mint : objimgt;
    $('.det_img').css({top:objimgt,left:objimgl});

})



$('.jia').click(function(){
        var val=$(this).prev().text();
        val++;
        // shuliang++;
        $(this).prev().text(val);
        // var shuliang=$('.jian').next().text();
        // window.shuliang=shuliang;
    })
 $('.jian').click(function(){
    
        var val=$(this).next().text();
        val--;
        // shuliang--;
        //  if(shuliang<'1'){
        //     shuliang=1
        // }
        if(val<'1'){
            val=1
        }
        $(this).next().text(val);
        // var shuliang=$('.jian').next().text();
        // window.shuliang=shuliang;
    })  


//取id渲染数据
var shuliang=$('.jian').next().text();
// console.log(shuliang);
var idt=Cookie.get('id');
//console.log(idt);

    var url='../api/detail_cha.php';
    var data=`id=${idt}&time=${new Date()}`;
    ajaxhwc('GET',url,data,function(str){
                
                 var arr=JSON.parse(str);
                 //console.log(arr);
                 var img=`<img src="${arr[0].url}" alt="" />
                <span class="fdjp"></span>`;
                var pinpai=`<span>${arr[0].mane}</span>
                            <p>${arr[0].jieshao}</p>`;
                var jiage=`1件<br><b>￥${arr[0].prile}/件</b>`;
                var jiage1=`2～3件<br><b>￥${arr[0].prile-10}/件</b>`;
                var jiage2=`4件及以上<br><b>￥${arr[0].prile-30}/件</b>`;
        $('#top_left_img').html(img);
        $('#top_left_img_fd img').attr('src',arr[0].url); 
        $('#top_right_top').html(pinpai);
        $('.d_t_m_p_cx2').html(jiage);
        $('.d_t_m_p_cx4').html(jiage1);
        $('.d_t_m_p_cx6').html(jiage2);
        var url=arr[0].url;
        //console.log(url);
        var mane1=arr[0].mane;
        var prile1=arr[0].prile;
        var dushu=document.getElementById('dushu');
        var dushu1=dushu.options[dushu.selectedIndex].innerText;

        
          
        //点击飞入购物车并传数据到购物车
        $('#buto').click(function(){
            var img=arr[0].url;
            var url='../api/detail_jia.php';

            var data=`id=${idt}&url=${img}&mane=${mane1}&prile=${prile1}&dushu=${dushu1}&shu=${shuliang}&time=${new Date()}`;
            ajaxhwc('GET',url,data,function(str){
                    console.log(str);
            })
           $('.fei').css('display','block');
            $('.fei img').attr('src',arr[0].url);
            var feijuli=($('#juli').offset().top)-($(document).scrollTop());
            console.log($('.fei img').attr);
            $('.fei').animate({'left':'600px'},function(){
                $('.fei').css('display','none');
                $('.fei').animate({'left':'101px'},1);
            });
            
            

        })


    })
var abut=document.getElementById('zhuanggw');
var name=Cookie.get('name');
abut.onclick=function(){
    if(name){
        location.href='shopping.html';
    }else{
        var arr=confirm('您需要先登陆');
        if(arr){
            location.href='login.html';
        }
    }

}
var juli11=document.getElementById('juli');
console.log(juli11);
juli11.onclick=function(){
    if(name){
        location.href='shopping.html';
    }else{
        var arr=confirm('您需要先登陆');
        if(arr){
            location.href='login.html';
        }
    }
}



    
    

});