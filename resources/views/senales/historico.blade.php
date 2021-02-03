@extends('layouts.dashboardnew')

@section('content')

<div class="col-xs-12">
    <div class="box box-info">
        <div class="box-body">
            <table id="mytable" class="table">
                <thead>
                    <tr>
                        <th class="text-center">
                            #
                        </th>
                       
                        <th class="text-center">
                            Titulo
                        </th>
                        <th class="text-center">
                            Fecha
                        </th>
                        <th class="text-center">
                            Acciones
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($senales as $senale)
                    <tr>
                        <td class="text-center">
                            {{$senale->id}}
                        </td>
                        
                        <td class="text-center">
                            {{$senale->titulo}}
                        </td>
                        <td class="text-center">
                            {{date('d-m-Y', strtotime($senale->created_at))}}
                        </td>
                        
                        
                        <td class="text-center">
                            
                            <a class="btn btn-success" href="{{route('senales-descargar', $senale->id)}}"> Descargar</a>
                            
                            @if (Auth::user()->rol_id == 0)
                            <a class="btn btn-info" href="{{ route('senales-cambiar', $senale->id) }}"> Editar</a>
                                
                                {{--<a class="btn btn-success" href="{{route('senales-envio', $senale->id)}}"> Publicar</a>--}}
                                
                                 <a class="btn btn-danger cancelar" href="{{ route('senales-cancelar', $senale->id) }}">Eliminar</a>
                                @endif
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

@endsection
@include('usuario.componentes.scritpTable')