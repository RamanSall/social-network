@extends('backpack::layout')

@section('header')
 
    <section class="content-header">
      <h1>
       All Feedbacks
      </h1>
      
    </section>
 
 
 

 <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>id</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Feedback</th>
               
            </tr>
        </thead>
        <tbody>
<?php 
$alldata = json_decode($data);
$count= 1;
foreach ($alldata as $value) {    ?>
 
            <tr>
                <td><?php echo @$count ?></td>
                <td><?php echo @$value->name ?></td>
                <td><?php echo@$value->email ?></td>
                <td><?php echo @$value->message ?></td>

            </tr>
           
   
 <?php
 $count++;
}
 
?>
     </tbody>
 <tfoot>
            <tr>
                 <th>id</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Feedback</th>
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




