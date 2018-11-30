<?php
include 'connect.php';
 $qty=isset($_GET['id']) ? $_GET['id'] : '2';
$sql="SELECT*FROM liebiao WHERE id='$qty'";

$res=$conn->query($sql);
 $data=$res->fetch_all(MYSQLI_ASSOC);
echo json_encode($data,JSON_UNESCAPED_UNICODE);

 $res->close();//关掉结果集
 $conn->close();//断开连接


?>