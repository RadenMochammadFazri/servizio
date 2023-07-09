<?php

include 'connect.php';

    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $password1 = md5($_POST['pass1']);
    $password2 = md5($_POST['pass2']);
    $tanggal = $_POST['tanggal'];
    $kelamin = $_POST['gender'];
    $nomor = $_POST['nomor'];

    if ($password1 == $password2){

      $var = "INSERT INTO user (first_name, last_name, email, pass, tanggal_lahir, kelamin, nomor_telepon)
        VALUES ('$firstname','$lastname','$email', '$password1', '$tanggal', '$kelamin', '$nomor')";

      $hasil = $conn -> query($var);

      if($hasil ===  TRUE){
        header('Location: login.php');
      } else{ 
        echo"Registrasi gagal!";
      }

    } else {
      echo "<script>alert('Password diinputkan tidak sama. Ulangi lagi!')</script>";
    }

?>
