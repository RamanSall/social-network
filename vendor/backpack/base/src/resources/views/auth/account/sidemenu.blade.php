<div class="box">
    <div class="box-body box-profile">
    	 <?php 	$image = '' ;
   if(backpack_auth()->user()->pimage){
  	$image = url('/images/uploads/users/200').'/'.backpack_auth()->user()->pimage; 
  }else{
     $image =  backpack_avatar_url(backpack_auth()->user())  ;
  } ?>
	    <img class="profile-user-img img-responsive img-circle" src="<?php echo 	$image  ?>">
	    <h3 class="profile-username text-center">{{ backpack_auth()->user()->name }}</h3>
	</div>

	<hr class="m-t-0 m-b-0">

	<ul class="nav nav-pills nav-stacked">

	  <li role="presentation"
		@if (Request::route()->getName() == 'backpack.account.info')
	  	class="active"
	  	@endif
	  	><a href="{{ route('backpack.account.info') }}">{{ trans('backpack::base.update_account_info') }}</a></li>

	  <li role="presentation"
		@if (Request::route()->getName() == 'backpack.account.password')
	  	class="active"
	  	@endif
	  	><a href="{{ route('backpack.account.password') }}">{{ trans('backpack::base.change_password') }}</a></li>

	</ul>
</div>
