<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'professorID',
        'post_id',
        'comment',
        'studentID',
        'timestamps',
    ];

    public function showcom()
    {
        return $this->belongsTo(Student::class, 'studentID');
    }
}