@extends('layouts.landing')

@push('styles')
    <style>
    .containerscale:hover{
        transform: scale(1.1);
        z-index: 9;
       }
    
    .aumento{
       font-weight: 700;
       font-size: 18px;
    }
    .carousel-indicators li {
    border-radius: 12px;
    width: 12px;
    height: 12px;
    background-color: #696969!important;
    border-radius: 50%;
   }

   .overlay-trader {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;
    cursor: pointer;
}
    </style>
@endpush

@section('content')

<div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px; margin-top: 200px;">
    <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
      <div id="mainSlider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item  active ">
              <div class="overlay"></div>
                  <img src="{{ asset('images/Trading/01.jpg') }}" class="d-block w-100" alt="...">
                   <div class="carousel-caption">
                        <div class="col-md-8">
                          <h3 class="tranding text-left font-weight-bold mb-4">TRADING SOCIAL</h3 class="text-left">
                        </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

<!--PHONE-->
<div class="col-md-12 py-5" style="background-color: #FFFFFF;">
<div class="row align-items-center justify-content-center">
  <div class="col-md-4">
  <img src="{{ asset('images/Trading/02.jpg') }}" class="img-fluid" alt="...">
  </div>
  <div class="col-md-6 text-right">
    <h4 style="color:#111329;">Copia Traders más Experimentados y Genera ingresos automáticamente</h4>
    <h5 style="color:#777777;">No importa si eres un trader experimentado o recién comienzas, encontrarás todo el material necesario para llevar tu trading al próximo nivel.</h5>
    <a href="#" class="btn btn-danger btn-lg">QUIERO SER PARTE</a>
  </div>


</div>

</div>
<!--END PHONE-->

<!--COMPARTE-->
<div class="col-md-12 py-5" style="background-color: #EFEFEF;">
<h3 class="text-center" style="color:#777777; margin-bottom:30px;">Comparte opiniones entre todos los integrantes <br> de la plataforma:</h3>
<div class="row align-items-center justify-content-center">
  <div class="col-md-3">
      <div class="card-no-background card mt-2">
              <img src="{{ asset('images/Trading/gestores.jpg') }}" class="card-share">
              <div class="col-md-7 card-img-overlay d-flex flex-column offset-md-2">
                <a href="#" class="btn btn-success my-auto text-center" style="border: 2px solid #00C65B;border-radius: 11px; background:none!important; color:#00C65B; font-size:20px!important;">Gestores</a>
              </div>
      </div>

  </div>
  <div class="col-md-3">
    <div class="card-no-background card mt-2">
              <img src="{{ asset('images/Trading/inversores.jpg') }}" class="card-share">
              <div class="col-md-7 card-img-overlay d-flex flex-column offset-md-2">
                <a href="#" class="btn btn-success my-auto text-center" style="border: 2px solid #00C65B;border-radius: 11px; background:none!important; color:#00C65B; font-size:20px!important;">Inversores</a>
              </div>
      </div>

  </div>
  <div class="col-md-3">
      <div class="card-no-background card mt-2">
              <img src="{{ asset('images/Trading/seguidores.jpg') }}" class="card-share">
              <div class="col-md-7 card-img-overlay d-flex flex-column offset-md-2">
                <a href="#" class="btn btn-success my-auto text-center" style="border: 2px solid #00C65B;border-radius: 11px; background:none!important; color:#00C65B; font-size:20px!important;">Seguidores</a>
              </div>
      </div>

  </div>
  


</div>

</div>
<!--END COMPARTE-->

<!--CONECTADO-->
<div class="container-fluid bg-ecosistema py-5" style="background:#FFFFFF;">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
              <h4 class="mb-4 pl-5">¡Mantente conectado, sigue a los mejores y accede a grandes oportunidades!</h4>
              <h5 class="pl-5" style="color:#777777;">Descubre las estrategias de los expertos para generar renta con tus activos preferidos.</h5>
          </div>
          <div class="col-md-6">
          <img src="{{ asset('images/Trading/03.jpg') }}" class="img-fluid" alt="...">
          </div>

        </div>

</div>

<!--END CONECTADO-->

<!--TRADER-->
<div class="container-fluid bg-trader py-5">
        <div class="row align-items-center justify-content-center py-5">
            <div class="col-md-4">
              <h1 class="text-white">HACERTE INVERSOR EN TRADER AHORA ES MUY SIMPLE</h1>
            </div>
            <div class="col-md-6"></div>
        </div>

</div>

<!--END TRADER-->


<!--TESTIMONIOS-->

<div class="container-fluid py-5" style="background:#ECECEC!important;">
      <div class="new-courses-section-title mb-2">
                <h1 class="text-center font-weight-bold">TESTIMONIOS</h1>
        </div>
            <!--Carousel Wrapper-->
            <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
               <!--Indicators-->
               <ol class="carousel-indicators">
               <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
               <li data-target="#multi-item-example" data-slide-to="1"></li>
               
               </ol>
               <!--/.Indicators-->

            <!--Slides-->
            <div class="carousel-inner" role="listbox">

            <!--First slide-->
            <div class="carousel-item active">
               <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante1.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante2.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante3.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                  </div><!--END ROW-->
        </div><!--/.First slide-->

                    <!--Second slide-->
                    <div class="carousel-item">
               <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante1.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante2.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/Trading/estudiante3.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center font-weight-bold" style="color:#00C65B;">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                  </div><!--END ROW-->
        </div><!--/.Second slide-->
          
        </div>


        </div>




</div>


<!--END TESTIMONIOS-->

@endsection
