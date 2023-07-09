<?php

include 'connect.php';

session_start();

    
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $var = "SELECT user.first_name, user.email,user.pass FROM user WHERE email='$email'AND pass='$password'";
    $hasil = $conn -> query($var);

    if ($hasil->num_rows > 0) {
        $baris = mysqli_fetch_assoc($hasil);
        $_SESSION['first_name'] = $baris['first_name'];
        header("Location: account.php");
    } else {
        echo "<script>alert('Email atau password Anda salah. Silahkan coba lagi!')</script>";

    }
    

 session_start();

    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $admin = "SELECT email FROM user WHERE email LIKE '%admin123@gmail.com%' AND pass='$password'";
    $result = $conn -> query($admin);

    if ($result->num_rows > 0) {
        $baris = mysqli_fetch_assoc($result);
        $_SESSION['email'] = $baris['email'];
        header("Location: admin_view.php");
    } else {
        echo "<script>alert('Email atau password Anda salah. Silahkan coba lagi!')</script>";
    }
?>
