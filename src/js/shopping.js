
$(document).ready(function(){

 function xr(arr){

        var arc=arr.map(function(trim){
          
            return `<li data-id="${trim.id}">
                    <div class="sop1">
                        <img src="${trim.url}" alt="" />
                        <a href="javascript">${trim.mane}</a>
                    </div>
                    <div class="sop2">
                        <span>
                            光度:${trim.dushu}
                        </span>
                    </div>
                    <div class="sop3">
                        <div class="jian">-</div>
                        <input type="text" value="${trim.shuliang}" class="shuliang" />
                        <div class="jia">+</div>
                    </div>
                    <div class="sop4">
                        ￥${trim.prile}
                    </div>
                    <div class="sop5">
                       ￥${(trim.prile)*(trim.shuliang)}
                    </div>
                    <div class="sop6">
                        <p id="soucheng">
                            加入收藏夹
                        </p>
                        <p id="shangchu">
                            删除
                        </p>
                    </div>
                </li>`
        }).join('');
        $('#dalao').append(arc);
   }



var url='../api/huoidxuanran.php';
var data=`time=${new Date()}`;
    ajaxhwc('GET',url,'',function(str){
             var arr=JSON.parse(str);
             console.log(arr)
              xr(arr);
              updateNum();
       });






    //点击加号数量++，并把加后的数据传到数据库
    // var arr = [];
 $('#dalao').on('click','.jia',function(){
     var idu=$(this).parent().parent().attr('data-id');
     console.log(idu);
    var val=$(this).prev().val();
    val++;
     var url='../api/jaishuji.php';
     var data=`id=${idu}&val=${val}&time=${new Date()}`;
    ajaxhwc('GET',url,data,function(str){
       
    });
    $(this).prev().val(val);
     subTotal($(this));
     updateNum();
     // console.log($('.shuliang').eq(1).val() * 1);
 });
 //点击减号数量--，并把减后的数据传到数据库
$('#dalao').on('click','.jian',function(){
    var idu=$(this).parent().parent().attr('data-id');
    var val=$(this).next().val();
    val--;
    if(val<'1'){
        val=1
    }
     var url='../api/jaishuji.php';
     var data=`id=${idu}&val=${val}&time=${new Date()}`;
     ajaxhwc('GET',url,data,function(str){
       
     });
    $(this).next().val(val);
   subTotal($(this));
   updateNum();

})
//小计
 function subTotal(now){//小计
        var num=now.parent().find('input').val();//数量
        var price=now.parent().next().text();
        price=$.trim(price);//工具方法：去除前后空格
        price=price.substring(1);
//      console.log(num,price);
        var all=(num*price).toFixed(2);//保留两个小数，小计：数量*单价
        
        now.parent().next().next().html('￥&nbsp;'+all);   
    }

//点击删除，清空结构和数据库的数据
$('#dalao').on('click','#shangchu',function(){
    var arr=confirm('确定要删除商品吗？');
    if(arr){
        var idu=$(this).parent().parent().attr('data-id');
            $(this).parent().parent().remove();
             console.log(idu);
            var url='../api/shangchudanhan.php';
            var data=`id=${idu}&time=${new Date()}`;
            ajaxhwc('GET',url,data,function(str){

            })
    }
    
})

function updateNum(){
     var arr=$('.sop5').size();
        var zhonjia=0;
        var su=0;
        
        for(var i = 0; i<arr; i++) {
            console.log(i);
            su+= $('.shuliang').eq(i).val() * 1;
           var price = $('.sop5').eq(i).text(); //￥ 199.98
           console.log(price);
            price = $.trim(price); //去掉前后空格
            price = (price.substring(1) * 1); //199.98
                     //console.log(price);
            zhonjia += price;
            // console.log(zhonjia);
            // console.log(su);
        }

        $('#settlementTotalMoney').text(zhonjia);
        $('#zhonjia').text(zhonjia);
        $('#settlementQuantity').text(su);
}

    var ul=document.getElementsByClassName('recommend_title')[0];
    var li1=ul.getElementsByTagName('li');
     var ul1=document.getElementsByClassName('recommend_title1')[0];
     var li2=ul1.getElementsByTagName('li');
for(var i=0;i<li1.length;i++){
        li1[i].index=i;
        li1[i].onclick=function(){
            for(var j=0;j<li1.length;j++){
                li1[j].className='';
                li2[j].style.display='none';
            }
            this.className='no';
            li2[this.index].style.display='block';
        }
     }




});