<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $fillable = [
        'career_id',
        'question',
        'situation',
        'answer_1',
        'points_1',
        'answer_2',
        'points_2',
        'answer_3',
        'points_3',
        'answer_4',
        'points_4',
        'feedback_0',
        'feedback_50',
        'feedback_100',
    ];

    public function career()
    {
        return $this->belongsTo(Career::class);
    }
    public function sessionQuestion()
    {
        return $this->belongsTo(SessionQuestion::class, 'question_id_1', 'id');
    }
}