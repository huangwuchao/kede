<?php
include 'connect.php';
 $qty=isset($_GET['id']) ? $_GET['id'] : '2';
 $qty1=isset($_GET['url']) ? $_GET['url'] : '../images/liebiao1.jpg';
 $qty2=isset($_GET['mane']) ? $_GET['mane'] : '博士伦清朗一日水润高清日抛隐形眼镜30片装';
 $qty3=isset($_GET['prile']) ? $_GET['prile'] : '200';
 $qty4=isset($_GET['dushu']) ? $_GET['dushu'] : '2.00';
 $qty5=isset($_GET['shu']) ? $_GET['shu'] : '1';

$sql="insert into shopping(id,url,mane,prile,dushu,shuliang) values('$qty','$qty1','$qty2','$qty3','$qty4','$qty5')";
$res=$conn->query($sql);
 
echo $res;

 
 $conn->close();//断开连接








?>