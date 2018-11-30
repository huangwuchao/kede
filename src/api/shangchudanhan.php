<?php
include 'connect.php';//连接数据库



$idu=$_GET['id'];//传过来的id
$arr="delete from shopping where id='$idu'";
$res=$conn->query($arr);
//var_dump($res);
  $conn->close();
  //var_dump($res);
/*
    根据id删除购物车单条数据
    GET
        jiekou/shangchudanhan.php

            idu : 要删除行的id
            
            
        结果
            
                删除该id所在表的整条记录
            
            用的时候需要把命令语句中的表改成你要删除的表
    */



?>