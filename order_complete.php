<?php

include 'connect.php';

session_start();

if(!isset($_SESSION['first_name'])){
  header("Location: order_complete.php");
  
}
?>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/servizio/dist/output.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
      integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body class="bg-darkest font-poppins">
    <!-- header start -->
    <header class="py-4 shadow-sm bg-darkest">
      <div class="container flex items-center justify-between">
        <!-- logo start -->
        <a href="index.php">
          <img src="/servizio/dist/images/logo servizio.png" alt="" class="w-32" />
        </a>
        <!-- logo end -->

        <!-- search engine start -->
        <form action="search.php" method="GET" class="w-full xl:max-w-xl lg:max-w-lg lg:flex relative hidden">
          <span class="absolute left-4 top-3 text-lg text-gray-400">
            <i class="fas fa-search"></i>
          </span>
          <input type="text" name="produk" class="text-white bg-dark pl-12 w-full border border-r-0 border-primary py-3 px-3 rounded-l-md focus:ring-primary focus:border-primary focus:bg-darkest" placeholder="What services are you looking for today?" />
          <button type="submit" name="cari" class="bg-primary border border-primary text-white px-8 font-medium rounded-r-md hover:bg-transparent hover:text-primary transition">Search</button>
        </form>
        <!-- search engine end -->

        <!-- icons start -->
        <div class="space-x-6 flex items-center">
          <a href="/servizio/dist/cart.html" class="lg:block text-center text-white hover:text-primary transition hidden relative">
            <span class="absolute -right-3 -top-1 w-5 h-5 rounded-full flex items-center justify-center bg-primary text-white text-xs">7</span>
            <div class="text-2xl">
              <i class="fas fa-shopping-bag"></i>
            </div>
            <div class="text-xs leading-3">Cart</div>
          </a>
          <a href="account.php" class="block text-center text-white hover:text-primary transition">
            <div class="text-2xl">
              <i class="far fa-user"></i>
            </div>
            <div class="text-xs leading-3">Account</div>
          </a>
        </div>
        <!-- icons end -->
      </div>
    </header>
    <!-- header end -->

    <!-- navbar start -->
    <nav class="bg-white hidden lg:block">
      <div class="container">
        <div class="flex">
          <!-- all category start -->
          <div class="px-8 py-4 bg-primary flex items-center cursor-pointer group relative">
            <span class="text-textcolor">
              <i class="fas fa-bars"></i>
            </span>
            <span class="capitalize ml-2 text-textcolor font-medium">All categories</span>
            <div class="absolute left-0 top-full w-full bg-dark shadow-md py-3 invisible opacity-0 group-hover:opacity-100 group-hover:visible transition duration-300 z-50 divide-y divide-gray-300 divide-dashed">
              <!-- first category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons/programming.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Programming</span>
              </a>
              <!-- first category end -->
              <!-- second category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons/videoediting.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Video Editing</span>
              </a>
              <!-- second category end -->
              <!-- third category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons/graphicdesign.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Design Graphic</span>
              </a>
              <!-- third category end -->
              <!-- fourth category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons/digitalmarketing.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Digital Marketing</span>
              </a>
              <!-- fourth category end -->
              <!-- fifth category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons/musicaudio.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Music & Audio</span>
              </a>
              <!-- fifth category end -->
              <!-- sixth category -->
              <a href="#" class="px-6 py-3 flex items-center hover:bg-[#484F59] transition">
                <img src="/servizio/dist/images/icons//writing.png" class="w-5 h-5 object-contain" />
                <span class="ml-6 text-white text-xs">Writing</span>
              </a>
              <!-- sixth category end -->
            </div>
          </div>

          <!-- link navbar menu start -->
          <div class="flex items-center justify-between flex-grow pl-12">
            <div class="flex items-center space-x-14 text-base capitalize">
              <a href="index.php" class="text-textcolor hover:text-primary transition">Home</a>
              <a href="shop.php" class="text-textcolor hover:text-primary transition">Shop</a>
              <a href="#" class="text-textcolor hover:text-primary transition">About us</a>
              <a href="#" class="text-textcolor hover:text-primary transition">Contact us</a>
            </div>
            <a href="login.php" class="ml-auto justify-self-end text-textcolor hover:text-primary transition"> Register/Login </a>
          </div>
        </div>
        <!-- link navbar menu end -->
      </div>
    </nav>
    <!-- navbar end -->

    <!-- mobile menubar -->
    <div class="fixed w-full border-t border-gray-500 shadow-sm bg-dark py-3 bottom-0 left-0 flex justify-around items-start px-6 lg:hidden z-40">
      <a href="javascript:void(0)" class="block text-center text-white hover:text-primary transition relative">
        <div class="text-2xl" id="menuBar">
          <i class="fas fa-bars"></i>
        </div>
        <div class="text-xs leading-3">Menu</div>
      </a>
      <a href="#" class="block text-center text-white hover:text-primary transition relative">
        <div class="text-2xl">
          <i class="fas fa-list-ul"></i>
        </div>
        <div class="text-xs leading-3">Category</div>
      </a>
      <a href="#" class="block text-center text-white hover:text-primary transition relative">
        <div class="text-2xl">
          <i class="fas fa-search"></i>
        </div>
        <div class="text-xs leading-3">Search</div>
      </a>
      <a href="cart.html" class="text-center text-white hover:text-primary transition relative">
        <span class="absolute -right-3 -top-1 w-5 h-5 rounded-full flex items-center justify-center bg-primary text-white text-xs">3</span>
        <div class="text-2xl">
          <i class="fas fa-shopping-bag"></i>
        </div>
        <div class="text-xs leading-3">Cart</div>
      </a>
    </div>
    <!-- mobile menu end -->

    <!-- mobile sidebar menu -->
    <div class="fixed left-0 top-0 w-full h-full z-50 bg-black bg-opacity-30 shadow hidden" id="mobileMenu">
      <div class="absolute left-0 top-0 w-72 h-full z-50 bg-dark shadow">
        <div id="closeMenu" class="text-gray-400 hover:text-primary text-lg absolute right-3 top-3 cursor-pointer">
          <i class="fas fa-times"></i>
        </div>
        <!-- navlink -->
        <h3 class="text-xl font-semibold text-white mb-1 font-roboto pl-4 pt-4">Menu</h3>
        <div class="">
          <a href="index.php" class="block px-4 py-2 font-medium transition text-white hover:bg-gray-300"> Home </a>
          <a href="shop.php" class="block px-4 py-2 font-medium transition text-white hover:bg-gray-300"> Shop </a>
          <a href="#" class="block px-4 py-2 font-medium transition text-white hover:bg-gray-300"> About Us </a>
          <roa href="#" class="block px-4 py-2 font-medium transition text-white hover:bg-gray-300"> Contact Us </roa>
        </div>
        <!-- navlinks end -->
      </div>
    </div>
    <!-- mobile sidebar menu end -->

    <!-- order complete wrapper -->
    <div class="max-w-3xl mx-auto px-16 pt-36 pb-24 text-center">
    <?php
            $id_produk=$_GET['id'];
            $select ="SELECT proses.id_produk FROM proses WHERE proses.id_produk='$id_produk'";
            $hasil = mysqli_query($conn,$select);
            $baris=$hasil->fetch_array();
            $id_produk=$baris['id_produk'];
                echo"
      <div class='mb-8'>
        <img src='/servizio/dist/images/icons/complete.png' class='w-16 inline-block' />
      </div>
      <h2 class='text-white font-medium text-3xl mb-3'>YOUR ORDER IS COMPLETED!</h2>
      <p class='text-gray-200'>Thank you for your order! Your order is being processed and will be completed within 3-6 hours. Go to order history in your profile to complete the order.</p>
      <div class='mt-10'>
        <a href='order_history.php?id=$id_produk' class='bg-primary border border-primary text-white px-6 py-3 font-medium rounded-md uppercase hover:bg-transparent hover:text-primary transition text-center'>go to order history</a>
      </div>";
?>
    </div>
    <!-- order complete wrapper end -->

    <!-- footer start -->
    <footer class="bg-darkest pt-16 pb-12 mt-20 border-t border-gray-500">
      <div class="container">
        <div class="xl:grid xl:grid-cols-3 xl:gap-8">
          <!-- footer left start -->
          <div class="space-y-8 xl:col-span-1">
            <img class="w-20" src="/servizio/dist/images/logo servizio.png" alt="Company name" />
            <p class="text-white text-base">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, assumenda!</p>
            <div class="flex space-x-6">
              <a href="#" class="text-white hover:text-primary">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="text-white hover:text-primary">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="text-white hover:text-primary">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="#" class="text-white hover:text-primary">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </div>
          <!-- footer left end -->
          <!-- footer links start -->
          <div class="mt-12 grid grid-cols-2 gap-8 xl:mt-0 xl:col-span-2">
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-sm font-semibold text-white tracking-wider uppercase">Solutions</h3>
                <div class="mt-4 space-y-4">
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Marketing </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Analytics </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Commerce </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Insights </a>
                </div>
              </div>
              <div class="mt-12 md:mt-0">
                <h3 class="text-sm font-semibold text-white tracking-wider uppercase">Support</h3>
                <div class="mt-4 space-y-4">
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Pricing </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Trust & Safety </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Help & Support </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Buying on Servizio </a>
                </div>
              </div>
            </div>
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-sm font-semibold text-white tracking-wider uppercase">Company</h3>
                <div class="mt-4 space-y-4">
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> About </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Blog </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Jobs </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Careers </a>
                </div>
              </div>
              <div class="mt-12 md:mt-0">
                <h3 class="text-sm font-semibold text-white tracking-wider uppercase">Legal</h3>
                <div class="mt-4 space-y-4">
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Claim </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Privacy </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Policy </a>
                  <a href="#" class="text-base text-gray-300 hover:text-primary block"> Terms </a>
                </div>
              </div>
            </div>
          </div>
          <!-- footer links end -->
        </div>
      </div>
    </footer>
    <!-- footer end -->

    <!-- copyright start -->
    <div class="bg-white py-4">
      <div class="container flex items-center justify-center">
        <p class="text-textcolor">© Servizio - All Rights Reserved</p>
      </div>
    </div>
    <!-- copyright end -->

    <script>
      let menuBar = document.querySelector('#menuBar');
      let mobileMenu = document.querySelector('#mobileMenu');
      let closeMenu = document.querySelector('#closeMenu');

      menuBar.addEventListener('click', function () {
        mobileMenu.classList.remove('hidden');
      });

      closeMenu.addEventListener('click', function () {
        mobileMenu.classList.add('hidden');
      });
    </script>
  </body>
</html>
