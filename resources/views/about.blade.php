@extends('layouts.layout')
@section('pageTitle','Social Network')
@section('content')
<div class="fh5co-loader"></div>
<div id="page" class="about-page-layout">
@include('layouts.nav', ['active' => 'index'])
<div class="container home-content">
   <div class="row">
      <div class="about-intro">
         <div class="col-md-12">
            <p>Bookmate is a revolutionary online book-sharing platform that allows users to lend and borrowbooks - yes books, not ebooks! :) Bookmate operates as a completely free enterprise with theonly requirement that a user needs to add a minimum of two books that he or she is willing tolend to other fellow users on the platform. Bookmate provides convenient tools for searching for available books and initiating direct communication with other users. It offers absolute freedom to users in defining their own terms of lending and managing their book requests and rentals. To see more about how the site works, please refer to How Bookmate Works.</p>
         </div>
      </div>
      <div class="about-devesion">
         <div class="col-md-12">
            <h3>How Bookmate Works</h3>
            <p>The site consists of two main pages. The book gallery which displays all of the available books that allows a user to search for a book based on title, author or location. The user dashboard which can be seen after registration and logging in provides the management tools where users can keep track of their rentals and borrowals.</p>
         </div>
         <div class="col-md-12">
            <h3>The Reputation System</h3>
            <p>Bookmate is an online platform and as stated in our terms and conditions, it does not hold responsibility for damages that a user may face outside the bounds of the website such as damages to books or unpleasant experiences with other users. Therefore, we expect and encourage users to use the website responsibly.</p>
         </div>
         <div class="col-md-12">
            <p>To encourage the use of the platform in a responsible manner, Bookmate integrates an inherent reputation system that rewards user actions which benefits the Bookmate community. Examples of these include leaving reviews of book rentals and adding more books to the Bookmate gallery. Thus, each user will have a reputation score which will also be an indicator of a user's activity and credibility on Bookmate.</p>
         </div>
         <div class="clearfix"></div>
      </div>
   </div>
</div>

	<div class="footer home-fotter" style="background-image: url({{ url('/images/word-bg.jpg') }});">
      <footer >
         <div class="container">
            <div class="row">
               <div class="col-md-3 col-sm-3">
                  <img src="images/ftr-logo.png" class="img-responsive">
                  <p class="ftr-about-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec mi eget lacus convallis consectetur a et lacus. Curabitur nec purus.</p>
                  <ul class="ftr-social">
                     <li><i class="icon-facebook"></i></li>
                     <li><i class="icon-twitter"></i></li>
                     <li><i class="icon-instagram"></i></li>
                     <li><i class="icon-youtube"></i></li>
                  </ul>
               </div>
               <div class="col-md-3 col-sm-3">
                  <div class="ftr-newsletter">  
                     <h3>Newsletter</h3>
                     <label>Enter your E-mail Address</label>
                     <input type="email" name="" placeholder="Email Here" class="ftr-news-mail">
                     <p>*we Never Send Spam</p>
                     <button class="">Subcribe</button>
                  </div>
               </div>
               <div class="col-md-2 col-sm-2">
                  <ul class="ftr-menu">
                     <li>Home</li>
                     <!--<li>About Us</li>-->
                     <!--<li>Platform</li>-->
                     <!--<li>More</li>-->
                     <!--<li>Contact Us</li>-->
                     <!--<li>Privacy Policy</li>-->
                     <!--<li>terms of Use</li>-->
                     <!--<li>Feedback</li>-->
                     <!--<li>Help & Support</li>-->
                  </ul>
               </div>
               <div class="col-md-3 col-sm-3">
                  <div class="ftr-info">
                     <h3>Have Question ?</h3>
                     <p>+ 9 00 111 1012</p>
                     <a mailto:"office@yourname.com">office@yourname.com</a>
                     <small>24/7Dedicated Customer Support</small>
                  </div>
               </div>
            </div>
         </div>
      </footer>
   </div>
</div>
@endsection