@extends('layouts.dashboardnew')

@section('content')

<div class="col-xs-12">
  <div class="box box-info">
      
    <div class="box-body">
      <form method="POST" action="{{ route('senales-guardarsenales') }}" enctype="multipart/form-data">
        {{ csrf_field() }}
        
        <input type="hidden" name="id" value="{{$senales->id}}">
       
        <div class="col-sm-12">
          <label class="white">Titulo</label>
          <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" name="titulo" value="{{$senales->titulo}}"
            required style="background-color:f7f7f7;" />
        </div>
        
        <div class="col-sm-12">
          <label class="white">Contenido</label>
          <textarea class="form-control form-control-solid placeholder-no-fix summernote" type="textarea" cols="30" rows="10" autocomplete="off"
            name="contenido" required style="background-color:f7f7f7;">
              {!! (!empty($senales->contenido)) ? $senales->contenido : '' !!}
              </textarea>
        </div>
        
        
        
       
        <div class="col-sm-12">
          <div class="col-sm-6 col-md-offset-3" style="padding-left: 10px;">
              <button class="btn btn-success btn-block" type="submit" id="btn"
                style="margin-bottom: 5px; margin-top: 8px;">Aceptar</button>
            </div>
        </div>
      </form>
    </div>
  </div>
</div>

@endsection

@push('script')
<script src="//cdn.ckeditor.com/4.13.1/full/ckeditor.js"></script>
<script>
  $(document).ready(function () {
 CKEDITOR.replace('contenido', {
    filebrowserUploadUrl: "{{route('upload', ['_token' => csrf_token() ])}}",
    filebrowserUploadMethod: 'form'
  });
})
</script>
@endpush