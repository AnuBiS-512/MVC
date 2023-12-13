<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SessionQuestion extends Model
{
    use HasFactory;
    protected $table = 'session_question';

    protected $fillable = []; 
    public function questions()
    {
        return $this->hasMany(Question::class, 'id', 'question_id_1');
    }
}
