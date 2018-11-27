@extends('backpack::layout')

@section('header')
 
    <section class="content-header">
      <h1>
       All Books
      </h1>
      
    </section>
 
 
 

 <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>id</th>
               <th>Book Image</th>                
                <th>Book Name</th>
                <th>Author Name </th>
                <th>Category</th>
                <th>Owner Name</th>                
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
<?php 
$alldata = json_decode($data);
$count= 1;
foreach ($alldata as $value) {    ?>
 
            <tr>
                <td><?php echo @$count; ?></td>
                 <td><img class="bookimage" src="<?php echo url('/images/uploads/280').'/'.@$value->image ?>" /></td>
                <td><?php echo @$value->name ?></td>
                <td><?php echo @$value->author ?></td>
                <td><?php echo@$value->category_name ?></td>
                <td><?php echo @$value->owner_name ?></td>
                
                
                 <td>
                  <?php if(@$value->approved == 1){
                   echo "<label>Approved</label>";
                  }elseif(@$value->approved == 2){

                    echo "<label>Disapproved</label>";
                  }
                  else{ ?>
                   <a href="{{ route('getApproved') }}?id=<?php echo base64_encode(@$value->id) ?>" > Approve</a> | <a href="{{ route('disApproved') }}?id=<?php echo base64_encode(@$value->id) ?>">Disapprove</a></td>
                 <?php  }
                  ?>
                             
            </tr>
           
   
 <?php
 $count++;
}
 
?>
     </tbody>
 <tfoot>
            <tr>
                 <th>id</th>
               <th>Book Image</th>                
                <th>Book Name</th>
                <th>Author Name </th>
                <th>Category</th>
                <th>Owner Name</th>                
                <th>Action</th>
            </tr>
 </tfoot>
    </table>
 



  <!--   <div class="row">
        <div class="col-md-12">
            <div class="box box-default">
                <div class="box-header with-border">
                    <div class="box-title">{{ trans('backpack::base.login_status') }}</div>
                </div>

                <div class="box-body">{{ trans('backpack::base.logged_in') }}</div>
            </div>
        </div>
    </div> -->
@endsection




