<?php
include 'connect.php';

$id_user = $_GET['id'];

$var = "DELETE  FROM user WHERE id_user = '$id_user'";
$hasil = $conn -> query($var);

if($hasil === TRUE){
    header('Location: adminlist_user.php');
}else {
    echo "data gagal dihapus karena ".$conn -> error;
}
$conn -> close();

?>