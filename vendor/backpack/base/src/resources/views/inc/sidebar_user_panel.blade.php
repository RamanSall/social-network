<div class="user-panel">
  <a class="pull-left image" href="{{ route('backpack.account.info') }}">
  <?php 	$image = '' ;
   if(backpack_auth()->user()->pimage){
  	$image = url('/images/uploads/users/200').'/'.backpack_auth()->user()->pimage; 
  }else{
     $image =  backpack_avatar_url(backpack_auth()->user())  ;
  }
   
  	?>
    <img src=" <?php echo $image  ?>" class="img-circle" alt="User Image">
  </a>

 
  <div class="pull-left info">
    <p><a href="{{ route('backpack.account.info') }}">{{ backpack_auth()->user()->name }}</a></p>
    <small><small><a href="{{ route('backpack.account.info') }}"><span><i class="fa fa-user-circle-o"></i> {{ trans('backpack::base.my_account') }}</span></a> &nbsp;  &nbsp; </small></small>
  </div>
</div>