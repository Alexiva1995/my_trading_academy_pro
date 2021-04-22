@extends('layouts.landing')

@section('content')
   <div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px; margin-top: 200px;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                     <img src="{{ asset('nosotros/gratis-Blog/blog.png') }}" class="d-block w-100" alt="...">
                     <div class="carousel-caption">
                        <div class="col-md-8">
                           <h3 class="tranding text-left font-weight-bold mb-4">BLOG</h3 class="text-left">
                        </div>
                     </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
      <div class="container">
         <div class="row justify-content-md-center">
            @foreach($entradas as $entra)
               <div class="col-md-3" style="box-shadow: 0 2px 4px rgba(0,0,0,.2); margin-bottom: 20px; margin-bottom: 20px; margin-right: 25px;">
                  <img src="{{ asset('uploads/entradas/'.$entra->imagen_destacada) }}" class="card-img-top" alt="..." style="border: solid 0; height: 250px;">
                  <div class="card-body" style="background-color: #FFFFFF;">
                     <div class="card-title" style="color: #00C65B; padding-left: 0px; font-size: 20px !important; font-weight: 700!important; line-height: 26px; height: 90px;">{{$entra->titulo}}</div>
                     <div style="font-size: 14px; color: #8B8E9D; ine-height: 16px; height: 180px;">{!! $entra->descripcion !!}</div>
                     <a class="btn btn-success btn-block" href="{{ route('blog.articulo', $entra->id) }}">¡VER ARTÍCULO!</a>
                  </div>
               </div>
            @endforeach
         </div>
      </div>
   </div>
@endsection
