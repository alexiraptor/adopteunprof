<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\UserAuthController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ProfessorController;
use App\Http\Controllers\AnnoncesController;
use Laravel\Socialite\Facades\Socialite;
// use App\Http\Resources\CommentResource;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// GET COMMENTS:
Route::get('/comments/{id}', [StudentController::class, 'showcomment']);

// GET INFOS //
Route::get('/user/{id}', [UserAuthController::class, 'showuser']);
Route::get('/prof/{id}', [UserAuthController::class, 'showprof']);
Route::get('/stud/{id}', [UserAuthController::class, 'showstud']);

// ROUTES LOGIN USER //
Route::post('/register', [UserAuthController::class, 'register']);
Route::post('/login', [UserAuthController::class, 'login']);
Route::get('/ratings/{id}', [ProfessorController::class, 'showrate']);

// ROUTES CRUD USER //
Route::get('/users', [UserAuthController::class, 'index']);
Route::post('/users', [UserAuthController::class, 'store']);
Route::put('/users/{user}', [UserAuthController::class, 'update']);
Route::delete('users/{user}', [UserAuthController::class, 'destroy']);

Route::apiResource('/comments', CommentController::class)->middleware('auth:api');

Route::apiResource('/student', StudentController::class)->middleware('auth:api');
Route::apiResource('/student/products', ProductsController::class)->middleware('auth:api');


Route::apiResource('/professor', ProfessorController::class)->middleware('auth:api');

Route::apiResource('/professor/annonces', AnnoncesController::class)->middleware('auth:api');
Route::apiResource('/annonces', AnnoncesController::class)->middleware('auth:api');

// Paypal 

Route::post('/paypal', [PaymentController::class, 'createPayment'])->name('paypal');
Route::get('/status', [PaypalController::class, 'executePaypal'])->name('status');
