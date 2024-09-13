<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\UserController;

Route::get('/users', [UserController::class, 'index']);       // Get all users
Route::get('/users/{id}', [UserController::class, 'show']);    // Get a single user by ID
Route::post('/users', [UserController::class, 'store']);       // Create a new user
Route::put('/users/{id}', [UserController::class, 'update']);  // Update an existing user
Route::delete('/users/{id}', [UserController::class, 'destroy']); // Delete a user

Route::get('/', function () {
    return view('welcome');
});
