<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return inertia('Welcome');
});

Route::get('/dashboard', function () {
    return inertia('Dashboard/Index');
});

Route::get('/users', [UserController::class, 'index'])->name('users.index');
