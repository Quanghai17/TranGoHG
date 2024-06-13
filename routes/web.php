<?php

use Illuminate\Support\Facades\Route;

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

Route::group([], function () {
    Route::get('/', [\App\Http\Controllers\Frontend\HomeController::class,'index'])->name('home');
    Route::resource('/products', App\Http\Controllers\ProductController::class);
    Route::resource('/projects', App\Http\Controllers\ProjectController::class);
    Route::resource('/posts', App\Http\Controllers\PostController::class);
    Route::get('/about', [\App\Http\Controllers\AboutController::class,'index'])->name('about');
    Route::get('/page', [\App\Http\Controllers\Frontend\PageController::class,'index']);
    Route::get('/contact', "\App\Http\Controllers\ContactController@index")->name('contact');
    Route::post('/feedback', "\App\Http\Controllers\FeedbackController@store")->name('feedback');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
