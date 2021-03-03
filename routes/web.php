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

Route::get('/', 'PagesController@index')->name('home');
Route::get('/about', 'PagesController@about')->name('about');
Route::get('/blog', 'PagesController@blog')->name('blog');
Route::get('/blog/{id}','PagesController@blogView');
Route::get('/careers', 'PagesController@careers')->name('careers');
Route::get('/contact', 'PagesController@contact')->name('contact');
Route::get('/internship', 'PagesController@internship')->name('internships');
Route::get('/services', 'PagesController@services')->name('services');
Route::get('/solutions', 'PagesController@solutions')->name('solutions');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
