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

@push('scripts')
   <script>
      window.onload = function() {
         if(window.innerWidth >= 1800){
            $('.estiloacademia').removeClass('estiloacademia').addClass("estiloacademiabig");
            $('.category-title').addClass("category-title-big");
            $('.category-btn-show-more').addClass("category-btn-show-more-big");
            $('.btn-header-courses').addClass("btn-home-big");
         }
      };
   </script>   
@endpush

@section('content')

   <div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px; margin-top: 200px;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                  <img src="{{ asset('images/Academia/01.jpg') }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption">
                     <div class="col-md-8">
                        <h3 class="estiloacademia text-left font-weight-bold">ESTAS MÁS CERCA DE CONVERTIRTE EN TRADER PROFESIONAL</h3>
                        <div class="d-block d-sm-none d-md-none">
                           @if(Auth::user())
                              <a href="{{route('courses.show.all')}}" class="btn btn-danger btn-sm btn-header-courses">VER TODOS LOS CURSOS</a>
                           @else
                              <a href="{{ route('log').'?act=1' }}" class="btn btn-danger btn-sm btn-header-courses">REGISTRARSE</a>
                           @endif
                        </div>
                        <div class="d-none d-sm-block">
                           @if(Auth::user())
                              <a href="{{route('courses.show.all')}}" class="btn btn-danger btn-lg btn-header-courses">VER TODOS LOS CURSOS</a>
                           @else
                              <a href="{{ route('log').'?act=1' }}" class="btn btn-danger btn-lg btn-header-courses">REGISTRARSE</a>
                           @endif
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

<!--ULTIMAS LECCIONES-->
@if(Auth::user())
  @if($cursosRecomendados->count() > 0)
    <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <h2 style="color:#ED254E">LECCIONES RECOMENDADAS</h2>

      @if($cursosRecomendados->count() > 0)
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="row align-items-center justify-content-center">
                @php $contador=0; @endphp
                @foreach($cursosRecomendados as $course)
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
                          <h5 class="text-white text-play-lesson"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp {{$course->duration}}</h5>
                        </div>
                      </div>
                    </div>
                  @endif
                @endforeach
              </div><!--END ROW-->
            </div>

            @if($cursosRecomendados->count() >= 4)
              <div class="carousel-item">
                <div class="row align-items-center justify-content-center">
                  @php $segundo =0; @endphp
                  @foreach($cursosRecomendados as $course)
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
                            <h6 class="text-white text-uppercase"><a href="{{ url('courses/mentor/'.$course->mentor->ID) }}" class="text-white"> {{$course->mentor->display_name}} </a></h6>
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
                  @foreach($cursosRecomendados as $course)
                    @php $tercero++; @endphp

                    @if($tercero >= 7 && $tercero < 9)
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

          @if($cursosRecomendados->count() >= 3)
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
    </div>
  @endif
@endif


<!--LOS MÁS NUEVO-->
@if ($cursosNuevos->count() > 0)
<div class="container-fluid bg-ecosistema py-5">
<div class="new-courses-section-title mb-2">
                <h3 style="font-weight: 800;color:#00C65B;">LOS MÁS NUEVOS</h3>
        </div>
        <div class="row align-items-center justify-content-center">
        @foreach($cursosNuevos as $cursoNuevo)
            <div class="col-md-3 mb-2">
                    <div class="card card-no-background">
                    <a href="{{ route('courses.show', [$cursoNuevo->slug, $cursoNuevo->id]) }}" class="text-white">
                    @if (!is_null($cursoNuevo->thumbnail_cover))
                            <img src="{{ asset('uploads/images/courses/covers/'.$cursoNuevo->thumbnail_cover) }}" class="img-fluid img-lo-nuevo">
                            @else
                                <img src="{{ asset('uploads/images/courses/covers/default.jpg') }}" class="card-img-top new-course-img" alt="...">
                    @endif
                            <div class="card-img-overlay lo-nuevo-text">
                              <h3 class="text-white"> <a href="{{ route('courses.show', [$cursoNuevo->slug, $cursoNuevo->id]) }}" class="text-white">{{$cursoNuevo->title}}</a></h3>
                                <h5 class="text-white"> <a href="{{ url('courses/mentor/'.$cursoNuevo->mentor->ID) }}" class="text-white">{{$cursoNuevo->mentor->display_name}}</a> </h5>
                                <h5 class="text-white"><i class="fab fa-youtube text-success" style="font-size: 20px!important;"></i>&nbsp {{$cursoNuevo->duration}}</h5>
                            </div>
                    </div>
            </div>
        @endforeach
        </div>

        <div class="col-md-3 offset-md-5 mt-4 mb-4">
        @if(Auth::user())
           <a href="{{route('courses.show.all')}}" class="btn btn-danger btn-lg">VER TODOS LOS CURSOS</a>
        @else
        <a href="{{ route('log').'?act=1' }}" class="btn btn-danger btn-lg">REGISTRARSE</a>
        @endif
        </div>

</div>
@endif

<!--END LOS MÁS NUEVO-->

<!--CATEGORIAS-->
   @if($courses->count() > 0)
      <div class="container-fluid bg-ecosistema py-5" style="background:#EFEFEF;">
         <div class="new-courses-section-title mb-2">
            <h3 class="font-weight-bold" style="color:#00C65B;">CATEGORÍAS</h3>
         </div>
         <div class="row align-items-center justify-content-center">
            @foreach($courses as $course)
               <div class="col-md-3 mb-2">
                  <div class="card card-no-background">
                     @if (!empty($course->cover))
                        <img src="{{ asset('uploads/images/categories/covers/'.$course->cover) }}" class="img-fluid img-lo-nuevo categoria-card">
                     @else
                        <img src="{{ asset('uploads/images/categories/covers/default.png') }}" alt="conexión" class="img-fluid img-lo-nuevo categoria-card">
                     @endif        
                     <div class="card-img-overlay categoria-text text-center">
                        <h5 class="text-white category-title">{{$course->title}}</h5>
                        <a href="{{ url('courses/category/'.$course->id) }}" class="btn btn-danger category-btn-show-more">VER MÁS</a>
                     </div>
                  </div>
               </div>
            @endforeach
         </div>
      </div>
   @endif
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
                        src="{{ asset('images/Academia/estudiante1.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
                        src="{{ asset('images/Academia/estudiante2.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
                        src="{{ asset('images/Academia/estudiante3.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
                        src="{{ asset('images/Academia/estudiante1.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
                        src="{{ asset('images/Academia/estudiante2.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
                        src="{{ asset('images/Academia/estudiante3.jpg') }}" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
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
