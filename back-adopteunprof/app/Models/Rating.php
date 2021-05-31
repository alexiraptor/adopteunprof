<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Rating extends Model
{
    protected $fillable = [
        'userID',
        'professorID',
        'rating',
        'status',
    ];
    public function prof()
    {
        return $this->belongsTo(Professor::class, 'professorID');
    }
}
