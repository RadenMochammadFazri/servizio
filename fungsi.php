<link rel="stylesheet" href="/servizio/dist/output.css" />

<?php

include 'connect.php';

function login(){
    echo  "<script>alert('Login dulu MASZEH')</script>";
}

function cari(){
    global $conn;
    if(isset($_GET['cari'])){
        $value=$_GET['produk'];
        $search = "SELECT * FROM produk WHERE judul_produk LIKE '%$value%'";
        $hasil = mysqli_query($conn,$search);
           if($hasil->num_rows > 0){
           while ($baris=$hasil->fetch_assoc()) {
               $id_produk=$baris['id_produk'];
               $produk=$baris['judul_produk'];
               $image=$baris['gambar_produk1'];
               $price=$baris['harga_produk'];
               $status=$baris['tersedia'];
               echo"
               <div class='container pt-16'>
               <div class='grid lg:grid-cols-4 sm:grid-cols-2 gap-6'>
               <div class='group rounded bg-dark shadow overflow-hidden'>
          <div class='relative'>
            <img src='/servizio/dist/images/$image' class='w-full' />
            <div class='absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center gap-2 opacity-0 group-hover:opacity-100 transition'>
              <a href='view.php?id=$id_produk' class='text-white text-lg w-9 h-9 rounded-full bg-primary hover:bg-gray-800 transition flex items-center justify-center'>
                <i class='fas fa-search'></i>
              </a>
              <a href='#' class='text-white text-lg w-9 h-9 rounded-full bg-primary hover:bg-gray-800 transition flex items-center justify-center'>
                <i class='far fa-heart'></i>
              </a>
            </div>
          </div>
          <!-- product image end -->
          <!-- product content start -->
          <div class='pt-4 pb-3 px-4'>  
            <a href='view.php?id=$id_produk'>
              <h4 class='font-medium text-xl mb-2 text-white hover:text-primary transition'>$produk</h4>
            </a>
            <div class='flex items-baseline mb-1'>
              <p class='text-xl text-primary font-roboto font-semibold'>$price</p>
            </div>
            <div class='flex items-center'>
              <div class='flex gap-1 text-sm text-yellow-400'>
                <span><i class='fas fa-star'></i></span>
                <span><i class='fas fa-star'></i></span>
                <span><i class='fas fa-star'></i></span>
                <span><i class='fas fa-star'></i></span>
                <span><i class='fas fa-star'></i></span>
              </div>
              <div class='text-xs text-gray-300 ml-3'>$status</div>
            </div>
          </div>
          <!-- product content end -->
          <!-- product button start -->
          <a href='#' class='block w-full py-1 text-center text-white bg-primary border border-primary rounded-b hover:bg-transparent hover:text-primary transition'> Add to Cart </a>
          </div>
          </div>
          </div>
          </div>";
        }
        
}else {
  echo"<h1>GK ada MASZEH</h1>";
}
}}

cari();

?>
