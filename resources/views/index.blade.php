@extends('layouts.landing')

@section('content')
@if (!Auth::guest())
<div class="title-page-course col-md"><span class="text-white">
    <h3 class="mb-4"><span class="text-white">Hola</span><span class="text-success"> {{Auth::user()->display_name}}</span><span class="text-white"> ¡Nos alegra verte hoy!</span></h3>
</div>
@endif
<div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
    <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
      <div id="mainSlider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item  active ">
              <div class="overlay"></div>
                  <img src="{{ asset('images/home2.png') }}" class="image-fluid d-block w-100" alt="...">
                   <div class="carousel-caption">
                     <div class="col-12 col-md-5">
                     <div class="estilomytranding">My Trading</div>
                     <div class="estilomytrandingtwo">Academy Pro</div>
                     <div class="mt-2 d-none d-sm-none d-md-block"><h5>Aprende las mejores estrategias y conviértete en un experto en operaciones en el mercado de divisas.</h5></div>
                  </div>
                  <div class="text-center" style="margin-top:70px;"> <a href="#" class="btn btn-danger font-weight-bold">QUIERO SER PARTE</a></div>
              </div>
          </div>
        </div>
    </div>
  </div>
</div>

<div class="col-md-12" style="background-color: #FFFFFF;">
<div class="row">
        <div class="col-md-4" style="padding: 50px 50px; text-align: center;">
            <h4>NUEVAS CLASES CADA SEMANA</h4>
         </div>
         <div class="col-md-4" style="padding: 50px 50px; text-align: center;">
            <h4>MASTERCLASS EN VIVO</h4>
         </div>
         <div class="col-md-4" style="padding: 50px 50px; text-align: center;">
          <h4>COMUNIDAD DE APOYO</h4>
         </div>
   </div>
</div>

<div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
    <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
      <div id="mainSlider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item  active ">
              <div class="overlay"></div>
                  <img src="{{ asset('nosotros/nosotros/nosotros.png') }}" class="d-block w-100" alt="...">
                   <div class="carousel-caption">
                     <div class="col-md-4 float-right  h-100 d-table" style="color:#00C65B">
                        <h2 class="d-table-cell align-middle font-weight-bold">
                           EN NUESTRA ACADEMIA APRENDERÁS A APROVECHAR LAS OPORTUNIDADES DEL MERCADO
                        </h2>
                          
                     
                     </div>
                  
              </div>
          </div>
        </div>
    </div>
  </div>
</div>
<!--ULTIMAS LECCIONES-->
<div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <h2 class="text-center">ÚLTIMAS LECCIONES</h2>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="row">
                           <div class="col-md-4 pr-1" style="margin-top: 20px;">
                                    <img src="{{ asset('uploads/images/courses/lesson/5.jpg') }}" class="card-img-top" alt="...">
                                    <div class="card-img-overlay lesson-overlay h-100 d-table">
                                          <div class="d-table-cell align-middle font-weight-bold">
                                             <h3 class="card-title text-white font-weight-bold">¿QUÉ ES TRANDING?</h3>
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

      <div class="text-center pt-5">
         <a href="" class="btn btn-lg btn-success">ACCEDER A LA ACADEMIA</a>
      </div>
</div>
<!--ULTIMAS LECCIONES END-->

<!--SUSCRIBIRSE-->
<div class="container-fluid img-background-suscribe py-5">
<div class="col-md-12">
<div class="row">
        <div class="col-md-6">
            <h3 class="text-white">DESCUBRE LAS MEJORES <br> ESTRATEGIAS DE TRANDING PARA <br> REALIZAR OPERACIONES EXITOSAS</h3>
         </div>
         <div class="col-md-6">
            <form action="">
               <div class="form-group">
                  <input class="form-control input-sm" id="inputsm" type="text" placeholder="Tu Email">
               </div>
               <a type="submit" href="" class="btn btn-lg btn-danger float-right font-weight-bold">SUSCRIBIRME</a>
            </form>
         </div>

   </div>
</div>

</div>

<!--SUSCRIBIRSE END-->

<!--NOTICIAS-->
<div class="container-fluid py-5"  style="background-color: #FFFFFF;">
<h2 class="text-center">NOTICIAS</h2>
<div class="row offset-md-2">
    <div class="col-md-3 mt-4">
            <div class="card card-noticias">
                  <img class="card-img-top" src="{{ asset('images/grupo422.png') }}" alt="Card image cap">
                  <div class="card-body text-center">
                     <h5 class="card-title text-center">Nombre del artículo</h5>
                     <a href="#" class="text-danger font-weight-bold">Ver más</a>
                  </div>
            </div>
    </div>
    <div class="col-md-3 mt-4">
            <div class="card card-noticias">
                  <img class="card-img-top" src="{{ asset('images/grupo422.png') }}" alt="Card image cap">
                  <div class="card-body text-center">
                     <h5 class="card-title text-center">Nombre del artículo</h5>
                     <a href="#" class="text-danger font-weight-bold">Ver más</a>
                  </div>
            </div>
    </div>
    <div class="col-md-3 mt-4">
            <div class="card card-noticias">
                  <img class="card-img-top" src="{{ asset('images/grupo422.png') }}" alt="Card image cap">
                  <div class="card-body text-center">
                     <h5 class="card-title text-center">Nombre del artículo</h5>
                     <a href="#" class="text-danger font-weight-bold">Ver más</a>
                  </div>
            </div>
    </div>
  </div>

</div>
<!--NOTICIAS END-->

<!--HERRAMIENTAS-->
<div class="container-fluid img-background-suscribe py-5">
      <div class="col-md-8 offset-md-2">
         <h3 class="text-center font-weight-bold" style="color: #00C65B;">CON NUESTROS PRODUCTOS Y HERRAMIENTAS PODRÁS DOMINAR LOS MERCADOS FINANCIEROS Y ALCANZAR TU LIBERTAD FINANCIERA</h3 class="text-center">
      </div>
      <div class="text-center" style="margin-top:70px;">
       <a href="" class="btn btn-danger btn-lg">HERRAMIENTAS</a>
      </div>
      

</div>
<!--HERRAMIENTAS END-->

   @if (Session::has('msj'))
      <div class="col-md-12">
         <div class="alert alert-secondary">
            <button class="close" data-close="alert"></button>
            <span>{{Session::get('msj')}}</span>
         </div>
      </div>
   @endif

   @if (Session::has('msj2'))
      <div class="col-md-12">
         <div class="alert alert-danger">
            <button class="close" data-close="alert"></button>
            <span>{{Session::get('msj2')}}</span>
         </div>
      </div>
   @endif


@endsection
