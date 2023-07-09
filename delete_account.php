<?php
include "connect.php";



    $firstname=$_GET['id'];
    $delete = "DELETE  FROM user WHERE first_name = '$firstname'";
    $hasil = $conn -> query($delete);
    
    if($hasil === TRUE){
        header('Location: login.php');
    }else {
        echo "data gagal dihapus karena ".$conn -> error;
    }
    $conn -> close();
  


?>