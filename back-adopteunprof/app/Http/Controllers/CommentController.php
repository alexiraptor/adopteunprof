<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\CommentResource;


class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $comments = Comment::all();
        return response([
            'comments' =>
            CommentResource::collection($comments),
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
        $comments = $request->all();

        $validator = Validator::make($comments, [
            'professorID' => 'required|max:50',
            'post_id' => 'required|max:50',
            'comment' => 'required|max:550',
            // 'timestamps' => 'required',
        ]);

        if ($validator->fails()) {
            return response([
                'error' => $validator->errors(),
                'Validation ERROOOOR'
            ]);
        }

        $comments = Comment::create($comments);

        return response([
            'comments' => new
                CommentResource($comments),
            'message' => 'Success'
        ], 200);
    }

    // public function create()
    // {

    // }

    // public function searchByProfessor(Request $request) {

    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        $comment->update($request->all());

        return response(['comments' => new
        commentResource($comment), 'message' => 'Success!'], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Professor  $professor
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment)
    {
        return response(['commment' => new CommentResource($comment), 'message' => 'Success'], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Annonces  $professor
     * @return \Illuminate\Http\Response
     */

    public function destroy(Comment $comment)
    {
        $comment->delete();

        return response(['message' => 'Commentaire supprimé']);
    }
}
