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

    </style>
@endpush

@section('content')

<div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
    <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
      <div id="mainSlider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item  active ">
              <div class="overlay"></div>
                  <img src="{{ asset('images/home2.png') }}" class="d-block w-100" alt="...">
                   <div class="carousel-caption">
                        <div class="col-md-8">
                          <h3 class="estiloacademia text-left font-weight-bold mb-4">ESTAS MÁS CERCA DE CONVERTIRTE EN TRADER PROFESIONAL</h3 class="text-left">
                          <div class="" style="margin-top:70px;">
                          <a href="" class="btn btn-danger btn-lg">REGISTRARSE</a>
                          </div>
                        </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

<!--ULTIMAS LECCIONES-->
<div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <h2 style="color:#ED254E">LECCIONES RECOMENDADAS</h2>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="row">
                           <div class="col-md-4 pr-1" style="margin-top: 20px;">
                                    <img src="{{ asset('uploads/images/courses/lesson/5.jpg') }}" class="card-img-top" alt="...">
                                    <div class="card-img-overlay lesson-overlay h-100 d-table">
                                          <div class="d-table-cell align-middle font-weight-bold">
                                             <h3 class="card-title text-white font-weight-bold">¿QUÉ ES TRADING?</h3>
                                             <h6 class="text-white">NOMBRE PROFESOR</h6>
                                             <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 5:31</h5>
                                          </div>
                                    </div>
                           </div>

                           
                           <div class="col-md-4 pr-1" style="margin-top: 20px;">
                           <img src="{{ asset('uploads/images/courses/lesson/5.jpg') }}" class="card-img-top" alt="...">
                           <div class="card-img-overlay lesson-overlay h-100 d-table">
                                 <div class="d-table-cell align-middle font-weight-bold">
                                    <h3 class="card-title text-white font-weight-bold">ÚLTIMAS TENDENCIAS</h3>
                                    <h6 class="text-white">NOMBRE PROFESOR</h6>
                                    <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 3:27</h5>
                                 </div>
                           </div>
                           </div>

                           <div class="col-md-4 pr-1" style="margin-top: 20px;">
                           <img src="{{ asset('uploads/images/courses/lesson/5.jpg') }}" class="card-img-top" alt="...">
                           <div class="card-img-overlay lesson-overlay h-100 d-table">
                                 <div class="d-table-cell align-middle font-weight-bold">
                                    <h3 class="card-title text-white font-weight-bold">MENTALIDAD DE INVERSOR</h3>
                                    <h6 class="text-white">NOMBRE PROFESOR</h6>
                                    
                                    <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 1:37</h5>
                                 </div>
                                 
                           </div>
                           </div>

                  </div>
               </div>

            </div>
               <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true" style=""></span>
                  <span class="sr-only">Previous</span>
               </a>
               <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
               </a>
         </div>

      <!--CARRUSEL END-->



</div>

<!--LOS MÁS NUEVO-->
<div class="container-fluid bg-ecosistema py-5">
<div class="new-courses-section-title mb-2">
                <h3 style="font-weight: 800;color:#00C65B;">LOS MÁS NUEVOS</h3>
        </div>
        <div class="row align-items-center justify-content-center">
            <div class="col-md-3 mb-2">
                    <div class="card card-no-background">
                            <img src="{{ asset('images/3.jpg') }}" alt="conexión" class="img-fluid img-lo-nuevo">
                            <div class="card-img-overlay lo-nuevo-text">
                              <h3 class="text-white">NOMBRE DEL CURSO</h3>
                                <h5 class="text-white">NOMBRE PROFESOR</h5>
                                <h5 class="text-white"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 1:37</h5>
                            </div>
                    </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="card card-no-background">
                        <img src="{{ asset('images/1.jpg') }}" alt="innovación" class="img-fluid img-lo-nuevo">
                        <div class="card-img-overlay lo-nuevo-text">
                                <h3 class="text-white">NOMBRE DEL CURSO</h3>
                                <h5 class="text-white">NOMBRE PROFESOR</h5>
                                <h5 class="text-white"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 1:37</h5>
                        </div>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="card card-no-background">
                        <img src="{{ asset('images/4.jpg') }}" alt="crecimiento" class="img-fluid img-lo-nuevo">
                        <div class="card-img-overlay lo-nuevo-text">
                                <h3 class="text-white">NOMBRE DEL CURSO</h3>
                                <h5 class="text-white">NOMBRE PROFESOR</h5>
                                <h5 class="text-white"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp 1:37</h5>
                        </div>
                </div>
            </div>
        </div>

        <div class="col-md-3 offset-md-5 mt-4 mb-4">
           <a href="#" class="btn btn-danger btn-lg">REGISTRARSE</a>
        </div>

</div>

<!--END LOS MÁS NUEVO-->

<!--CATEGORIAS-->
<div class="container-fluid bg-ecosistema py-5" style="background:#EFEFEF;">
<div class="new-courses-section-title mb-2">
                <h3 class="font-weight-bold" style="color:#00C65B;">CATEGORÍAS</h3>
        </div>
        <div class="row align-items-center justify-content-center">
            <div class="col-md-3 mb-2">
                    <div class="card card-no-background">
                            <img src="{{ asset('images/3.jpg') }}" alt="conexión" class="img-fluid img-lo-nuevo categoria-card">
                            <div class="card-img-overlay categoria-text text-center">
                                 <h6 class="text-white">PRINCIPIANTE</h6>
                                 <a href="" class="btn btn-danger">VER MÁS</a>
                            </div>
                    </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="card card-no-background">
                        <img src="{{ asset('images/1.jpg') }}" alt="innovación" class="img-fluid img-lo-nuevo categoria-card">
                        <div class="card-img-overlay categoria-text text-center">
                                <h6 class="text-white">TENDENCIAS</h6>
                                <a href="" class="btn btn-danger">VER MÁS</a>
                        </div>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="card card-no-background">
                        <img src="{{ asset('images/4.jpg') }}" alt="crecimiento" class="img-fluid img-lo-nuevo categoria-card">
                        <div class="card-img-overlay categoria-text text-center">
                                <h6 class="text-white">HERRAMIENTAS</h6>
                                <a href="" class="btn btn-danger">VER MÁS</a>
                        </div>
                </div>
            </div>
            <div class="col-md-3 mb-2">
                <div class="card card-no-background">
                        <img src="{{ asset('images/2.jpg') }}" alt="crecimiento" class="img-fluid img-lo-nuevo categoria-card">
                        <div class="card-img-overlay categoria-text text-center">
                                <h6 class="text-white">INVERSIONES</h6>
                                <a href="" class="btn btn-danger">VER MÁS</a>
                        </div>
                </div>
            </div>

        </div>

</div>

<!--END CATEGORIAS-->

<!--TESTIMONIOS-->

<div class="container-fluid py-5" style="background:#ED254E;">
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
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
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
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
                              </div>
                              </div>
                     </div>
                     <div class="col-md-3 mb-2">
                           <div class="card card-testimonios">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                                 <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                 <img class="mx-auto"
                        src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                                 <h5 class="text-center">Nombre Estudiante</h5>
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
