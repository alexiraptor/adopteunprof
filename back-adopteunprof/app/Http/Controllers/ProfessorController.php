<?php

namespace App\Http\Controllers;

use App\Models\Professor;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProfessorResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProfessorController extends Controller
{
    /**
     * Display a listing of the resource.
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
     * Store a newly created resource in storage.
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
            'notes' => 'max:50',
            'commentaires' => 'max:255',
            'historique_cours' => 'max:255',
            'historique_paiement' => 'max:255',
            'archives_conversation' => 'max:255'

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
     * Display the specified resource.
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
     * Update the specified resource in storage.
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
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Professor $professor)
    {
        $professor->delete();

        return response(['message' => 'Professor deleted']);
    }

    public function showrate($id)
    {
        $rate = Professor::find($id)->rating;
        // dd($rate);
        return $rate->toJson();
    }
}
