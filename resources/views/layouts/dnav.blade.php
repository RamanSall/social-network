<div class="col-md-3 col-sm-3 left-sidebar">
    <div class="left-sidebar-inner">
	<div class="pro-dash-img" id="img-upload-bg" style="background-image: url('{{ url('/images/uploads/users/200').'/'.Auth::user()->pimage }}') "  >
	</div>
    <form id="user_image_form" method="post">
    	{{ csrf_field() }}
		<div class="input-group">
		    <span class="input-group-btn btn-up-mrg">
		        <span class="btn btn-default btn-file btn-pro-cus">
		            Browse… <input type="file" accept="image/png, image/jpeg" id="imgInp2" name="pimage" id="pimage" required tabindex="0">
		        </span>
		        <button type="submit"class="btn-pro-up">Upload</button>
		    </span>
	    	<input id='urlname2' type="text" class="form-control" readonly style="display: none;">	
		</div>
    </form>
	<div class="profile-info-box">
	    <ul>
            <li>
                <p><i class="fa fa-user"></i> <span>{{ Auth::user()->name .' '. $repo['books'] }} 
                 <i class="icon-drop-up-arrow size-13 green-color"></i> {{ $repo['up_points'] }} <i class="icon-drop-down-arrow size-13 brown-color"></i> {{ $repo['down_points'] }}</span></p>
            </li>
            <li>
                <p><i class="icon-location"></i> <span>{{ $city }}</span></p>
            </li>
	    </ul>
	</div>
      
    <div class="profile-menu-left-side">
        <a href="#" class="btn btn-add-item  addnewbook {{ $active=='add_item'?'active':'' }}"><i class="icon-file-add"></i>ADD NEW BOOKS</a>
      
    </div>
    </div>
</div>
