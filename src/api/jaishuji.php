<?php

//根据传过来的id和数量，更新数据库的数据；
include 'connect.php';

$idu=$_GET['id'] ? $_GET['id'] : '2';
$qut=$_GET['val'] ? $_GET['val'] : '2';
$arr="update shopping set shuliang='$qut' where id='$idu'";
$res=$conn->query($arr);//执行查询命令
 var_dump($res);       
   



?>
