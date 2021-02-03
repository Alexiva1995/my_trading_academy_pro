<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Senales extends Model
{

protected $table = "senales";


    protected $fillable=[
    	'titulo','contenido','iduser'
    ];

}