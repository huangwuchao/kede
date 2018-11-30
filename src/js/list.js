

$(document).ready(function(){
   
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
var ul=document.getElementById('xuanrang');
var rows=0;
var rows1=0;
var ok=true;
var ok1=true;
var page=document.getElementById('page');
var prev=document.getElementById('prev');
var next=document.getElementById('next');
 function xuangran(arr){
            var res=arr.datalist.map(function(item){
                        return `<li data-id="${item.id}">
                        <a class="chuang" >
                            <img src="${item.url}" alt="" />
                        </a>
                        <p class="liebiao_jia">
                            <span>
                                <ladel>
                                    ￥
                                </ladel>
                                ${item.prile}  
                            </span>
                            <span>
                                <i></i>
                                <b>最高降${item.prile}</b>
                            </span>
                        </p>
                        <p class="jieshao">
                            ${item.mane}
                        </p>
                        <p class="jieshao1">
                            ${item.jieshao}
                        </p>
                        <p class="pinlun">
                            <b></b>
                            <span>有<aldel>${item.renqi}</aldel>条评论</span>
                        </p>
                    </li>`;
                    }).join('');
                    
                    ul.innerHTML=res;
 }
function paita(){
    for(var i=0;i<page.children.length;i++){
        page.children[i].className='';
    }
    page.children[now-1].className='active';
}
function chushu(){
      var url='../api/list.php';
        var data=`page=1&qty=20&time=${new Date()}`;
        ajaxhwc('GET',url,data,function(str){
             var arr=JSON.parse(str);
            console.log(arr);
                xuangran(arr)         
                        //数据渲染：数据
                        
                        //根据数据总长度，创建页码
                        var num=Math.ceil(arr.total/arr.qty);
                        rows=num;//总页数
                        
                        for(var i=0;i<num;i++){
                            page.innerHTML+=`<span>${i+1}</span>`;
                        }
                        
                        page.children[0].className='active';
                        
                        //判断是否需要显示上一页，下一页
                       
        })
}
function paixu(ok,are){
     if(ok){
        
        var url='../api/listpaixu.php';
        var data=`page=${rows1}&qty=20&liebie=${are}&time=${new Date()}`;
        ajaxhwc('GET',url,data,function(str){
             console.log(str);
            var arr=JSON.parse(str);
                xuangran(arr)         
        })
    }else{ 
        var url='../api/listpaixu2.php';
        var data=`page=${rows1}&qty=20&desc=desc&liebie=${are}&time=${new Date()}`;
        ajaxhwc('GET',url,data,function(str){
             console.log(str);
            var arr=JSON.parse(str);
            xuangran(arr)
        })
    }
    
}
 chushu()     
            //点击页码，页面跳转到页码页
      var now=1;
                    
                page.onclick=function(ev){
                    var ev = ev || window.event;
                    //点哪个是哪个
                    if(ev.target.tagName.toLowerCase() == 'span'){
                        //ev.target  等同  this
                        now=ev.target.innerText;//获取页码
//                      console.log(num);
                        //设置参数
                        var url='../api/list.php';
                        var data=`page=${now}&qty=20&time=${new Date()}`;
                        ajaxhwc('GET',url,data,function(str){
                                var arr=JSON.parse(str);
                                xuangran(arr);//渲染数据
                                
                                //排他
                               paita()
                        })                        
                    }
                    
                }          
              //点击上一页，页面跳转
              prev.onclick=function(){
                    now--;
                    if(now<=1){
                        now=1;//最小第一页
                    }
                     var url='../api/list.php';
                    var data=`page=${now}&qty=20&time=${new Date()}`;
                     ajaxhwc('GET',url,data,function(str){
                                var arr=JSON.parse(str);
                                
                                xuangran(arr);//渲染数据
                                
                                //排他
                               paita()
                     
                        })

                   
                }  
            //点击下一页，页面跳转
            next.onclick=function(){
                    now++;
                    if(now>=rows){
                        now=rows;//最大就是最后一页
                    }
                     var url='../api/list.php';
                    var data=`page=${now}&qty=20&time=${new Date()}`;
                    
                    ajaxhwc('GET',url,data,function(str){
                                var arr=JSON.parse(str);
                                
                                xuangran(arr);//渲染数据
                                
                                //排他
                               paita()
                     
                        }) 
                }
//点击价格排序



var jiage= document.getElementById('jg');

jiage.onclick=function(){
    
     paixu(ok,'prile')
    ok=!ok;
}

//点击销量排序


var xl=document.getElementById('xl');
xl.onclick=function(){
  
    paixu(ok1,'renqi');
   ok1=!ok1 

}

var list=document.getElementsByClassName('man_left_ul')[0];

var h1=list.getElementsByClassName('fenqin');
var ul1=list.getElementsByClassName('soufen');
           
                //需求  点击h1,让对应ul显示出来
                
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

//传id到详情页
$('#xuanrang').on('click','.chuang',function(){
    var idt=$(this).parent().attr('data-id');
    Cookie.set('id',idt,'');
    location.href='detail.html';

})





});