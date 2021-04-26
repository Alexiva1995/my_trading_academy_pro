<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';

    protected $fillable = ['uuid', 'membership_id', 'title', 'slug', 'icon', 'cover', 'cover_name'];

    public function membership(){
    	return $this->belongsTo('App\Models\Membership');
    }

    public function courses(){
        return $this->hasMany('App\Models\Course');
    }

    public function events(){
    	return $this->hasMany('App\Models\Events');
    }
}
