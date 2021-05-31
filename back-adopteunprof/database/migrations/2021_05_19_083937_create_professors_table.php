<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfessorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('professors', function (Blueprint $table) {
            $table->id();
            $table->string('userID');
            $table->longText('avatar')->nullable();
            $table->integer('professorID');
            $table->string('firstname');
            $table->string('lastname');
            $table->string('age');
            $table->string('adresse');
            $table->string('phone');
            $table->string('matieres');
            $table->string('description');
            $table->string('information_bancaire');
            $table->string('annoncesID')->default('1');
            $table->string('cours')->default('en attente');
            $table->string('notes')->default('none');
            $table->string('commentaires')->default('pas encore de commantaire');
            $table->string('historique_cours')->default('pas de cours actuellement');
            $table->string('historique_paiement')->default('pas de paiement actuellement');
            $table->string('archives_conversation')->default('pas de message encore');
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
        Schema::dropIfExists('professors');
    }
}
