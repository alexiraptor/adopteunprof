<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Professor extends Model
{
    protected $fillable = [
        'userID', 'name', 'age'
        // , 'job', 'salary'
    ];
}

