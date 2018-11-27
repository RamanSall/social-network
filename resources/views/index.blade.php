@extends('layouts.layout')

@section('pageTitle','Social Network')

@section('content')
	
	<div class="fh5co-loader"></div>
	<div id="page">
		@include('layouts.nav', ['active' => 'index'])
<div class="container home-content">
   <div class="row">
      <div class="about-intro">
         <div class="col-md-12">
            <p>Bookmate is a revolutionary online book-sharing platform that allows users to lend and borrowbooks - yes books, not ebooks! :) Bookmate operates as a completely free enterprise and provides convenient tools for searching for available books and initiating direct communication with other users.Read more about how Bookmate works.</p>
            <div class="fh5co-nav home-btn">
            	<ul>
            		<!-- <li class="btn-cta"><a href="{{ route('register') }}"><span class="btn-top-log">Sign Up</span></a></li> -->
            		<li class="btn-cta "><a href="{{url('register')}}"><span class="btn-top-log">Sign Up</span></a></li>
            	</ul>
            	<p>for free and join bookmate’s growing community of readers.</p>
            </div>
         </div>
      </div>
      <div class="about-devesion">
         <div class="col-sm-4">
         	<div class="icon-pic">
         		<img src="images/idea.png" class="img-responsive">
         	</div>
            <h3>Search for your book among hundreds of members uploads</h3>
            <div class="icon-link"><a href="#">discover</a></div>
         </div>
         <div class="col-sm-4">
         	<div class="icon-pic">
         		<img src="images/share.png" class="img-responsive">
         	</div>
            <h3>Give back by lending your books to fellow readers</h3>
            <div class="icon-link"><a href="#">share</a></div>
         </div>
         <div class="col-sm-4">
         	<div class="icon-pic">
         		<img src="images/network.png" class="img-responsive">
         	</div>
            <h3>Meet and make friends with like minded readers</h3>
            <div class="icon-link"><a href="#">connect</a></div>
         </div>
         <div class="clearfix"></div>
      </div>
   </div>
</div>
		<!-- <aside id="fh5co-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
			   		<li style="background-image: url({{ url('/images/image-1.jpg') }});">
				   		<div class="overlay-gradient"></div>
				   		<div class="container">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 text-center  ">
					   				<div class="slider-text-inner slider-text js-fullheight">
					   					<h1>Discover</h1>
											<h2 class="font-roboto-300">Find your favorite book among hundreds of member uploaded collections.</h2>
										
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url({{ url('/images/image-2.jpg') }});">
				   		<div class="overlay-gradient"></div>
				   		<div class="container">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 text-center  ">
					   				<div class="slider-text-inner slider-text js-fullheight">
					   					<h1>Share</h1>
										<h2 class="font-roboto-300">
											Give back to the community by adding the books <br> that you’d like to share.
										</h2>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url({{ url('/images/image-3.jpg') }});">
				   		<div class="overlay-gradient"></div>
				   		<div class="container">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 text-center ">
					   				<div class="slider-text-inner js-fullheight slider-text">
					   					<h1>Connect</h1>
										<h2 class="font-roboto-300">Meet and make friends with like-minded readers </h2>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
			   		</li>		   	
			  	</ul>
		  	</div>
		</aside> -->
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
