@extends('layouts.dlayout')

@section('pageTitle','Received Requests')

@section('content')

@include('layouts.dnav', ['active' => 'borrowreq'])

<div class="col-md-6 col-sm-6 yours-books-page">
	<div class="content" style="height:900px; width: auto;">
		<div class="right-side-home">
			<div class="product-list">
				<div class="row" id="rows">
					<table id="dataTable" class="table">
				    <thead>
				      <tr>
				        <th>Date</th>
				        <th>Thumbnail</th>
				        <th>Requester</th>
				        <th>Status</th>
				      </tr>
				    </thead>
				    <tbody>
				    	@foreach ($data as $val)
				    		<tr class="
                  @if($val->status == 1)
                    active
                  @elseif($val->status == 2)
                    danger
                  @elseif($val->status == 3)
                    success
                  @elseif($val->status == 0)
                  @else
                    info
                  @endif" 
                  >
				    			<td     width=128px;>
                  	@php
                  		$date = explode(' ',$val->date);
                  		echo date("d M Y", strtotime($date[0]));
                  	@endphp
                  </td>
					    		<td>
					    			<a href="{{ route('viewBook',$val->product_id) }}">
					    				<img src="{{ url('/images/uploads/280').'/'.$val->image }}" height="100" width="100">
				    				</a>
                  </td>
                  <td>
                  	<a href="{{ route('profile',$val->borrow_user) }}">
                  		{{ $val->borrower }}
                  	</a>
                  </td>
                  <td>
                   
                  	@php
                  		$disAccept = $disReject = $disLend = $showBtns = $statusText = '';
                      if ($val->status == 0) {
                        $disAccept = $disReject = '';
                        $disLend = 'disabled';
                        $showBtns = true;
                      }
                  		else if( $val->status == 1 ) {
                  			$disAccept = $disReject = 'disabled';
	                  		$disLend = '';
                        $showBtns = true;
                  		}
                  		else if( $val->status == 2 ) {
												$disAccept = $disReject = $disLend = 'disabled';
                        $showBtns = false;
                        $statusText = 'Rejected';
                      } 
                  		else {
                  			$disAccept = $disReject = $disLend = 'disabled';
                        $showBtns = false;
                        $statusText = 'Accepted';
                      }
                  	@endphp	
                    
                    @if($showBtns)
                    <p style="text-align: left;margin-top: 0;"> Hi, I would like to borrow book for my studies. Thank you very much</p>
  										<button type="button" class="btn btn-success accept_btn" {{ $disAccept }} request_id="{{ $val->id }}" >Accept</button>
                      <button type="button" class="btn btn-danger reject_btn" {{ $disReject }} request_id="{{ $val->id }}" >Reject</button>
                      <button type="button" class="btn btn-primary lend_btn" {{ $disLend }} request_id="{{ $val->id }}" >Lend</button>	
                    @else
                      {{ $statusText }}
                    @endif
                  </td>
                </tr>
				    	@endforeach
				    </tbody>
			    </table>
			    <div class="row">
            <div class="col-md-12">
              <div class="page-nation home-pagina">
                <?php echo $data->render() ?>         
              </div>
            </div>
          </div>
				</div>
			</div>
		</div>
	</div>
</div>
 @include('layouts.sidebarlayout', ['active' => 'add_item'])
  <div class="clearfix"></div>
@endsection

@section('footer')
    <script type="text/javascript">
      $(document).ready(function(){
        setNotifications('{{ route('setnoti') }}','{{ csrf_token() }}');  

          function loadData(skip,limit)
          {
          	$('#rows').append('<div class="col-md-12">'+
          		'<img src="{{ url('/images/loader.gif') }}" class="img-circle center-block loader" height="50" width="50" >'+
          		'</div>');
            $.ajax({
                url: '{{ url('/userborrowrequest/'.Auth::user()->id) }}/'+skip+'/'+limit,
                dataType: 'JSON',
                cache: true,
                success:function(data){

                	if(data['msg'])
                	{
                		$('.loader').remove();
                	
            			$('#rows').append('<div class="col-md-12">'+
            				'<p class="text text-danger center-block">'+data['msg']+'</p>'+
        				'</div>');
                	}
                	else
                	{
                    $.each(data,function(index, value) {
                          $('#rows').append('<div class="col-md-3">'+
                              '<div class="p-box-lent borrow-books">'+
                                  '<p class="person-name">Borrower: '+value['borrower_name']+'</p>'+
                                  '<div class="borrow-books-img">'+
                                  '<div class="p-img-al" style="background-image: url(\'{{ url('/images/uploads') }}/'+value['image']+'")\'></div>'+
                                  '</div>'+
                                  '<p>'+value['name']+'</p>'+
                                  '<div class="borrow-books-btn">'+
                                  '<button type="button" class="btn btn-success accept_btn"  request_id="'+value['request_id']+'" >Accept</button>'+
                                  '<button type="button" class="btn btn-danger  reject_btn"  request_id="'+value['request_id']+'" >Reject</button>'+
                                  '</div>'+
                              '</div>'+
                          '</div>'); 
                    });

                        //Products Height Code
						        $.fn.equalHeights = function() {
					                var maxHeight = 0,
					                    $this = $(this);
					        
					                $this.each( function() {
					                	console.log('loop');
					                    var height = $(this).innerHeight();
					        
					                    if ( height > maxHeight ) { maxHeight = height; }
					                });
					        
					                return $this.css('height', maxHeight);
					            };                
				            $('.p-box-lent').equalHeights();

                        $('.loader').parent('div').remove();
                      }
                  },
                  error:function(){ $('.loader').remove(); }
              }); 
          }            
          // loadData(0,12);

          $(document).on('click','.accept_btn,.reject_btn,.lend_btn',function(e) {
          	
          	var request_id = $(this).attr('request_id'),
          		  status 	   = 0,
          	 	  btn 	     = $(this);

          	if( btn.hasClass('accept_btn') )
          		status = 1;
          	else if( btn.hasClass('lend_btn') )
          		status = 3;
          	else
          		status = 2;

        		$.ajax({
        			url: '{{ route('updatereqborrow') }}',
        			type: 'POST',
        			dataType: 'JSON',
        			cache: true,
        			data: {_token: '{{ csrf_token() }}',request_id:request_id,status:status },
        			beforeSend: function() {
        				btn.attr('disabled','disabled');
        			},
        			success:function(data){
        				if( data["error"] ) 
        					calert(data["error"],'error');
        				else if( data["updated"] == "true" ) {	        					
        					if(status == 1) {
        						btn.closest('tr').addClass('active');
                    btn.closest('td').find('.reject_btn').attr('disabled','disabled');
        						btn.closest('td').find('.lend_btn').removeAttr('disabled');
        						calert('Request Accepted Successfully.','success');
        					}
                  else if( status == 3 ) {
                    btn.closest('tr').addClass('success');
                    btn.closest('tr').find('td').eq(3).text('Accepted');
        						calert('Lent Successfully.','success');	
        					}
        					else {
                    btn.closest('tr').addClass('danger');
                    btn.closest('tr').find('td').eq(3).text('Rejected');
        						calert('Request Rejected.','success');
        					}
        				}
	    					else {
	    						calert('Error occured while updating request status.','error');
	    						btn.removeAttr('disabled');
	    					}
        			},
        			error:function() { 
        				calert('Error occured while updating request status.','error');
        				btn.removeAttr('disabled');
        			}
        		});
          });

      });  
    </script>
    
@endsection
