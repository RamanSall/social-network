<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
|--------------------------------------------------------------------------
| Front End Views
|--------------------------------------------------------------------------
|
*/
Route::get('/', 'ViewController@index')->name('index');
Route::get('/view-gallery', 'ViewController@gallery')->name('gallery');
Route::get('/view-book/{id}', 'ViewController@viewBook')->name('viewBook');
Route::get('/profile/{id}', 'ViewController@profile')->name('profile');

Route::get('/about', function () {
    return view('about');
});


/*
|--------------------------------------------------------------------------
| Authentications Routes
|--------------------------------------------------------------------------
|
*/
Auth::routes();
/*
|--------------------------------------------------------------------------
| Dashboard
|--------------------------------------------------------------------------
|
*/
Route::get('/dashboard', 'HomeController@index')->name('dashboard');
 
Route::group(['middleware' => ['isVerified']], function () {


 
Route::get('/owned-items', 'HomeController@owneditem')->name('owneditem');
Route::get('/sent-requests', 'HomeController@sentReq')->name('sentReq');
Route::get('/received-requests', 'HomeController@receivedReq')->name('receivedReq');
Route::get('/rentals', 'HomeController@rentals')->name('rentals');
Route::get('/borrowals', 'HomeController@borrowals')->name('borrowals');
});

Route::get('/check-notifications', 'HomeController@checkNotifications')->name('checknoti');
Route::post('/set-notifications', 'HomeController@setNotifications')->name('setnoti');
/*
|--------------------------------------------------------------------------
| Country,City
|--------------------------------------------------------------------------
|
*/
// Route::get('/addcountries','CountryController@addCountries');
// Route::get('/addcities','CityController@addCities');
Route::get('/countries','CountryController@Countries')->name('countries');
Route::get('/cities/{id}','CityController@CCities');

/*
|--------------------------------------------------------------------------
| Category,subCategory
|--------------------------------------------------------------------------
|
*/
Route::get('/categories','CategoryController@Categories')->name('categories');
Route::get('/subcategories/{id}','subCategoryController@subCategories');

/*
|--------------------------------------------------------------------------
| Users
|--------------------------------------------------------------------------
|
*/
Route::post('/change-user-image','UserController@ChangeImage')->name('change-user-image');
/*
|--------------------------------------------------------------------------
| Product
|--------------------------------------------------------------------------
|
*/
// Route::get('/products/{skip}/{limit}/{name}','ProductController@getProducts');
// Route::get('/userproducts/{id}','ProductController@getProductsUser');
Route::get('/userproducts/{id}/{limit}','ProductController@getProductsUserLimit');
//Route::get('/userproducts/{id}/{skip}/{limit}','ProductController@getProductsUserSkipLimit');
//Route::get('/userborrowrequest/{id}/{skip}/{limit}','ProductController@getBorrowRequestProducts');
// Route::get('/userlentproducts/{id}/{skip}/{limit}','ProductController@getLentProducts');
// Route::get('/userborrowedproducts/{id}/{skip}/{limit}','ProductController@getBorrowedProducts');
Route::post('/addproduct','ProductController@addProduct')->name('addproduct');
Route::post('/deleteproduct','ProductController@delProduct')->name('deleteproduct');

/*
|--------------------------------------------------------------------------
| Product Request
|--------------------------------------------------------------------------
|
*/
Route::post('/reqborrow', 'ProductRequestController@borrowReq')->name('reqborrow');
Route::post('/updatereqborrow', 'ProductRequestController@updateBorrowReq')->name('updatereqborrow');
Route::post('/review-book', 'ProductRequestController@review')->name('review');





/*
|--------------------------------------------------------------------------
| Socialite Routes
|--------------------------------------------------------------------------
|
*/
Route::get('auth/facebook', 'Auth\AuthController@redirectToProvider')->name('fblogin');
Route::get('auth/facebook/callback', 'Auth\AuthController@handleProviderCallback');

/*
|--------------------------------------------------------------------------
| Admin Products Routes
|--------------------------------------------------------------------------
|
*/
// Route::get('admin_area', ['middleware' => 'admin', function () {
Route::group(['middleware' => 'isadmin'], function () {

Route::get('admin/product/getApprovedProducts', 'Admin\ProductsController@getApprovedProducts')->name('getApproved');
Route::get('admin/product/getdisapproveProducts', 'Admin\ProductsController@getdisapproveProducts')->name('disApproved');
Route::get('admin/product', 'Admin\ProductsController@getProducts')->name('admindashboard');

Route::get('admin/contact', 'Admin\ContactController@getfeedback')->name('contactashboard');





});

/*
|--------------------------------------------------------------------------
| Admin 
|--------------------------------------------------------------------------
|
*/

Route::get('admin', ['middleware' => 'admin', 'uses' => 'AdminController@index']);

 
 

 Route::get('contact-us', 'ContactUSController@contactUS');
Route::post('contact-us', ['as'=>'contactus.store','uses'=>'ContactUSController@contactUSPost']);