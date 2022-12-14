<?php

$host = "localhost";
$user = "root";
$pass = "";
$db='new_application_2';

try {
  $pdo2 = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
  $pdo2->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

 /* echo "Connected successfully"; */
}
catch(PDOException $e){
  echo "Connection failed: " . $e->getMessage();
}

function getFromMenu($pdo2,$code){
    $sql = "SELECT * FROM menu WHERE code=:code";
    try {
        $stmt = $pdo2->prepare($sql);
        $stmt->execute([
            'code'=>$code,
        ]);
        $data = $stmt->fetch(PDO::FETCH_ASSOC);
        return $data;
    } catch (Exception $e) {
        echo $e;
    }
}
?>