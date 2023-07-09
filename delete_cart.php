<?php
include 'connect.php';

$id_produk = $_GET['id'];

$var = "DELETE  FROM cart WHERE id_produk='$id_produk'";
$hasil = $conn -> query($var);

if($hasil === TRUE){
    header('Location: index.php');
}else {
    echo "data gagal dihapus karena ".$conn -> error;
}
$conn -> close();

?>