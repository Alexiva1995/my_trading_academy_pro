<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Crypt;
use Auth; 
use DB; 
use Carbon\Carbon; 

// llamado a los modelos
use App\Models\User;
use App\Models\Wallet; 
use App\Models\Anuncio; 
use App\Models\Settings; 
use App\Models\Senales; 
use App\Models\Chat; 
use App\Models\Codigo; 
use App\Models\Push;
use App\Models\SettingsEstructura;
use App\Models\SettingsPunto; 

// llamado a los controlladores
use App\Http\Controllers\IndexController;
use Barryvdh\DomPDF\Facade as PDF;


class SenalesController extends Controller
{
    
    public function senales(){
        
        // TITLE
		view()->share('title', 'SeÃ±ales');
		
		return view('senales.senales');
    }
    
    public function guardarsenales(Request $request){
        
        if(!empty($request->contenido)){
               $senales = new Senales();
               $senales->titulo=$request->titulo;
               $senales->contenido=$request->contenido;
               $senales->save();
        }
               
               $funciones = new IndexController;
               $funciones->msjSistema('Subida con exito', 'success');
               return redirect()->back();       
    }
    
    
    public function historico(){
        
        // TITLE
		view()->share('title', 'Historico de SeÃ±ales');
        
        $senales = Senales::all();
          return view('senales.historico', compact('senales'));
    }
    
    public function cancelar($id){
        
        $archivo = Senales::find($id);
          $archivo->delete();
          
          $funciones = new IndexController;
               $funciones->msjSistema('Eliminado con exito', 'success');
               return redirect()->back(); 
    }
    
    
    public function cambiar($id){
        
        // TITLE
		view()->share('title', 'SeÃ±ales');
		
        $senales = Senales::find($id);
        
        return view('senales.cambiar', compact('senales'));
    }
    
    
    public function update(Request $request){
     
     $senales = Senales::find($request->id); 
     $senales->titulo=$request->titulo;
     $senales->contenido=$request->contenido;
     $senales->save();
     
      $funciones = new IndexController;
               $funciones->msjSistema('Actualizado con exito', 'success');
               return redirect()->back(); 
    }
    
    
    public function descargar($id){
        
        $funciones = new IndexController;
        
       
         $senales = Senales::find($id);
        
        $finales = view('senales.descargar',compact('senales'));
           $pdf =  PDF::loadHTML($finales);
         return $pdf->download($senales->titulo.'.pdf');
    }
    
    
    public function envio($id){
        
        $senales = Senales::find($id);
        
        $usuarios = User::where('status','=','1')->where('ID','!=','1')->get();
        
        foreach($usuarios as $usuario){
        
        $cod = new Codigo();
        $cod->usuario_id = $usuario->ID;    
        $cod->status = 0;
        $cod->codigo = 2;
        $cod->save();
        
        
         
         $push = new Push();
		 $push->titulo='Chat_Publico';
		 $push->body='Nuevos mensajes de Senales';
         $push->iduser = $usuario->ID;
         $push->save();
         }
        
        
        
   $chat = new Chat();
   $chat->contenido = $senales->contenido;
   $chat->origen = Auth::user()->ID;
   $chat->codigo = 2;
   $chat->save();
   
               $funciones = new IndexController;
               $funciones->msjSistema('Publicado con exito', 'success');
               return redirect()->back(); 
    }
    
    
    public function captura(Request $request){
        
        $usuarios = User::where('status','=','1')->where('ID','!=','1')->get();
        
        foreach($usuarios as $usuario){
        
        $cod = new Codigo();
        $cod->usuario_id = $usuario->ID;    
        $cod->status = 0;
        $cod->codigo = 2;
        $cod->save();
        
        
         
         $push = new Push();
		 $push->titulo='Chat_Senales';
		 $push->body='Nuevos mensajes de Senales';
         $push->iduser = $usuario->ID;
         $push->save();
         }
        
        
        
    //remplazar el tama«Ðo de los videos
          $tamano = str_replace('width=', 'width="140";', $request->mensaje);
          
          $contenido = str_replace('height="360', 'height="60;', $tamano);
          
   $chat = new Chat();
   $chat->contenido = $contenido;
   $chat->origen = Auth::user()->ID;
   $chat->codigo = 2;
   $chat->save();
   
               return redirect()->back();
        
    }
    
}