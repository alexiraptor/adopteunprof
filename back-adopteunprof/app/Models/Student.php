<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'userID', 'name', 'age'
        // , 'job', 'salary'
    ];
}