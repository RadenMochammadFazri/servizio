<?php

include 'connect.php';


if(isset($_POST['insert_produk'])){
   
  $produk = $_POST['nama_produk'];
  $status = $_POST['status'];
  $revisi = $_POST['revisi'];
  $kategori = $_POST['kategori'];
  $delivery = $_POST['delivery'];
  $price = $_POST['price'];
  $deskripsi = $_POST['deskripsi'];
  $detail = $_POST['detail'];
  $format = $_POST['format'];


//images
  $image1=$_FILES['image1']['name']; 
  $image2=$_FILES['image2']['name'];
  $image3=$_FILES['image3']['name'];
//tmp images 
 $temp_image1=$_FILES['image1']['tmp_name'];  
 $temp_image2=$_FILES['image2']['tmp_name']; 
 $temp_image3=$_FILES['image3']['tmp_name']; 
   
//checking
if($produk=='' or $status=='' or  $revisi=='' or $kategori=='' or $delivery=='' or $price=='' or $deskripsi=='' or $image1=='' or $detail=='' or $format==''){
  echo "<script>alert('isi yang kosong')</script>";
  exit();
}else{
  move_uploaded_file($temp_image1,"/servizio/dist/images/$image1"); 
  move_uploaded_file($temp_image2,"/servizio/dist/images/$image2");
  move_uploaded_file($temp_image3,"/servizio/dist/images/$image3");

  // insert  
  $insert_produk = "INSERT INTO produk (judul_produk, tersedia, revisi, id_kategori, waktu_pengiriman, harga_produk , deskripsi_produk, gambar_produk1, gambar_produk2, gambar_produk3, detail_produk, format_produk) VALUES 
  ('$produk', '$status', '$revisi', '$kategori', '$delivery', '$price', '$deskripsi', '$image1', '$image2', '$image3', '$detail', '$format')";
  $result = mysqli_query($conn,$insert_produk);
  if($result){
    echo "<script>alert('success')</script>";
    header('Location: admin_view.php');

  }
}
}

if(isset($_POST['edit_produk'])){
  
  $edit= "SELECT * FROM produk " ;
  $hasil_edit=mysqli_query($conn,$edit);
  while ($baris=mysqli_fetch_array($hasil_edit)) {
  $id_produk= $_POST['id_produk'];
  $produk = $_POST['nama_produk'];
  $status = $_POST['status'];
  $revisi = $_POST['revisi'];
  $kategori = $_POST['kategori'];
  $delivery = $_POST['delivery'];
  $price = $_POST['price'];
  $deskripsi = $_POST['deskripsi'];
  $detail = $_POST['detail'];
  $format = $_POST['format'];

  //images
  $image1=$_FILES['image1']['name']; 
//tmp images 
  $temp_image1=$_FILES['image1']['tmp_name'];  
   
  
    move_uploaded_file($temp_image1,"../images/$image1"); 

    $edit_produk = "UPDATE produk SET id_produk='$id_produk', judul_produk= '$produk', tersedia='$status', revisi='$revisi', id_kategori='$kategori', waktu_pengiriman='$delivery', 
    harga_produk='$price', deskripsi_produk='$deskripsi', gambar_produk1='$image1', detail_produk='$detail', format_produk='$format'
    WHERE id_produk='$id_produk'";
  $result = mysqli_query($conn,$edit_produk);
  if($result){
    echo "<script>alert('success')</script>";
    header('Location: admin_view.php');

  }

}
}


?>

