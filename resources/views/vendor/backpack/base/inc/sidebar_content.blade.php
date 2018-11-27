<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li><a href="{{ backpack_url('dashboard') }}"><i class="fa fa-dashboard"></i> <span>{{ trans('backpack::base.dashboard') }}</span></a></li>
<li><a href="{{ url(config('backpack.base.route_prefix', 'admin') . '/product') }}"><i class="fa  fa-address-book-o"></i> <span>All Books</span></a></li>
<li><a href="{{ url(config('backpack.base.route_prefix', 'admin') . '/contact') }}"><i class="fa fa-thumbs-o-up"></i> <span>Feedbacks</span></a></li>