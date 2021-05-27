<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'userID',
        'firstname',
        'lastname',
        'avatar',
        'age',
        'adresse',
        'phone',
        'description',
        'information_bancaire',
        'cours',
        'hobby',
        'commentaires',
        'historique_cours',
        'historique_paiement',
        'archives_conversation'
    ];

    /**
     * Get the user that owns the student profile.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'userID');
    }
}
