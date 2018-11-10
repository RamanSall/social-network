<?php $active = 'add_item';  ?>
<div class="col-md-3 col-sm-3 right-sidebar">
    <div class="profile-menu-left-side">
      
        <div class="profile-other-menu">
            <a href="{{ route('owneditem') }}" class="btn btn-profile-menu {{ $active=='owned_item'?'active':'' }}">Your books</a>
            <a href="{{ route('sentReq') }}" class="btn btn-profile-menu {{ $active=='sent_requests'?'active':'' }}">Sent Requests</a>
            <a href="{{ route('receivedReq') }}" class="btn btn-profile-menu {{ $active=='borrowreq'?'active':'' }}" id="recRequests">Received Requests <span class="badge"></span></a>
            <a href="{{ route('rentals') }}" class="btn btn-profile-menu {{ $active=='lent_item'?'active':'' }}">Your rentals</a>
            <a href="{{ route('borrowals') }}" class="btn btn-profile-menu {{ $active=='borrowed_item'?'active':'' }}">Your borrowals</a>
        </div>
    </div>
</div>