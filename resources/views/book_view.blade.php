@extends('layouts.layout')
@section('pageTitle','View Book')
@section('content')
<div class="fh5co-loader"></div>
<div id="page" class="bookview">
   @include('layouts.nav', ['active' => 'gallery'])
   <div style="padding-top: 40px;"></div>
   <div class="profile-fiew-wrapper">
      <div class="container">
         <div class="row margin-bottom">
            <div class="col-sm-3">
               <div class="p-box-lent">
                  <div class="book-img-blck ">
                     <div class="p-img-al" style="background-image: url('{{ url('/images/uploads/280').'/'.$book->image }}')"></div>
                  </div>
                  <div class="books-inof">
                     <p>{{ $book->name }}</p>
                     <p class="person-name"><i style=" color: #753339;" class="fa fa-user"></i> {{ $book->user }} </p>
                     <p class="person-name"><i class="icon-location2"></i> {{ $book->city }} </p>
                  </div>
               </div>
            </div>
            <div class="col-sm-9">
               <div class="profile-view-title">
                  <!-- <span>Down and Out in Paris and London</span> -->
                  <span>{{ $book->name }}</span>
                  <p>By: <span>{{ $book->author }}</span></p>
               </div>
               <div class="view-book-info view-book-stats">
               		<div class="row">
	               		<div class="col-xs-6"> 
	                  		<p>Lending Duration </p>
	                  		<p>Rental Count </p>
	                  		<p>Requests count </p> 
	              		</div>
	              		<div class="col-xs-6">
		                    <p> @php
		                     // $days = $book->lending_duration;
		                     // $weeks = floor($days / 7);
		                     // $dayRemainder = $days % 7;
		                     // echo $weeks.' Weeks '.$dayRemainder.' Days';
		                     echo $book->lending_duration.' Weeks';
		                     @endphp
		                  	</p>
		                   	<p>{{ $book->rental_count }}</p>
		                   	<p>{{ $req_count }}</p>
	               		</div>
               		</div>
               </div>
            </div>
            <div class="clearfix"></div>
         </div>
         <div class="row">
         	<div class="col-md-12">
	            <div class="view-book-info">
	               <h5>Reviews({{count($ratings)}})</h5>
	               @foreach ($ratings as $val)
	               <select class="rate">
	               @for ($i = 1; $i <= 5 ; $i++)
	               <option value="{{ $i }}" {{$i==$val->rating?'selected':''}}>{{ $i }}</option>
	               @endfor
	               </select>
	               <p>"{{$val->review}}" - by {{$val->borrower}}</p>
	               @endforeach
	            </div>
			</div>
         </div>
      </div>
      <div class="footer small-footer" style="background-image: url('{{ url('/images/word-bg.jpg') }}');">
   <footer>
      <div class="container">
         <div class="row">
            <p class="copyright-line">© 2018-2019 bookmate - All Rights Are Reserved</p>
         </div>
      </div>
   </footer>
</div>
   </div>
   
</div>

<div style="padding-top: 40px;"></div>
@endsection
@section('header')
<link rel="stylesheet" type="text/css" href="{{ url('/css/css-stars.css') }}">
@endsection
@section('footer')
<script src="{{url('/js/jquery.barrating.min.js')}}"></script>
<script type="text/javascript">
   $(document).ready(function($) {
   });
   // Rating 
      $('.rate').barrating({
   	theme: 'css-stars',
   	readonly: true ,
   	showSelectedRating: true
      });
</script>
@endsection