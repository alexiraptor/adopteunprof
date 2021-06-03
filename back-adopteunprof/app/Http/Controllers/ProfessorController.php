<?php

namespace App\Http\Controllers;

use App\Models\Professor;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProfessorResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

/**
 * @group Professor management
 * @authenticated
 * APIs for managing Professors
 */
class ProfessorController extends Controller
{
    /**
     * Display a listing of the PROFESSEUR.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $professors = Professor::all();
        return response([
            'professors' =>
            ProfessorResource::collection($professors),
            'message' => 'Successful'
        ], 200);
    }

    /**
     * Store a newly created PROFESSEUR in storage.
     * 
     * @bodyParam userID string required The id of the user. Example: 9
     * @bodyParam firstname string required The firstname of the user. Example: Thomas
     * @bodyParam lastname string required The lastname of the user. Example: Président
     * @bodyParam avatar longText required The avatar of the user.
     * @bodyParam age string required The age of the user. Example: 12
     * @bodyParam adresse string required The adresse of the user. Example: 9 rue Parrot, 75012
     * @bodyParam phone string required The phone of the user. Example: 0632784666
     * @bodyParam matieres string required The matieres of the user. Example: Physique-Chimie
     * @bodyParam description string required The description of the user. Example: Quel BG
     * @bodyParam information_bancaire string required The information_bancaire of the user. Example: Moulaga
     * @bodyParam annoncesID string The annoncesID of the user. Example: 9
     * @bodyParam cours string The cours of the user. Example: Physique-Chimie
     * @bodyParam commentaires string The commentaires of the user. Example: Lol xD
     * @bodyParam historique_cours string The historique_cours of the user. Example: Physique-Chimie
     * @bodyParam historique_paiement string The historique_paiement of the user. Example: Moulaga
     * @bodyParam archives_conversation string The archives_conversation of the user. Example: Blablabla
     * @bodyParam rating int The rating of the user. Example: 4
     * 
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'userID' => 'required|max:50',
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'avatar' => 'max:2000',
            'age' => 'required|max:3',
            'adresse' => 'required|max:150',
            'phone' => 'required|max:10',
            'matieres' => 'required|max:50',
            'description' => 'required|max:500',
            'information_bancaire' => 'required|max:50',
            'annoncesID' => 'max:50',
            'cours' => 'max:50',
            'commentaires' => 'max:255',
            'historique_cours' => 'max:255',
            'historique_paiement' => 'max:255',
            'archives_conversation' => 'max:255',
            'rating' => 'max:50',

        ]);

        if ($validator->fails()) {
            return response([
                'error' => $validator->errors(),
                'Validation Error'
            ]);
        }

        $professors = Professor::create($data);

        return response([
            'professors' => new
                ProfessorResource($professors),
            'message' => 'Success'
        ], 200);
    }

    /**
     * Display the specified PROFESSEUR.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function show(Professor $professor)
    {
        return response(['professor' => new
            ProfessorResource($professor), 'message' => 'Success'], 200);
    }

    /**
     * Update the specified PROFESSEUR in storage.
     * 
     * @bodyParam firstname string required The firstname of the user. Example: Thomas
     * @bodyParam lastname string required The lastname of the user. Example: Président
     * @bodyParam avatar longText required The avatar of the user.
     * @bodyParam age string required The age of the user. Example: 12
     * @bodyParam adresse string required The adresse of the user. Example: 9 rue Parrot, 75012
     * @bodyParam phone string required The phone of the user. Example: 0632784666
     * @bodyParam matieres string required The matieres of the user. Example: Physique-Chimie
     * @bodyParam description string required The description of the user. Example: Quel BG
     * @bodyParam information_bancaire string required The information_bancaire of the user. Example: Moulaga
     * @bodyParam annoncesID string The annoncesID of the user. Example: 9
     * @bodyParam cours string The cours of the user. Example: Physique-Chimie
     * @bodyParam commentaires string The commentaires of the user. Example: Lol xD
     * @bodyParam historique_cours string The historique_cours of the user. Example: Physique-Chimie
     * @bodyParam historique_paiement string The historique_paiement of the user. Example: Moulaga
     * @bodyParam archives_conversation string The archives_conversation of the user. Example: Blablabla
     * @bodyParam rating int The rating of the user. Example: 4
     * 
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Professor $professor)
    {
        $professor->update($request->all());

        return response(['professors' => new
            professorResource($professor), 'message' => 'Success'], 200);
    }

    /**
     * Remove the specified PROFESSEUR from storage.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Professor $professor)
    {
        $professor->delete();

        return response(['message' => 'Professor deleted']);
    }
}
