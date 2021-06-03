<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Professor extends Model
{
    protected $fillable = [
        'userID',
        //'professorID',
        'firstname',
        'lastname',
        'avatar',
        'age',
        'adresse',
        'phone',
        'matieres',
        'description',
        'information_bancaire',
        'annoncesID',
        'cours',
        // 'notes',
        'commentaires',
        'historique_cours',
        'historique_paiement',
        'archives_conversation',
        'rating',
    ];

    /**
     * Get the user that owns the prof profile.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'userID');
    }
    public function rating()
    {
        return $this->hasOne(Rating::class, 'professorID');
    }
    public function find($note)
    {
        return $note;
    }
}
