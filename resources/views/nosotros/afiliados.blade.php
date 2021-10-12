@extends('layouts.landing')

@push('styles')
   <style>
      .card-testimonios {
         background: #FFFFFF 0% 0% no-repeat padding-box !important;
         border-radius: 30px!important;
         opacity: 1;
      }
   </style> 
@endpush

@section('content')
   <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h3>El programa de <b style="color: #00C65B;">My Trading Academy Pro</b> tiene un modelo que se basa en el marketing de recomendación. .</h3>
         <h5>Nuestro posicionamiento es a través del marketing de recomendación, ganamos solo si tu ganas y haces ganar a tus clientes.</h5>
      </div>
   </div>

   <div class="col-md-12 afiliados-box">
      <div class="row">
         <div class="col-lg-4 col-xs-12 mt-4">
            <div class="box">
               <img src="{{ asset('nosotros/afiliados/registrateblue.svg') }}" alt="" height="50px" width="50px">
               <div class="box-title mt-2">
                  <h4 class="text-primary">Regístrate</h4>
               </div>
               <div class="box-text p-2">
                  <span>No olvides colocar en donde quieres que paguemos tus ganancias...</span>
               </div>
            </div><!--Box end-->
         </div>
         <div class="col-lg-4 col-xs-12 mt-4">
            <div class="box">
               <img src="{{ asset('nosotros/afiliados/capacitateblue.svg') }}" alt="" height="50px" width="50px">
      			<div class="box-title mt-2">
      				<h4 class="text-primary">Decídete</h4>
      			</div>
      			<div class="box-text p-2">
      				<span>Selecciona su membresía y medio de pago...</span>
      			</div>
      		</div><!--Box end-->
         </div>
         <div class="col-lg-4 col-xs-12 mt-4">
            <div class="box">
               <img src="{{ asset('nosotros/afiliados/capacitateblue.svg') }}" alt="" height="50px" width="50px">
               <div class="box-title mt-2">
                  <h4 class="text-primary">Disfruta</h4>
               </div>
               <div class="box-text p-2">
                  <span>Disfruta de todo nuestro contenido online...</span>
               </div>
            </div><!--Box end-->
         </div>
         <div class="col-lg-4 col-xs-12">
            <div class="box">
               <img src="{{ asset('nosotros/afiliados/recomiendanosblue.svg') }}" alt="" height="50px" width="50px">
               <div class="box-title mt-2">
                  <h4 class="text-primary">Recomiéndanos</h4>
               </div>
               <div class="box-text p-2">
                  <span>Recomienda con tu link de referido...</span>
               </div>
            </div><!--Box end-->
         </div>
         <div class="col-lg-4 col-xs-12">
            <div class="box">
               <img src="{{ asset('nosotros/afiliados/dineroblue.svg') }}" alt="" height="50px" width="50px">
      			<div class="box-title mt-2">
      				<h4 class="text-primary">Gana dinero</h4>
      			</div>
      			<div class="box-text p-2">
      				<span>¡Empieza a ganar!</span>
      			</div>
      		</div><!--Box end-->
         </div>
      </div>
   </div>
@endsection
