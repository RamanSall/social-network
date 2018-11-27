<?php

namespace App\Http\Controllers\Admin;
use Backpack\CRUD\app\Http\Controllers\CrudController;
 
use Validator;
use Response;
use Illuminate\Support\Facades\Input;
use App\ContactUS; 
use Auth;
 
 



class ContactController extends CrudController
{


    public function getfeedback()
    {


    $data = ContactUS::select('*')->get()->toArray(); 
   
     
        return view('admin/contactus')->with(['city'=>"dfs",'repo'=>"sdf",'data'=>json_encode($data) ]);
    }

   
  

   
}
