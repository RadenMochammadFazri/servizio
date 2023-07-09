<?php
include 'connect.php';

$id_produk = $_GET['id'];

$var = "DELETE  FROM produk WHERE id_produk = '$id_produk'";
$hasil = $conn -> query($var);

if($hasil === TRUE){
    header('Location: admin_view.php');
}else {
    echo "data gagal dihapus karena ".$conn -> error;
}
$conn -> close();

?>