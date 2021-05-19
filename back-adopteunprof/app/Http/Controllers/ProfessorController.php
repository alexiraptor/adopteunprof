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
        return response([ 'professors' => 
        ProfessorResource::collection($professors), 
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
            'userID' => 'required|max:50',
            'name' => 'required|max:50',
            'age' => 'required|max:50'
            // ,
            // 'job' => 'required|max:50',
            // 'salary' => 'required|50'
        ]);

        if($validator->fails()){
            return response(['error' => $validator->errors(), 
            'Validation Error']);
        }

        $professors = Professor::create($data);

        return response([ 'professors' => new 
        professorResource($professors), 
        'message' => 'Success'], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function show(Professor $professors)
    {
        return response([ 'professors' => new 
        ProfessorResource($professors), 'message' => 'Success'], 200);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Professor $professors)
    {
        $professors->update($request->all());

        return response([ 'professors' => new 
        professorResource($professors), 'message' => 'Success'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Professor $professors)
    {
        $professors->delete();

        return response(['message' => 'Professor deleted']);
    }
}
