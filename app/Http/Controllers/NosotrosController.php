<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Crypt;
use DB;
use Auth;
use Session;
use Carbon\Carbon;
// llamada a los modelos
use App\Models\Rol;
use App\Models\User;
use App\Models\Wallet;
use App\Models\Monedas;
use App\Models\Settings;
use App\Models\Contenido;
use App\Models\Commission;
use App\Models\SettingsEstructura;
use App\Models\Pagocarrito;
use App\Models\Entradas;
// controlador
use App\Http\Controllers\TiendaController;
use App\Http\Controllers\WalletControler;


class NosotrosController extends Controller
{
	public function gratis(){
		return view('nosotros.gratis');
	}

	public function step1(){

		return view('nosotros.step1');
	}

	public function step2(){

		return view('nosotros.step2');
	}

	public function step3(){

        $entradas = Entradas::all();

		return view('nosotros.blog', compact('entradas'));
	}

    public function articulo($entrada_id){
        $articulo = Entradas::find($entrada_id);

        return view('nosotros.articulo', compact('articulo'));
	}
	

	public function afiliados(){
    

        return view('nosotros.afiliados');
	}
	
	public function inversiones(){
    

        return view('inversiones.inversiones');
	}
	
	public function tranding_social(){
    

        return view('nosotros.step3');
    }

    public function comisiones(){
    

        return view('nosotros.commissions');
	}

	public function coaches(){
    

        return view('nosotros.coaches');
	}
}
