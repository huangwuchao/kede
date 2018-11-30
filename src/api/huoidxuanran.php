<?php
include 'connect.php';//连接数据库




$arr="select * from shopping ";//根据传过来的id查询到记录

$res=$conn->query($arr);//执行查询命令

$data=$res->fetch_all(MYSQLI_ASSOC); //获取到要查询的结果集


    
echo json_encode($data,JSON_UNESCAPED_UNICODE);
    
    $res->close();//关掉结果集
  
    $conn->close();//断开连接
/*
    根据id渲染购物车数据
    GET
        jiekou/huoidxuanran.php

            idu : 要渲染数据的id
            
            
        返回
            {
                该id所在表的整条记录
            }
            用的时候需要把命令语句中的表改成你要查询的表
    */

?>