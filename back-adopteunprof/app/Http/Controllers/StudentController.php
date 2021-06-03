<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Http\Controllers\Controller;
use App\Http\Resources\StudentResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

/**
 * @group Student management
 * @authenticated
 * APIs for managing Students
 */
class StudentController extends Controller
{
    /**
     * Display a listing of the ETUDIANT.
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = Student::all();
        return response([
            'students' =>
            StudentResource::collection($students),
            'message' => 'Successful'
        ], 200);
    }

    /**
     * Store a newly created ETUDIANT in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'userID' => 'required|max:50',
            'firstname' => 'required|max:50',
            'lastname' => 'required|max:50',
            'age' => 'required|max:50',
        ]);

        if ($validator->fails()) {
            return response([
                'error' => $validator->errors(),
                'Validation Error'
            ]);
        }

        $students = Student::create($data);

        return response([
            'students' => new
                StudentResource($students),
            'message' => 'Success'
        ], 200);
    }

    /**
     * Display the specified ETUDIANT.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        return response(['student' => new
            StudentResource($student), 'message' => 'Success'], 200);
    }

    /**
     * Update the specified ETUDIANT in storage.
     * 
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student)
    {
        $student->update($request->all());

        return response(['students' => new
            StudentResource($student), 'message' => 'Success'], 200);
    }

    /**
     * Remove the specified ETUDIANT from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student)
    {
        $student->delete();

        return response(['message' => 'Student deleted']);
    }

    /**
     * Display the COMMENTS linked to the STUDENT account.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function showcomment($id)
    {
        $comment = Student::find($id)->stud;
        return $comment->toJson();
    }
}
