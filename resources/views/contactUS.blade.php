 
@extends('layouts.layout')

@section('pageTitle','Contact US')

@section('content')
 
@include('layouts.nav', ['active' => 'index'])
	<div class="fh5co-loader"></div>
	<div id="page">
		@include('layouts.nav', ['active' => 'index'])
<div class="container home-content">
   <div class="row"> 

<div class="contactpage">
 

 <div class="col-sm-12 text-center">
   <h3>Contact US</h3>
	<p class="subheading"> Got any questions, feedback or other thoughts? We’d love to hear from you.  </p>

	

 
@if(Session::has('success'))
   <div class="alert alert-success">
     {{ Session::get('success') }}
   </div>
@endif
 
{!! Form::open(['route'=>'contactus.store']) !!}
 
<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
 
{!! Form::text('name', old('name'), ['class'=>'form-control', 'placeholder'=>'Enter Name']) !!}
<span class="text-danger">{{ $errors->first('name') }}</span>
</div>
 
<div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
 
{!! Form::text('email', old('email'), ['class'=>'form-control', 'placeholder'=>'Enter Email']) !!}
<span class="text-danger">{{ $errors->first('email') }}</span>
</div>
 
<div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
 
{!! Form::textarea('message', old('message'), ['class'=>'form-control', 'placeholder'=>'Enter Feedback']) !!}
<span class="text-danger">{{ $errors->first('message') }}</span>
</div>
 
<div class="form-group">
<button class="btn btn-success">Contact US!</button>
</div>
 
{!! Form::close() !!}
 </div>
 

 
  <div class="clearfix"></div>






</div>
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
@endsection
@section('footer')