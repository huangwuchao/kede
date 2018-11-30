<?php
include 'connect.php';
$qty1=isset($_GET['liebie']) ? $_GET['liebie'] : '';
$page=isset($_GET['page']) ? $_GET['page'] : '1';
    $qty=isset($_GET['qty']) ? $_GET['qty'] : '20';
    $index=($page-1)*$qty;

$sql="SELECT*FROM liebiao ORDER BY $qty1 desc LIMIT $index,$qty ";
     $res=$conn->query($sql);
     $data=$res->fetch_all(MYSQLI_ASSOC);
     $goodlist=array(
        
    'datalist'=>$data,//查询到的数据
           
 );
echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
 $res->close();//关掉结果集
 $conn->close();//断开连接