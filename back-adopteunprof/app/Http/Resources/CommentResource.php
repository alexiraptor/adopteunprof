<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
                'professorID' => $this->userID,
                'post_id' => $this->post_id,
                'comment' => $this->comment,
                'timestamps' => $this->timestamps,
        ];
    }
}
