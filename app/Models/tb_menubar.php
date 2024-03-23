<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tb_menubar extends Model
{
    use HasFactory;
    protected $table = 'tb_menubar';
    
    protected $fillable = [
        'menu',
        'parent',
        'sort',
        'deskripsi',
        'is_dropdow',
        'link',
        'created_at',
        'updated_at'
    ];
}
