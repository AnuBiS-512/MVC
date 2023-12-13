<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');
route::GET('/Career','App\Http\Controllers\PlayerController@Career')->name('Career');
route::GET('/admin','App\Http\Controllers\PlayerController@admin')->name('admin');
route::GET('/leaderbored','App\Http\Controllers\PlayerController@leaderbored')->name('leaderbored');
route::POST('/Situation','App\Http\Controllers\PlayerController@submitCarrier')->name('submitCarrier');
route::post('/game','App\Http\Controllers\PlayerController@game')->name('game');
route::post('/leader','App\Http\Controllers\PlayerController@leader')->name('leader');
route::get('/admin/{id}','App\Http\Controllers\PlayerController@adminadd')->name('adminadd');
route::post('/adminaddq','App\Http\Controllers\PlayerController@adminaddq')->name('adminaddq');
route::post('/addcareer','App\Http\Controllers\PlayerController@addcareer')->name('addcareer');