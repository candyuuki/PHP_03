<?php
// require_once 'functions.php';

// $pdo = connectDB();
try {
  //ID MAMP ='root'
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=cafe;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage()); // データベース接続できない時 DBConnectError
}
$stmt = $pdo->prepare("SELECT * FROM cafe_table WHERE id = :id LIMIT 1");
$status = $stmt->execute();

// $sql = 'SELECT * FROM cafe_table WHERE id = :id LIMIT 1';
// $stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', (int)$_GET['id'], PDO::PARAM_INT);
$stmt->execute();
$image = $stmt->fetch();

// header("Location: select.php");

header('reputation:');
echo $img['img'];

unset($pdo);
exit();
?>