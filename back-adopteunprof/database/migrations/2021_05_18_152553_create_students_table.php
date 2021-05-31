<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('userID');
            $table->string('firstname');
            $table->string('lastname');
            $table->longText('avatar')->nullable();
            $table->string('age');
            $table->string('adresse');
            $table->string('phone');
            $table->string('description');
            $table->string('information_bancaire');
            $table->string('cours')->nullable();
            $table->string('hobby')->nullable();
            $table->string('commentaires')->nullable();
            $table->string('historique_cours')->nullable();
            $table->string('historique_paiement')->nullable();
            $table->string('archives_conversation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
