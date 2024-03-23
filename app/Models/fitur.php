<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fitur extends Model
{
    use HasFactory;
    protected $table = 'tb_fitur';
    
    protected $fillable = [
        'img',
        'title',
        'deskripsi',
        'created_at',
        'updated_at'
    ];
}
