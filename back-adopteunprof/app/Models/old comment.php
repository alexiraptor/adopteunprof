<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Blueprint;

class Comment extends Model

{

    use HasFactory;

    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('professor_id');
            $table->string('comment');
            $table->timestamps();
        });
    }
    
}
