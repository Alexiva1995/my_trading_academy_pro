@extends('layouts.landing')

@section('content')

   <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h3>El programa de <b class="text-primary">My Trading Academy Pro</b> tiene un modelo que se basa en el marketing de recomendación. .</h3>
         <h5>Nuestro posicionamiento es a través del marketing de recomendación, ganamos solo si tu ganas y haces ganar a tus clientes.</h5>
      </div>
   </div>


   <div class="col-md-12 afiliados-box" style="background-color: #F5F5F5;">
      <div class="row" style="padding-left: 150px; padding-right: 150px;">
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

   <div class="col-md-12" style="background-color: #F5F5F5;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h1 class="text-primary font-weight-bold">Comisiones Afiliados</h1>
      </div>
   </div>


   <div class="container-fluid" style="background-color: #F5F5F5;">
   	<div class="row">
   		<div class="col-md-12">
   			<div class="row ml-4 mr-4">
   				<div class="col-md-2 pl-0 pr-0">
                  <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                     <div class="card-body text-center">
                       <h5 class="card-title text-white comisiones-card-title nivel-body">Nivel</h5>
                     </div>
                  </div>
   				</div>
   				<div class="col-md-10">
   					<div class="row">
   						<div class="col-md-3 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <h5 class="card-title text-primary comisiones-card-title">Membresía <br> Find</h5>
                              <hr class="com-line-blue">
                              <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                              <p class="card-text">Aplica sobre el costo preferencial</p>
                           </div>
                        </div>
   						</div>
   						<div class="col-md-3 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                           <div class="card-body text-center">
                              <h5 class="card-title text-white comisiones-card-title">Membresía <br> Buy</h5>
                              <hr class="com-line-white">
                              <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                              <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                           </div>
                        </div>
   						</div>
   						<div class="col-md-3 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                           <div class="card-body text-center">
                              <h5 class="card-title text-primary comisiones-card-title">Membresía <br>  Win</h5>
                              <hr class="com-line-blue">
                              <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                              <p class="card-text">Aplica sobre el costo preferencial</p>
                           </div>
                        </div>
   						</div>
   					</div>
   				</div>
   			</div>
   		</div>
   	</div>
   </div>


   <div class="col-md-12" style="background-color: #EDEDED;">
      <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
         <h4 style="color:#818181;letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido.<br> o si lo paga mensual , anual o vitalicio.</h4>
      </div>
   </div>
@endsection
