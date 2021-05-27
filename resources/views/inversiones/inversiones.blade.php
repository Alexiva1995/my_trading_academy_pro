@extends('layouts.landing')

@push('styles')
<style>
    .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: #fff;
    background-color: #ED254E;
    }
    .nav-inversiones{
        background-color:#B4B5B5;
        margin: 10px;
        color: #fff;
    }
</style>
@endpush

@section('content')
<div class="container-fluid py-5" style="background:#FFFFFF;">
    <div class="row align-items-center justify-content-center">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item nav-inversiones">
                <a class="nav-link active " id="pills-forex-tab" data-toggle="pill" href="#pills-forex" role="tab" aria-controls="pills-forex" aria-selected="true" style="color:#F5F5F5;">FOREX</a>
            </li>
            <li class="nav-item nav-inversiones">
                <a class="nav-link" id="pills-acciones-tab" data-toggle="pill" href="#pills-acciones" role="tab" aria-controls="pills-acciones" aria-selected="false" style="color:#F5F5F5;">ACCIONES</a>
            </li>
            <li class="nav-item nav-inversiones">
                <a class="nav-link" id="pills-indices-tab" data-toggle="pill" href="#pills-indices" role="tab" aria-controls="pills-indices" aria-selected="false" style="color:#F5F5F5;">INDICES</a>
            </li>
            <li class="nav-item nav-inversiones">
                <a class="nav-link" id="pills-cfds-tab" data-toggle="pill" href="#pills-cfds" role="tab" aria-controls="pills-cfds" aria-selected="false" style="color:#F5F5F5;">ACCIONES CFDS</a>
            </li>
            <li class="nav-item nav-inversiones">
                <a class="nav-link" id="pills-criptomonedas-tab" data-toggle="pill" href="#pills-criptomonedas" role="tab" aria-controls="pills-criptomonedas" aria-selected="false" style="color:#F5F5F5;">CRIPTOMONEDAS</a>
            </li>
            <li class="nav-item nav-inversiones">
                <a class="nav-link" id="pills-primas-tab" data-toggle="pill" href="#pills-primas" role="tab" aria-controls="pills-primas" aria-selected="false" style="color:#F5F5F5;">MATERIAS PRIMAS</a>
            </li>
        </ul>
    </div>

</div>
<div class="container-fluid" style="background:#FFFFFF;">
    <div class="col-md-10 tab-content offset-md-1" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-forex" role="tabpanel" aria-labelledby="pills-forex-tab" style="color:#111329;">
            
                <div class="container-fluid py-5">
                    <div class="row">
                        <div class="col-md-6 table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                    <th class="text-center" scope="col" COLSPAN="2">MERCADO</th>
                                    <th class="text-center" scope="col">VENDER</th>
                                    <th class="text-center" scope="col">COMPRAR</th>
                                    <th class="text-center" scope="col">SPREAD EN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/european-union.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">EUR</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/united-states-of-america.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">US</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/united-kingdom.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">UK</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/germany.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">GER</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/australia.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">AU</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-6 table-responsive">
                        <table class="table">
                                <thead>
                                    <tr>
                                    <th class="text-center" scope="col" COLSPAN="2">MERCADO</th>
                                    <th class="text-center" scope="col">VENDER</th>
                                    <th class="text-center" scope="col">COMPRAR</th>
                                    <th class="text-center" scope="col">SPREAD EN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/european-union.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">EUR</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/united-states-of-america.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">US</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/united-kingdom.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">UK</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/germany.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">GER</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                    <tr>
                                    <th class="text-center"><img src="{{ asset('images/australia.svg') }}" alt="" style="max-height: 20px;"></th>
                                    <th class="text-center">AU</th>
                                    <td class="text-center" style="color:#ED254E;">1.2039</td>
                                    <td class="text-center" style="color:#00C65B;">1.20408</td>
                                    <td class="text-center" style="color:#777777;">1.8</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>
                    <div>
                        <h6 class="text-right mt-4"><a href="#" style="color:#2CB6FF;">MOSTRAR LISTA COMPLETA</a></h6 class="text-right mt-4">
                        
                    </div>

                </div>
            
            </div>
            <div class="tab-pane fade text-center" id="pills-acciones" role="tabpanel" aria-labelledby="pills-acciones-tab" style="color:#111329;">SECCION ACCIONES EN CONSTRUCCIÓN</div>
            <div class="tab-pane fade text-center" id="pills-indices" role="tabpanel" aria-labelledby="pills-indices-tab" style="color:#111329;">SECCION INDICES EN CONSTRUCCIÓN</div>
            <div class="tab-pane fade text-center" id="pills-cfds" role="tabpanel" aria-labelledby="pills-cfds-tab" style="color:#111329;">SECCION ACCIONES CFDS EN CONSTRUCCIÓN</div>
            <div class="tab-pane fade text-center" id="pills-criptomonedas" role="tabpanel" aria-labelledby="pills-criptomonedas-tab" style="color:#111329;">SECCION CRIPTOMONEDAS EN CONSTRUCCIÓN</div>
            <div class="tab-pane fade text-center" id="pills-primas" role="tabpanel" aria-labelledby="pills-primas-tab" style="color:#111329;">SECCION MATERIAS PRIMAS EN CONSTRUCCIÓN</div>
    </div>
</div>


@endsection
