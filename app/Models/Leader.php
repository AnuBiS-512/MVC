<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Leader extends Model
{
    use HasFactory;
    
    protected $fillable = ['full_name','points','id_session_question'];
    protected $table = 'leaders';
    public function session()
    {
        return $this->hasMany(SessionQuestion::class, 'id', 'id_session_question');
    }
}
