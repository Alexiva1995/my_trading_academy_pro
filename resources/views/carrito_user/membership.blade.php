@extends('layouts.landing')

@push('styles')
    <style>
        .color-green {
            color: #6ab742;
        }

        .btn-color-green {
            background: #6ab742;
        }

        .bg-grey-alt {
            background: #313335;
        }

        .card {
            border: 0px solid rgba(0, 0, 0, .125) !important;
            border-radius: 0px !important;
            background: none!important;
         }
    </style>
@endpush

@section('content')
    <div class="title-page-one_course col-md border-bottom-2">
        <h6>Membresias</h6>
        <hr style="border: 1px solid #707070;opacity: 1;" />
    </div>

    @if (!Auth::guest())
    <div class="title-page-course col-md"><span class="text-white">
            <h3 class="mb-2"><span class="text-white">Hola</span><span class="text-success"> {{Auth::user()->display_name}}</span><span class="text-white"> ¡Nos alegra verte hoy!</span></h3>
    </div>
    @endif

    <div class="col-12 mb-2">
        <div class="row justify-content-center">
            <section class="pricing">
                <div class="container mb-5">
                    <div class="row justify-content-center">
                        @foreach ($membresias as $membresia)
                            @switch($membresia->id)
                                @case(1)
                                    <!-- Free Tier -->
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-azul-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-azul-claro text-center"><del style="font-size: 30px; color: red;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}<span class="period">/Mes</span></h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="text-white text-center">¡Esta membresía es para los buscadores del conocimiento, quienes quieren reforzar los principios de todo trader!</h5><br>
                                                <h5 class="text-white text-center"><strong class="text-azul-claro">En este primer nivel podrás acceder a:</strong></h5><br>
                                                <h5 class="text-white text-center">+ De 100 videos con increíbles especialistas en los diversos temas de Desarrollo Humano (Liderazgo, Comunicación, Inteligencia Emocional, Coaching, etc.) Y Contenido especial de Educación Financiera Finanzas.</h5><br>
                                                <h4 class="text-azul-claro text-center">+ 1 LIVE STREAMING <br> AL MES</h4>
                                        <h4 class="card-price text-azul-claro text-center mb-3"><del style="font-size: 30px; color: red;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                    
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-primary text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS <b class="text-azul-claro">2 STREAMING + CONTENIDO VIP
                                                    + 1 MÓDULO GRATIS </b> DE NUESTRO PARTNER <b class="text-azul-claro">MBA PRO </b> Y UN EVENTO DE <b class="text-azul-claro">FTX LIVE</b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(2)
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-orange-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-azul-claro text-center"><del style="font-size: 30px; color: red;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}<span class="period">/Mes</span></h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="text-white text-center"> ¡Esta membresía es para los que ya hace trading, aprende las mejores estrategias para mejorar continuamente a través de una cuenta demo!</h5>
                                                <h5 class="p-2 text-orange text-center">Aquí encontrarás todo lo que necesitas saber para HACER y lograr.</h5><br>
                                                <h5 class="text-white text-center">Disfrutarás de todo el contenido de este nivel y del anterior</h5><br>
                                                <h5 class="text-white text-center">+ de 150 videos con increíbles especialistas en los diversos temas de Ventas, Emprendurismo, Desarrollo Humano y Finanzas</h5><br>
                                                <h4 class="p-2 text-orange text-center">+ 2 LIVE STREAMING <br> AL MES</h4><br>
                                        
                                        <h4 class="mb-3 card-price text-azul-claro text-center"><del style="font-size: 30px; color: red;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-primary text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS <b class="text-orange">4 STREAMING + CONTENIDO VIP + 1 MÓDULO GRATIS </b> DE NUESTRO PARTNER <b class="text-orange">MBA PRO </b> Y 1 EVENTO DE <b class="text-orange">FTX LIVE</b></h5>
                                                    </div>
                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(3)
                                    <div class="col-lg-4 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-verde-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center" >{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:20px;">
                                                    <div class="col-md-12">
                                                    <h4 class="card-price text-azul-claro text-center"><del style="font-size: 30px; color: red;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}<span class="period">/Mes</span></h4>
                                                    </div>
                                                    <h1 class="text-center text-white">. . . . . . . . . . . . . . .</h1><br><br>
                                                </div>
                                                <h5 class="text-white text-center">Esta membresía te permite además de aprender y hacer trading, ganar ya por operación</h5><br>
                                                <h5 class="text-verde-claro text-center">Accederás:</h5>
                                                <h5 class="text-white text-center">A todo el contenido de este nivel y los 2 anteriores</h5><br>
                                                <h5 class="text-white text-center">+ de 200 videos con increíbles especialistas en los diversos temas de Fintech, Real Estate + Ventas, Emprendurismo, Desarrollo Humano y Finanzas</h5><br>
                                                <h4 class="text-verde-claro text-center">+ 6 LIVE STREAMING <br> AL MES</h4>
                                                
                                               
                                        <h4 class="mb-3 card-price text-azul-claro text-center"><del style="font-size: 30px; color: red;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span class="period">/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Comprar Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-primary text-white btn-block">Comprar Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS <b class="text-verde-claro">6 STREAMING + CONTENIDO VIP
                                                    +1 MÓDULO GRATIS </b> DE NUESTRO PARTNER <b class="text-verde-claro">MBA PRO </b> Y 1 EVENTO DE <b class="text-verde-claro">FTX LIVE</b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break
                            @endswitch
                        @endforeach
                    </div>
                </div>
            </section>
        </div>
    </div>

@endsection
