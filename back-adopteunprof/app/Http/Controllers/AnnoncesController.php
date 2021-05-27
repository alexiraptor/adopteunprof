<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\AnnoncesResource;
use App\Models\Annonces;

class AnnoncesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $annonces = Annonces::all();
        return response([ 'annonces' => 
        AnnoncesResource::collection($annonces), 
        'message' => 'Successful'], 200);
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
            'professorID' => 'required|max:50',
            'matieres' => 'required|max:255',
            'content' => 'required|max:1000',
            'tarifs' => 'required|max:50',
            
            
        ]);

        if($validator->fails()){
            return response(['error' => $validator->errors(), 
            'Validation Error']);
        }

        $annonces = Annonces::create($data);

        return response([ 'annonces' => new 
        AnnoncesResource($annonces), 
        'message' => 'Success'], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Annonces  $annonces
     * @return \Illuminate\Http\Response
     */
    public function show(Annonces $annonce)
    {
        return response(['annonce' => new 
        AnnoncesResource($annonce), 'message' => 'Success'], 200);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Annonces  $annonces
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Annonces $annonce)
    {
        $annonce->update($request->all());

        return response([ 'annonces' => new 
        AnnoncesResource($annonce), 'message' => 'Success'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Annonces  $professor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Annonces $annonces)
    {
        $annonces->delete();

        return response(['message' => 'Annonces deleted']);
    }
}
