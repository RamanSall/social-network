<?php

namespace App\Http\Controllers\Admin;
use Backpack\CRUD\app\Http\Controllers\CrudController;

use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
// use Intervention\Image\Image as Image; 
use Validator;
use Response;
use Illuminate\Support\Facades\Input;
use App\Product;
use App\Product_Request;
use Auth;
use App\User;
 use Illuminate\Contracts\Auth\Guard;



class ProductsController extends CrudController
{



    //  public function __construct(Guard $auth)
    // {
    //         $this->middleware(function ($request, $next) {
    //         $this->user = auth()->user();
    //             if($this->user->role == 'admin'){
    //                 return redirect()->route('login')->with('error',"You don't have an access");

    //             }else{
                    
    //             }
    //      // return $next($request);
    //     });
       
    // }




    public function getProducts()
    {


    $data = Product::select('products.id','products.name','products.author' ,'products.sub_category_id', 'products.approved' ,'products.image','products.user_id','sub_categories.name as category_name','users.city_id','users.name as owner_name','cities.name as city')
        ->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')
        ->join('users', 'products.user_id', '=', 'users.id')
        ->join('cities','users.city_id','cities.id')->where('products.approved','==','0')->get()->toArray();
        // ->where('products.status','==','1')->where('products.viewstatus','==','1');
     
        // if(is_numeric($city_id))
            // $data=$data->where('city_id',$city_id);

        // if(is_numeric($sub_category_id))
        //     $data=$data->where('products.sub_category_id',$sub_category_id);
  
        // if($name != 'null') {
        //     // $sub_categories = $data->where('sub_categories.name', 'LIKE', '%'.$name.'%');
        //     // $cities=$data->where('cities.name', 'LIKE', '%'.$name.'%');
        //     $data = $data->where('products.name', 'LIKE', '%'.$name.'%');
        // }
        
        // $data=$data->orderBy('id','DESC')->skip($skip)->take($limit)->paginate(15);
        
        // if( !$data->first() ) {
        //     if( $name != 'null' )
        //         $data=array('msg'=>'Sorry No Data Found.','searched'=>'1');
        //     else
        //         $data=array('msg'=>'The End.','searched'=>'0');
        // }
       
     
        return view('admin/product')->with(['city'=>"dfs",'repo'=>"sdf",'data'=>json_encode($data) ]);
    }

    public function getProductsUser($id)
    {
    	$data = Product::select('products.id','products.name','products.sub_category_id','products.image','products.user_id','sub_categories.name as category_name')->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')->where('products.status','1')->where('products.user_id',$id)->orderBy('id','DESC')->get();
    	return json_encode($data);
    }

    public function getProductsUserLimit($id,$limit)
    {
        $data = Product::select('products.id','products.name','products.sub_category_id','products.image','products.user_id','sub_categories.name as category_name')->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')->where('products.status','1')->where('products.user_id',$id)->orderBy('id','DESC')->limit($limit)->get();
        return json_encode($data);
    }

    public function getApprovedProducts(){
       $id= base64_decode($_GET['id'] ) ; 

       Product::where('id', $id)->update(['approved' => 1]);
       return redirect('admin/product');
    }

    public function getdisapproveProducts(){
       $id= base64_decode($_GET['id'] ) ; 

       Product::where('id', $id)->update(['approved' => 2]);
       return redirect('admin/product');
    }

    // public function getProductsUserSkipLimit($id,$skip,$limit)
    // {
    //     $data = Product::select('products.id','products.name','products.sub_category_id','products.image','products.user_id','sub_categories.name as category_name')->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')->where('products.status','1')->where('products.user_id',$id)->orderBy('id','DESC')->skip($skip)->take($limit)->get();

    //     if( !$data->first() )
    //         $data=array('msg'=>'The End.');

    //     return json_encode($data);
    // }

 
  




    // public function delProduct(Request $req)
    // {
    //     $json['deleted'] = 'false';
        
    //     if(Auth::check())
    //     {
    //         $checkData = Product::where('id',$req->id)->where('user_id',Auth::user()->id)->get();
    //         if($checkData->first())
    //         {
    //             $vdata = Product_Request::where('product_id',$req->id)->where('status',1)->get();

    //             if($vdata->first())
    //                 $json['error'] = 'First take back this item from borrower.';
    //             else
    //             {
    //                 $data = Product::find($req->id);
    //                 $data->status = 0;
    //                 $data->save();
    //                 $json['deleted'] = 'true';
    //             }
    //         }
    //         else
    //             $json['error'] = 'Can not delete others item.';
    //     }
    //     else
    //         $json['error'] = 'Can not delete this item. Incorrect credentials.';

    //     return json_encode($json);
    // }
}
