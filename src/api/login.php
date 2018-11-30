<?php
include 'connect.php';
$name=isset($_POST['name']) ? $_POST['name'] : '';
$psw=isset($_POST['psw']) ? $_POST['psw'] : '';

    
//  echo $name;//一定要做检测才往下面做

    //写查询语句
    $sql="select * from userinfo where mane='$name' and password='$psw';";
    
    //执行语句
    $res=$conn->query($sql);//结果集
    
  
    
    if($res->num_rows>0){//num_rows存记录的条数，所有超过0就意味着存在
        //数据库存储该用户名
        echo 0;
    }else{
        echo 1;
    }
    
    //关闭结果集和数据库
    
    $res->close();
    $conn->close();



?>