@extends('layouts.landing')

@section('content')
    @if (Session::has('msj-exitoso'))
        <div class="alert alert-success alert-dismissible fade show mt-2" role="alert">
            <strong>{{ Session::get('msj-exitoso') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <div class="row" style="margin-top: 230px;">
        <div class="col-md-12">
            @if (!is_null($evento->image))
                <img src="{{ asset('uploads/images/banner/'.$evento->image) }}" class="card-img-top img-banner-live" alt="...">
            @else
                <img src="{{ asset('uploads/images/banner/default.jpg') }}" class="card-img-top img-fluid img-banner-live" alt="...">
            @endif

            <div class="card-img-overlay counter-caption">
                <div class="card-title text-white text-center title-remain" id="remain-time-text">
                    EL LIVE YA HA FINALIZADO
                </div>
            </div>
        </div>
    </div>

    <div class="row ml-1 mb-1">
        <div class="col-md-8">
            <h3 style="color: #28a745;margin-top: 20px;text-transform: uppercase;font-weight: 600;">{{$evento->title}}</h3>
            <hr color="white" size=3>
           
            <p class="text-white">
                Fecha del Live: {{ date('d-m-Y', strtotime($evento->date)) }}<br>
                Horario del Live: 
                @foreach ($evento->countries as $country)
                    {{ $country->abbreviation }} {{ date('H:i A', strtotime($country->pivot->time)) }} /
                @endforeach
            </p>
           
            <p class="text-white">
                {!!$evento->description!!}
            </p>
        </div>

        <div class="col-md-4 col-xs-12 " style="margin-top: 20px;">
            <div style="background:#25262B; margin-right: 10px; margin-left: 10px;">
                @if (!is_null($evento->mentor->avatar))
                    <img src="{{ asset('uploads/avatar/'.$evento->mentor->avatar) }}" class="card-img-top" alt="...">
                @else
                    <img src="{{ asset('uploads/images/avatar/default.jpg') }}" class="card-img-top" alt="...">
                @endif
                <p style="color: white; padding-left: 10px;">Invitado</p>
                <h5 style="color:#28a745; margin-top: -20px; padding-left: 10px;">{{$evento->mentor->display_name}}</h5>
                <p style="color: white; padding-left: 10px;">{{$evento->mentor->profession}}</p>
                <p style="color:#FFFFFF; font-size: 18px; margin-top: 0px;padding-left: 10px"> {{$evento->mentor->about}}</p>
                <a href="{{ url('courses/mentor/'.$evento->mentor->ID) }}" target="_blank" class="btn btn-success btn-block">NIVEL: {{$evento->subcategory->title}}</a>
            </div>
        </div>
    </div>
@endsection