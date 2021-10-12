@extends('layouts.landing')

@push('styles')
   <style>
      input[type="radio"] {
         display: none;
      }
      label {
         color: grey;
      }
      .rating {
         direction: rtl;
         unicode-bidi: bidi-override;
      }
      label:hover,
      label:hover ~ label {
         color: orange;
      }
      input[type="radio"]:checked ~ label {
         color: orange;
      }
      .cuadrado{
         outline: 1px solid #2A91FF;
      }
   </style>
@endpush

@section('content')
   @if (Session::has('msj-exitoso'))
      <div class="alert alert-success" style="margin: 5px 15px;">
         {{ Session::get('msj-exitoso') }}
      </div>
   @endif

   @if (Session::has('msj-erroneo'))
      <div class="alert alert-danger" style="margin: 5px 15px;">
         {{ Session::get('msj-erroneo') }}
      </div>
   @endif

   <div class="title-page-one_course col-md border-bottom-2"><span>
      <h6 class=""><span>Cursos > </span><span> {{ $curso->category->title }} ></span><span>{{ $curso->title }}</span></h6>
      <hr style="border: 1px solid #707070;opacity: 1;" />
   </div>

   {{-- BANNER --}}
   <div class="container-fluid p-0">
        @if (!is_null($curso->featured_cover))
               <div style="max-width: 100%; position: relative; display: inline-block;">
                    <img src="{{ asset('uploads/images/courses/featured_covers/'.$curso->featured_cover) }}" alt="" style=" max-width:100%; opacity: 0.5;" class="">
                </div>
         @else
         <div style="max-width: 100%; position: relative; display: inline-block;">
                    <img src="{{ asset('uploads/images/courses/covers/'.$curso->cover) }}" alt="" style=" max-width:100%; opacity: 0.5;">
         </div>
         @endif
   </div>
   {{-- FIN DEL BANNER --}}
 <hr class="m-0" style="border: 1px solid #707070;opacity: 1;margin-top: 20px !important;margin-bottom: 25px !important;">

   {{-- SECCIÓN ACERCA DEL CURSO--}}
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-12">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="text-white up">{{ $curso->title }}</h1>
                  <div>
                     @if ( (!Auth::guest()) && (!is_null($progresoCurso)) && (is_null($miValoracion)) )
                        <p class="rating">
                           <input id="d-radio1c" type="radio" name="points" value="5">
                           <label for="d-radio1c" href="#ratingModal" data-toggle="modal">
                              @if (number_format($curso->promedio, 0) >= 5) <i class="fa fa-star" style="color: orange;"></i> @else <i class="fa fa-star-o"></i>@endif
                           </label>
                           <input id="d-radio2c" type="radio" name="points" value="4">
                           <label for="d-radio2c" href="#ratingModal" data-toggle="modal">
                               @if (number_format($curso->promedio, 0) >= 4) <i class="fa fa-star" style="color: orange;"></i> @else <i class="fa fa-star-o"></i>@endif
                           </label>
                           <input id="d-radio3c" type="radio" name="points" value="3">
                           <label for="d-radio3c" href="#ratingModal" data-toggle="modal">
                               @if (number_format($curso->promedio, 0) >= 3) <i class="fa fa-star" style="color: orange;"></i> @else <i class="fa fa-star-o"></i>@endif
                           </label>
                           <input id="d-radio4c" type="radio" name="points" value="2">
                           <label for="d-radio4c" href="#ratingModal" data-toggle="modal">
                               @if (number_format($curso->promedio, 0) >= 2) <i class="fa fa-star" style="color: orange;"></i> @else <i class="fa fa-star-o"></i>@endif
                           </label>
                           <input id="d-radio5c" type="radio" name="points" value="1">
                           <label for="d-radio5c" href="#ratingModal" data-toggle="modal">
                               @if (number_format($curso->promedio, 0) >= 1) <i class="fa fa-star text" style="color: orange;"></i> @else <i class="fa fa-star-o text"></i>@endif
                           </label>
                        </p>
                     @else
                        @if (number_format($curso->promedio, 0) >= 1)
                           <i class="fa fa-star text-warning"></i>
                        @else
                           <i class="fa fa-star-o text-secondary"></i>
                        @endif
                        @if (number_format($curso->promedio, 0) >= 2)
                           <i class="fa fa-star text-warning"></i>
                        @else
                          <i class="fa fa-star-o text-secondary"></i>
                        @endif
                        @if (number_format($curso->promedio, 0) >= 3)
                           <i class="fa fa-star text-warning"></i>
                        @else
                           <i class="fa fa-star-o text-secondary"></i>
                        @endif
                        @if (number_format($curso->promedio, 0) >= 4)
                           <i class="fa fa-star text-warning"></i>
                        @else
                           <i class="fa fa-star-o text-secondary"></i>
                        @endif
                        @if (number_format($curso->promedio, 0) >= 5)
                           <i class="fa fa-star text-warning"></i>
                        @else
                           <i class="fa fa-star-o text-secondary"></i>
                        @endif
                     @endif

                  </div>
               </div>
            </div>

            <div class="row">
               <div class="col-md-9 mt-2">
                  <div class="row">
                     <div class="col-md-3">
                        <h6 class="text-white"> <img src="{{ asset('images/icons/icon-user.svg') }}" alt="" height="30px" width="30px">  {{ $curso->users_count }} Alumnos</h6>
                     </div>
                     <div class="col-md-3">
                        <h6 class="text-white"> <img src="{{ asset('images/icons/icon-book-video.svg') }}" height="30px" width="30px"> {{ $curso->lessons_count }} Lecciones</h6>
                     </div>
                     <div class="col-md-3">
                        <h6 class="text-white">
                           <img src="{{ asset('images/icons/clock.svg') }}" height="30px" width="30px">
                           @if (!is_null($curso->duration))
                              {{ $curso->duration }}
                           @else
                              0h 0m
                           @endif
                        </h6>
                     </div>
                     @if (!Auth::guest())
                    @if(Auth::user()->ID == 10067 && $curso->id == 39)
                       <div class="col-md-3">
                           <img src="{{ asset('images/medallas/diamante.png') }}" height="30px" width="30px">
                     </div>
                      @endif
                      @endif

                     <div class="col-md-4 mt-2">
                        <h6 class="text-white"><img src="{{ asset('images/icons/calendar.svg') }}" height="30px" width="30px">  Fecha de salida: {{ date('d-m-Y', strtotime($curso->created_at)) }}</h6>
                     </div>

                  </div>
               </div>
               <div class="col-md-3 mt-2 text-center">
                  @if (Auth::guest())
                     <a href="{{route('shopping-cart.membership')}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
                  @else
                     @if (is_null($progresoCurso))
                        @if (is_null(Auth::user()->membership_id))
                           <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
                        @else
                           @if (Auth::user()->membership_id < $curso->membership_id)
                              <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> AUMENTAR MEMBRESÍA</a>
                           @else
                              @if (Auth::user()->membership_status == 1)
                                 @if(!$curso->lessons->isEmpty())
                                    <a href="{{route('client.courses.add', [$curso->id, 'es'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN ESPAÑOL</a>
                                    <a href="{{route('client.courses.add', [$curso->id, 'en'])}}" class="btn btn-primary play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN INGLÉS</a>
                                 @endif
                              @else
                                 <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                              @endif
                           @endif
                        @endif
                     @else
                        @if (Auth::user()->membership_status == 1)
                       
                        @if(!is_null($first_lesson))
                           <a href="{{ route('lesson.show', [$first_lesson->slug, $first_lesson->id, $curso->id]) }}" class="px-2 mr-auto btn btn-success play-course-button btn-block mb-2"> <i class="fa fa-play" aria-hidden="true"></i> CONTINUAR CURSO</a>
                        @endif
                        @else
                           <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                        @endif
                     @endif
                  @endif
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="container-fluid mt-4">
      <div class="row">
         <div class="col-md-12">
            <div class="row">
               <div class="col-md-10">
                  <h2 class="text-white ml-5 up">ACERCA DEL CURSO </h2>
                  <hr style="border: 1px solid #707070; opacity: 1;" />
                  <div class="col-md-12">
                     <div class="col-md-12 justify-content-center p-2 ml-4" style="color: white;">
                        {!! $curso->description !!}

                        <div class="container-fluid pt-4">
                           <div class="row featurette">
                              <div class="col-md-9 order-md-2">
                                 <h5 class="featurette-heading text-white">Mentor</h5>
                                 <h3 class="featurette-heading text-success">{{ $curso->mentor->display_name }}</h3>
                                 <h6 class="featurette-heading text-white">{{ $curso->mentor->profession }}</h6>
                                 <p class="lead about-course-text">{{ $curso->mentor->about }}</p>
                                 <a href="{{route('show.perfil.mentor', $curso->mentor->ID)}}" class="text-success">Ver perfil <i class=" fa fa-angle-right"> </i></a>
                              </div>
                              <div class="col-md-3 order-md-1">
                                 <img src="{{ asset('uploads/avatar/'.$curso->mentor->avatar) }}" alt="" class="featurette-image img-fluid mx-auto ml-2" width="409" height="370">
                              </div>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   {{-- FIN SECCIÓN ACERCA DEL CURSO--}}

   {{-- SECCIÓN LECCIONES--}}
   @php
         $arrayColor = [
            0 => '#2A92FF',
            1 => '#BF4040',
            2 => '#B9AA1D',
            3 => '#A5D6E5',
            4 => '#9C4F9D',
            5 => '#2A91FF'
         ];

         $arrayNivel = [
            1 => 'Principiante',
            2 => 'Básico',
            3 => 'Intermedio',
            4 => 'Avanzado',
            5 => 'Pro'
         ];
   @endphp
   <div class="container-fluid pt-4 pb-4">
      <div class="col-md-12 section-title-category">
         <h3 class="ml-4">LECCIONES</h3>
      </div>
      <div class="row justify-content-center">
         @foreach ($arrayNivel as $nivel => $name)
         <div class="d-flex align-items-center mt-2 col">
            <div class="cuadrado" style="background: {{$arrayColor[$nivel]}}; outline-color: {{$arrayColor[$nivel]}}; height: 15px; width: 15px;"></div>
            <span class="ml-2" style="color: {{$arrayColor[$nivel]}}">{{$name}}</span>
         </div>
         @endforeach
      </div>
      <hr style="border: 1px solid #707070;opacity: 1;" />
    
      <div class="col-md-12">
         <div class="full margin_bottom_30">
            <div class="text-right mb-2">
               @if (Auth::guest())
                  <a href="{{route('shopping-cart.membership')}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
               @else
                  @if (is_null($progresoCurso))
                     @if (is_null(Auth::user()->membership_id))
                        <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
                     @else
                        @if (Auth::user()->membership_id < $curso->membership_id)
                           <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> AUMENTAR MEMBRESÍA</a>
                        @else
                           @if (Auth::user()->membership_status == 1)
                              @if(!$curso->lessons->isEmpty())
                                 <a href="{{route('client.courses.add', [$curso->id, 'es'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN ESPAÑOL</a>
                                 <a href="{{route('client.courses.add', [$curso->id, 'en'])}}" class="btn btn-primary play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN INGLÉS</a>
                              @endif
                           @else
                              <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                           @endif
                        @endif
                     @endif
                  @else
                     @if (Auth::user()->membership_status == 1)
                        @if(!is_null($first_lesson))
                           <a href="{{ route('lesson.show', [$first_lesson->slug, $first_lesson->id, $curso->id]) }}" class="px-2 mr-auto btn btn-success play-course-button btn-block mb-2"> <i class="fa fa-play" aria-hidden="true"></i> CONTINUAR CURSO</a>
                        @endif
                     @else
                        <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                     @endif
                  @endif
               @endif
            </div>
            @if(!$curso->lessons->isEmpty())
            <div class="accordion border_circle">
               <div class="bs-example">
                  <div class="panel-group" id="accordion">
                     @php $cont = 0; @endphp
                     @foreach ($curso->lessons as $leccion)
                        @php $cont++; @endphp
                        <div class="panel panel-default mb-2">
                           <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapse-{{$leccion->id}}">
                              <div class="col-md-12 accordion-seccion-leccion align-items-center">
                                 <div class="row align-items-center ">
                                    <div class="col-md-1 p-0">
                                       <div class="cuadrado p-1 pl-2 pr-2" style="background: {{$arrayColor[$leccion->subcategory_id]}}; outline-color:{{$arrayColor[$leccion->subcategory_id]}}; ">
                                          <h4 class="text-white m-0">
                                             <strong>@if ($cont < 10) 0{{ $cont }} @else {{ $cont }} @endif</strong>
                                          </h4>
                                       </div>
                                    </div>
                                    <div class="col-md-10 pl-0">
                                       <h5 class="panel-title about-course-text m-0">
                                          @if ( (!Auth::guest()) && (!is_null($progresoCurso)) )
                                             @if (Auth::user()->membership_status == 1)
                                            @if($first_lesson->id == $leccion->id)
                                             <a href="{{ route('lesson.show', [$leccion->slug, $leccion->id, $curso->id]) }}" class="about-course-text text-success">
                                                   {{ $leccion->title }}
                                                </a>
                                              @else

                                                <a href="{{ route('lesson.show', [$leccion->slug, $leccion->id, $curso->id]) }}" class="about-course-text">
                                                   {{ $leccion->title }}
                                                </a>
                                                @endif
                                                 @foreach($lecciones_vistas as $leccion_vista)
                                                    @if($leccion_vista->lesson_id == $leccion->id)
                                                   <label class="text-success">&nbsp;&nbsp;&nbsp;&nbsp;Vista <i class="far fa-check-circle"></i> </label>
                                                   @endif
                                                @endforeach
                                             @else
                                                <a href="#newMembership" data-toggle="modal"  class="about-course-text">
                                                   {{ $leccion->title }}
                                                </a>
                                             @endif
                                          @else
                                             {{ $leccion->title }}
                                          @endif
                                       </h5>
                                    </div>
                                    <div class="col-md-1">
                                       <img src="{{ asset('images/icons/chevron.svg') }}" class="leccion-icon float-right" height="20">
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div id="collapse-{{$leccion->id}}" class="panel-collapse collapse in">
                              <div class="panel-body">
                                 <div class="row">
                                    <div class="col-md-12 m-2">
                                       <p class="about-course-text panel-title">{{ $leccion->description }}</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     @endforeach
                  </div>
               </div>
            </div>
            @else
            <h3 class="text-white mb-2 mt-2">Este curso no posee lecciones...</h3>
            @endif
            <div class="row">
               <div class="col-xl-6 col-lg-6 col-md-6 col-12 text-left">
                  @if (!Auth::guest())
                     <a href="{{route('client.my-courses')}}" class="btn btn-success btn-block play-course-button mt-2" ><i class="fas fa-user-circle" aria-hidden="true"></i> IR A MIS CURSOS</a>
                  @endif
                  <a href="{{route('courses.show.all')}}" class="btn btn-primary btn-block play-course-button mt-2" ><i class="fa fa-search" aria-hidden="true"></i> EXPLORAR MÁS CURSOS</a>
               </div>
            
               <div class="col-xl-6 col-lg-6 col-md-6 col-12 text-right mt-2">
                  @if (Auth::guest())
                     <a href="{{route('shopping-cart.membership')}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
                  @else
                     @if (is_null($progresoCurso))
                        @if (is_null(Auth::user()->membership_id))
                           <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> ADQUIRIR MEMBRESIA</a>
                        @else
                           @if (Auth::user()->membership_id < $curso->membership_id)
                              <a href="{{route('shopping-cart.store', [$curso->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> AUMENTAR MEMBRESÍA</a>
                           @else
                              @if (Auth::user()->membership_status == 1)
                                 @if(!$curso->lessons->isEmpty())
                                    <a href="{{route('client.courses.add', [$curso->id, 'es'])}}" class="btn btn-success play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN ESPAÑOL</a>
                                    <a href="{{route('client.courses.add', [$curso->id, 'en'])}}" class="btn btn-primary play-course-button btn-block" ><i class="fa fa-language" aria-hidden="true"></i> INICIAR CURSO EN INGLÉS</a>
                                 @endif
                              @else
                                 <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                              @endif
                           @endif
                        @endif
                     @else
                        @if (Auth::user()->membership_status == 1)
                        @if(!is_null($first_lesson))
                           <a href="{{ route('lesson.show', [$first_lesson->slug, $first_lesson->id, $curso->id]) }}" class="px-2 mr-auto btn btn-success play-course-button btn-block mb-2"> <i class="fa fa-play" aria-hidden="true"></i> CONTINUAR CURSO</a>
                        @endif
                        @else
                           <a href="{{route('shopping-cart.store', [Auth::user()->membership_id, 'membresia', 'Mensual'])}}" class="btn btn-danger play-course-button btn-block" ><i class="fa fa-shopping-cart" aria-hidden="true"></i> RENOVAR MEMBRESIA</a>
                        @endif
                     @endif
                  @endif     
               </div>
            </div>
         </div>
      </div>
   </div>
   {{-- FIN SECCIÓN LECCIONES--}}

   {{-- SECCIÓN VALORACIONES--}}
   @if ($curso->ratings_count > 0)
      <div class="container-fluid p-2 pt-5">
         <div class="row">
            <div class="col-md-10">
               <h3 class="text-white ml-5">VALORACIONES</h3>
               <hr style="border: 1px solid #707070;opacity: 1;" />
               @foreach ($curso->ratings as $valoracion)
                  <div class="row m-4 pt-4 border-bottom">
                     <div class="col-md-2">
                        <div class="circle"><img src="{{ asset('uploads/avatar/'.$valoracion->user->avatar) }}" alt="" class="circle" ></div>
                     </div>
                     <div class="col-md-8">
                        <div class="row">
                           <div class="col-md-12 mt-2">
                              <div class="row">
                                 <div class="col-md-4">
                                    <h5 class="text-white font-weight-bold">{{ $valoracion->user->display_name }}</h5>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-12">
                              <div class="row">
                                 <div class="col-md-12">
                                    @if ($valoracion->points >= 1)
                                       <i class="fa fa-star text-warning"></i>
                                    @else
                                       <i class="fa fa-star-o text-secondary"></i>
                                    @endif
                                    @if ($valoracion->points >= 2)
                                       <i class="fa fa-star text-warning"></i>
                                    @else
                                       <i class="fa fa-star-o text-secondary"></i>
                                    @endif
                                    @if ($valoracion->points >= 3)
                                       <i class="fa fa-star text-warning"></i>
                                    @else
                                       <i class="fa fa-star-o text-secondary"></i>
                                    @endif
                                    @if ($valoracion->points >= 4)
                                       <i class="fa fa-star text-warning"></i>
                                    @else
                                       <i class="fa fa-star-o text-secondary"></i>
                                    @endif
                                    @if ($valoracion->points >= 5)
                                       <i class="fa fa-star text-warning"></i>
                                    @else
                                       <i class="fa fa-star-o text-secondary"></i>
                                    @endif
                                    <h6 class="text-secondary">{{ date('d-m-Y', strtotime($valoracion->date)) }}</h6>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-8">
                              <h6 class="text-secondary">{{ $valoracion->comment }}</h6>
                           </div>
                        </div>
                     </div>
                  </div>
               @endforeach
            </div>
         </div>
      </div>
   @endif
   {{-- FIN SECCIÓN VALORACIONES--}}

   <div class="modal fade" id="ratingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="background-color: black;">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Valorar Curso</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <form action="{{ route('client.courses.rate') }}" method="POST">
               @csrf
               <input type="hidden" name="course_id" value="{{ $curso->id }}">
               <input type="hidden" name="course_slug" value="{{ $curso->slug }}">
               <div class="modal-body">
                  <div class="form-group">
                     <label for="comment" style="color: white;">Comentario</label>
                     <textarea class="form-control" name="comment" id="comment" rows="3" style="background-color: #1C1D21;"></textarea>
                  </div>
                  <div class="form-group">
                     <div class="row">
                        <div class="col-4">
                           <label for="comment" style="color: white;">Puntuación</label>
                        </div>
                        <div class="col-8 text-right">
                           <p class="rating text-right">
                              <input id="radio1c" type="radio" name="points" value="5"><label for="radio1c"><i class="fa fa-star"></i></label>
                              <input id="radio2c" type="radio" name="points" value="4"><label for="radio2c"><i class="fa fa-star"></i></label>
                              <input id="radio3c" type="radio" name="points" value="3"><label for="radio3c"><i class="fa fa-star"></i></label>
                              <input id="radio4c" type="radio" name="points" value="2"><label for="radio4c"><i class="fa fa-star"></i></label>
                              <input id="radio5c" type="radio" name="points" value="1"><label for="radio5c"><i class="fa fa-star"></i></label>
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                  <button type="submit" class="btn btn-primary">Valorar</button>
               </div>
            </form>
         </div>
      </div>
   </div>

   {{-- Modal Membresia --}}
   <div class="modal fade" id="newMembership" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="background-color: black;">
            <div class="modal-header">
               <!-- <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Adquirir nueva membresia</h5> -->
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body text-center">
                  <h4 class="text-muted mb-4">Parar tener acceso a nuevas lecciones debes mejorar tu membresia</h4>
                  @php
                     $idmembresia = empty(Auth::user()->membership_id) ? 1 : (Auth::user()->membership_id + 1);
                  @endphp
                  <a href="{{route('shopping-cart.store', $idmembresia)}}" class="btn btn-color-green text-white" style="background: #6ab742;">Subir de nivel</a>
                  <a href="{{route('courses')}}" class="btn btn-primary text-white">Ver Más Cursos</a>
            </div>
            <!-- <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div> -->
         </div>
      </div>
   </div>
@endsection
