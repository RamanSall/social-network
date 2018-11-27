<nav class="fh5co-nav" role="navigation" style="background-image: url({{ url('/images/word-bg.jpg') }});">
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<div id="fh5co-logo"><a href="/"><img src="{{ url('/images/logo.png') }}" class="img-responsive"></a></div>
					</div>
					<div class="col-xs-9 text-right menu-1">
						<ul>
							<li class="{{ $active == 'index'?'active':'' }}"><a href="{{ route('index') }}">Home</a></li>

							<li class="{{ $active == 'gallery'?'active':'' }}"><a href="{{ route('gallery') }}">Book Gallery</a></li>
							 
                            <li class="{{ $active == 'about'?'active':'' }}"><a href="{{ url('about') }}">About</a></li>
                             <li class="{{ $active == 'contact-us'?'active':'' }}"><a href="{{ url('contact-us') }}">Contact Us</a></li>
							@guest
								<li class="btn-cta {{ $active =='login'?'active':'' }}"><a href="{{ route('login') }}"><span class="btn-top-log">Login</span></a></li>
								<!-- <li class="btn-cta {{ $active=='register'?'active':'' }}"><a href="{{ route('register') }}"><span class="btn-top-log">Sign Up</span></a></li> -->
							
							@else
								
								<li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" {{-- aria-expanded="false"  aria-haspopup="true" v-pre --}}>
                                    {{-- url('/images/profile-img.png') --}}
                                    <img src="{{ url('/images/uploads/users/70/').'/'.Auth::user()->pimage }}" class="img-circle" height="25" width="25">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                	<li class="{{ $active =='dashboard'?'active':'' }}"><a href="{{ route('owneditem') }}"><span>Dashboard</span></a></li>
                                    @if( Auth::user()->role == 'admin')
                                   <li><a href="{{ route('admindashboard') }}"><span>Admin Dashboard</span></a></li>

                                     @endif

                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>

							@endguest
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				
			</div>
		</div>
	</nav>