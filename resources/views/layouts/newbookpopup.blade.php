

 
<?php $active = 'add_item';  ?>
<div class="col-md-12">
    <div class="content" style="max-height: 900px; width: auto;">
    <div class="right-side-home">
        <div class="product-list">
            <div class="add-item-box">
                <!-- <h2>Add Books</h2> -->
                <div class="row">
                    <div>
                        <form id="pform" method="post" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="col-sm-6 form-group">
                                <div>
                                    <label for="name">Book Name</label>
                                    <input type="text" id="name" name="name" class="form-control" placeholder="" required tabindex="1">
                                </div>
                            </div>
                            <div class="col-sm-6 form-group">
                                <div>
                                    <label for="author">Author's Name</label>
                                    <input type="text" id="author" name="author" class="form-control" placeholder="" required tabindex="2">
                                </div>
                            </div>
                            <div class="col-sm-12 form-group">
                                <div>
                                    <label for="">Category</label>
                                    <div>
                                      <select data-placeholder="" class="chosen-select" id="sub_category_id" name="sub_category_id" required tabindex="3">
                                        <option value=""></option>
                                      </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 form-group">
                                <div>
                                    <label for="">Lending Duration</label>
                                    <div class="input-group">
                                      <input type="text" name="lending_duration" id="lending_duration" class="form-control" required tabindex="4">
                                      <span class="input-group-addon">Weeks</span>
                                    </div>
                                </div>
                            </div>

                            <div class="clearfix"></div>
                             <div class="col-md-12 form-group"><div>
                                    <label for="">Select Service </label>
                                    <div>
                                      <select data-placeholder="" class="chosen-select" id="" name="" required tabindex="3">
                                        <option value="">Rental</option>
                                         <option value="">Sale</option>
                                      </select>
                                    </div>
                                </div>
                              </div>
                            <div class="col-md-12 form-group">
                                <div>
                                <label>Upload Image</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <span class="btn btn-default btn-file">
                                            Browse… <input type="file" accept="image/png, image/jpeg" id="imgInp" name="image" required tabindex="5">
                                        </span>
                                    </span>
                                    <input id='urlname'type="text" class="form-control" readonly>
                                </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="btn-center">
                                    <button type="submit" class="btn btn-login" id="submit_btn" tabindex="6">
                                        Add Book
                                        <img src="{{ url('/images/loader.gif') }}" class="img-circle center-block " id="loader" style="display: none;" height="20" width="20" >
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group"> 
                            <img id='img-upload' src="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="rows">
            </div>
        </div>
    </div>
</div>
</div>



<div class="clearfix"></div>
 

@section('footer')
    <script type="text/javascript">
        $(document).ready(function(){
            function blshow() {
                $('#loader').show();
                $('#submit_btn').attr('disabled', 'disabled');
            }
            function blhide() {
                $('#loader').hide();
                $('#submit_btn').removeAttr('disabled');
            }
            function loadSubCategories(data) {
                var rows = '';
                $.each(data,function(index, value) {
                    rows += '<option value="'+value['id']+'">'+value['name']+'</option>';
                });
                return rows;
            }
            function loadCategories() {
                $.ajax({
                    url: '{{ route('categories') }}',
                    type: 'GET',
                    cache: true,
                    dataType: 'JSON',
                    success:function(data){
                        var sub_category_id = $('#sub_category_id');
                        sub_category_id.chosen('destroy');
                        sub_category_id.empty();
                        sub_category_id.append('<option value=""></option>');

                        $.each(data,function(index, value) {
                            sub_category_id.append('<optgroup label="'+index+'">'+loadSubCategories(value)+'</optgroup>'); 
                        });
                        sub_category_id.chosen();
                    },
                    error:function(){}
                }); 
            }
            loadCategories();

            {{--function loadData() {
                $.ajax({
                    url:'{{ url('userproducts/'.Auth::user()->id.'/3') }}',
                    type: 'GET',
                    cache: true,
                    dataType: 'JSON',
                    success:function(data) {
                        $('#rows').html('');
                        $.each(data,function(index, value) {
                            $('#rows').append('<div class="col-md-3">'+
                                '<div class="p-box-lent dasboard-boxes">'+
                                    '<p class="person-name">Category: '+value['category_name']+'</p>'+
                                    '<div class="p-img-al" style=\"background-image: url(\'{{ url('/images/uploads/280') }}/'+value['image']+'\')\"></div>'+
                                    '<p>'+value['name']+'</p>'+
                                '</div>'+
                            '</div>'); 
                        });
                    },
                    error:function() {

                    }
                }); 
            }
            loadData();--}}

            function add() {
                var fdata = new FormData( $('#pform')[0] ); 
                $.ajax({
                    url: '{{ route('addproduct') }}',
                    type: 'POST',
                    cache: true,
                    dataType: 'JSON',
                    data: fdata,
                    contentType: false,
                    processData: false,
                    beforeSend:function(){
                        blshow();
                    },
                    success:function(data){
                        if(data['errors']) {
                            $.each(data,function(index, value) {
                                $.each(value,function(index1, el) {
                                    calert(el,'error');
                                });
                            });
                        }
                        else if ( data['inserted'] == 'true' ) {
                            $('#pform').trigger('reset');
                            {{-- url('/images/placeholder-img.jpg') --}} 
                            $("#img-upload").attr("src","");
                            $('#sub_category_id').val('').trigger('chosen:updated');
                            // loadData();
                            calert('Added Successfully.','success');
                        }
                        else
                            calert('Error occured while adding product.','error');    
                    },
                    error:function(){ 
                        calert('Error occured while adding product.','error');
                    },
                    complete:function(){
                        blhide();
                    }
                });                
            }

            $('#pform').submit(function(e) {
                e.preventDefault();
                add();
            });
        });  
    </script>
    
@endsection
