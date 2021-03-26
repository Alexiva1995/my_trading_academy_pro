@extends('layouts.landing')

@push('scripts')
   <script>
      window.onload = function() {
         if(window.innerWidth >= 1800){
            //alert("AQui")
            //$("#estilomytranding").html("Prueba");
            $("#estilomytranding").removeClass('estilomytranding');
            $("#estilomytranding").addClass('estilomytrandingbig');
            $("#estilomytrandingtwo").removeClass('estilomytrandingtwo');
            $("#estilomytrandingtwo").addClass('estilomytrandingtwobig');
            $("#estilomytrandingtext").addClass('estilomytrandingtext');
            $("#btn-home").addClass('btn-home-big');
         }
         //alert(window.innerWidth); 
      };

      if ({{$modalVisitante}} == 1){
         $('#visitante-modal').modal();
      }
   </script>   
@endpush

@section('content')
   @if (!Auth::guest())
      <div class="title-page-course col-md"><span class="text-white">
         <h3 class="mb-4"><span class="text-white">Hola</span><span class="text-success"> {{Auth::user()->display_name}}</span><span class="text-white"> ¡Nos alegra verte hoy!</span></h3>
      </div>
   @endif
   <div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-top: 150px; margin-bottom: 0px; padding-bottom: 0px;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                     <img src="{{ asset('images/Home/header.jpg') }}" class="image-fluid d-block w-100" alt="...">
                     <div class="carousel-caption">
                        <div class="col-12 col-md-5">
                        <div class="estilomytranding" id="estilomytranding">My Trading</div>
                        <div class="estilomytrandingtwo" id="estilomytrandingtwo">Academy Pro</div>
                        <div class="mt-2 m d-none d-sm-none d-md-block"><h5 id="estilomytrandingtext">Aprende las mejores estrategias y conviértete en un experto en operaciones en el mercado de divisas.</h5></div>
                     </div>
                     <div class="text-center btn-home"> <a href="{{ route('log').'?act=1' }}" class="btn btn-danger btn-lg font-weight-bold" id="btn-home">QUIERO SER PARTE</a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <div class="row" style="padding-left:50px!important; padding-right:50px!important;">
         <div class="col-md-1 text-center mt-2">
            <img src="{{ asset('images/Home/icon1.png') }}" alt="conexión" class="text-white my-auto text-center" height="70px">
         </div>
         <div class="col-md-3 text-center mt-2">
            <h4>NUEVAS CLASES CADA SEMANA</h4>  
         </div>
         <div class="col-md-1 text-center mt-2">
            <img src="{{ asset('images/Home/icon2.png') }}" alt="conexión" class="text-white my-auto text-center" height="70px">
         </div>
         <div class="col-md-3 text-center mt-2">
            <h4>MASTERCLASS <br> EN VIVO</h4>
         </div>
         <div class="col-md-1 text-center mt-2">
            <img src="{{ asset('images/Home/icon3.png') }}" alt="conexión" class="text-white my-auto text-center" height="70px">
         </div>
         <div class="col-md-3 text-center mt-2">
            <h4>COMUNIDAD <br> DE APOYO</h4>
         </div>
      </div>
   </div>

   <div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                  <img src="{{ asset('images/Home/02.jpg') }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption">
                     <div class="col-md-4 float-right  h-100 d-table" style="color:#00C65B">
                        <h2 class="d-table-cell align-middle font-weight-bold text-nuestra-academia">
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
   @if($ultimos_cursos->isNotEmpty())
      <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
         <h2 class="text-center">ÚLTIMAS LECCIONES</h2>
         @if(!Empty($ultimos_cursos))
            <!--Carrusel-->
            @if($ultimos_cursos->count() > 0)
               <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row align-items-center justify-content-center">
                           @php $contador=0; @endphp
                           @foreach($ultimos_cursos as $course)
                              @php $contador++; @endphp
                              @if($contador <= 3)
                                 <div class="col-md-3 mb-2">
                                    @if (!empty($course->thumbnail_cover))
                                       <img src="{{ asset('uploads/images/courses/covers/'.$course->thumbnail_cover) }}" class="card-img-top" alt="...">
                                    @else
                                       <img src="{{ asset('uploads/images/courses/covers/default.jpg') }}" class="card-img-top" alt="...">
                                    @endif
                                    <div class="card-img-overlay lesson-overlay h-100 d-table">
                                       <div class="d-table-cell align-middle font-weight-bold">
                                          <h3 class="card-title text-white font-weight-bold text-uppercase"><a href="{{ route('courses.show', [$course->slug, $course->id]) }}" class="text-white">{{$course->title}}</a></h3>
                                          <h6 class="text-white text-uppercase"><a href="{{ url('courses/mentor/'.$course->mentor->ID) }}" class="text-white"> {{$course->mentor->display_name}} </a></h6>
                                          <div style="margin-top: 20px;">
                                             <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp {{$course->duration}}</h5>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              @endif
                           @endforeach
                        </div><!--END ROW-->
                     </div>

                     @if($ultimos_cursos->count() >= 4)
                        <div class="carousel-item">
                           <div class="row align-items-center justify-content-center">
                              @php $segundo =0; @endphp
                              @foreach($ultimos_cursos as $course)
                                 @php $segundo++; @endphp

                                 @if($segundo >= 4 && $segundo <= 6)
                                    <div class="col-md-3 mb-2">
                                       @if (!empty($course->thumbnail_cover))
                                          <img src="{{ asset('uploads/images/courses/covers/'.$course->thumbnail_cover) }}" class="card-img-top" alt="...">
                                       @else
                                          <img src="{{ asset('uploads/images/courses/covers/default.jpg') }}" class="card-img-top" alt="...">
                                       @endif
                                       <div class="card-img-overlay lesson-overlay h-100 d-table">
                                          <div class="d-table-cell align-middle font-weight-bold">
                                             <h3 class="card-title text-white font-weight-bold text-uppercase"><a href="{{ route('courses.show', [$course->slug, $course->id]) }}" class="text-white">{{$course->title}}</a></h3>
                                             <h6 class="text-white text-uppercase">{{$course->mentor->display_name}}</h6>
                                             <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp {{$course->duration}}</h5>
                                          </div>
                                       </div>
                                    </div>
                                 @endif
                              @endforeach
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="row align-items-center justify-content-center">
                              @php $tercero =0; @endphp
                              @foreach($ultimos_cursos as $course)
                                 @php $tercero++; @endphp

                                 @if($tercero >= 7 && $tercero <= 9)
                                    <div class="col-md-3 mb-2">
                                       @if (!empty($course->thumbnail_cover))
                                          <img src="{{ asset('uploads/images/courses/covers/'.$course->thumbnail_cover) }}" class="card-img-top" alt="...">
                                       @else
                                          <img src="{{ asset('uploads/images/courses/covers/default.jpg') }}" class="card-img-top" alt="...">
                                       @endif
                                       <div class="card-img-overlay lesson-overlay h-100 d-table">
                                          <div class="d-table-cell align-middle font-weight-bold">
                                             <h3 class="card-title text-white font-weight-bold text-uppercase"><a href="{{ route('courses.show', [$course->slug, $course->id]) }}" class="text-white">{{$course->title}}</a></h3>
                                             <h6 class="text-white text-uppercase">{{$course->mentor->display_name}}</h6>
                                             <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp {{$course->duration}}</h5>
                                          </div>
                                       </div>
                                    </div>
                                 @endif
                              @endforeach
                           </div>
                        </div>
                     @endif
                  </div>

                  @if($ultimos_cursos->count() >= 3)
                     <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <i class="fas fa-chevron-left fa-2x" style="color:black; font-weight: bold"></i>
                        <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <i class="fas fa-chevron-right fa-2x" style="color:black; font-weight: bold"></i>
                        <span class="sr-only">Next</span>
                     </a>
                  @endif
               </div>
            @endif
            <!--Carrusel-->
         @endif

         <!--CARRUSEL END-->
         <div class="text-center pt-5">
            @if(Auth::user())
               <a href="{{route('step2')}}" class="btn btn-lg btn-success">ACCEDER A LA ACADEMIA</a>
            @else
               <a href="{{ route('log').'?act=0' }}" class="btn btn-lg btn-success">ACCEDER A LA ACADEMIA</a>
            @endif
         </div>
      </div>
   @endif
   <!--ULTIMAS LECCIONES END-->

{{-- SECCIÓN RECOMENDACIONES--}}


{{--FIN SECCIÓN RECOMENDACIONES--}}



<!--SUSCRIBIRSE-->
<div class="container-fluid img-background-suscribe py-5">
<div class="col-md-12">
      @if (Session::has('msj-exitoso'))
			<div class="alert alert-success">
				<strong>{{ Session::get('msj-exitoso') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
			</div>
		@endif

		@if (Session::has('msj-erroneo'))
			<div class="alert alert-danger">
				<strong>{{ Session::get('msj-erroneo') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
			</div>
		@endif
<div class="row">
        <div class="col-md-6">
            <h3 class="text-white">DESCUBRE LAS MEJORES <br> ESTRATEGIAS DE TRADING PARA <br> REALIZAR OPERACIONES EXITOSAS</h3>
         </div>
         <div class="col-md-6">
            <form action="{{ route ('subscriptions') }}" method="POST">
            {{ csrf_field() }}
               <div class="form-group">
                  <input class="form-control input-sm" id="email" type="email" name="email" placeholder="Tu Email" required>
               </div>
               <button type="submit" href="" class="btn btn-lg btn-danger float-right font-weight-bold">SUSCRIBIRME</button>
            </form>
         </div>

   </div>
</div>

</div>

<!--SUSCRIBIRSE END-->

<!--NOTICIAS-->
@if($articulos->count() > 0)
<div class="container-fluid py-5"  style="background-color: #FFFFFF;">
<h2 class="text-center">NOTICIAS</h2>
<div class="row offset-md-2">
   @foreach($articulos as $articulo)
    <div class="col-md-3 mt-4">
            <div class="card card-noticias">
                  <img class="card-img-top" src="{{ asset('uploads/entradas/'.$articulo->imagen_destacada) }}" alt="Card image cap" style="height: 300px;">
                  <div class="card-body text-center">
                     <h5 class="card-title text-center" style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">{{$articulo->titulo}}</h5>
                     <a href="{{ route('blog.articulo', $articulo->id) }}" class="text-danger font-weight-bold">Ver más</a>
                  </div>
            </div>
    </div>
    @endforeach
  </div><!--END ROW-->

</div>
@endif
<!--NOTICIAS END-->

<!--HERRAMIENTAS-->
<div class="container-fluid img-background-herramientas py-5">
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

   <div class="modal fade" id="visitante-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel" style="color:white;">REGÍSTRATE AHORA</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body text-white pl-5 pr-5 text-center">
                    Te encuentras en modo visitante.<br>
                    Para disfrutar de nuestro contenido a precio preferencial ingresa en este botón.
                    <br><br>
                    <a type="button" class="btn btn-primary btn-register-header d-md-block m-2" href="{{ route('log').'?act=1' }}">REGISTRO</a>
                </div>
            </div>
        </div>
    </div> 
@endsection
