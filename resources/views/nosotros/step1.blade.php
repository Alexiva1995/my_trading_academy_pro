@extends('layouts.landing')

@push('styles')
    <style>
    /*.containerscale:hover{
        transform: scale(1.1);
        z-index: 9;
       }*/
    
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

    .card-img-top {
    border: none!important;
}

.card{
  background-color: none!important;
  border: none!important;
    border-radius: 0px !important;
}
    .ecosistema-img{
          padding-top: 150px;

}

    </style>
@endpush

@section('content')

<div class="container-fluid courses-slider" style="background-color: #1C1D21;margin-bottom: 0px; padding-bottom: 0px;">
    <div class="container-fluid courses-slider" style="padding-bottom: 0px;">
      <div id="mainSlider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item  active ">
              <div class="overlay"></div>
                  <img src="{{ asset('images/nosotros/01.jpg') }}" class="d-block w-100" alt="...">
                   <div class="carousel-caption">
                        <div class="col-md-8 offset-md-2">
                          <h3 class="estilomytrandingN text-center font-weight-bold" style="color: #00C65B;">Academia de Trading Online</h3 class="text-center">
                          <h2 class="estilomytrandingthree text-center">Para emprendedores de Fintech</h2>
                        </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

<div class="col-md-12" style="background-color: #EDEDED;">
   <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
  <h4>Somos un grupo de expertos que utilizamos nuestro conocimiento, habilidades y experencias para mejorar las prácticas de la industria FINTECH, con el objetivo de mejorar los servicios financieros en beneficios de todos.</h4>
   </div>
  </div>

<div class="container-fluid" style="background-color: #CF202F; padding: 70px !important;">
<h1 class="text-center font-weight-bold" style="color:#292D30; margin-bottom:50px!important;">Metodología</h1>
  <div class="row mt-4 no-gutters">
    <div class="col-md-1">
    <img src="{{ asset('images/nosotros/icon1.png') }}" alt="" style="max-height: 60px;">
    </div>
    <div class="col-md-5 text-white">
      <h5>El modelo académico cuenta con flexibilidad de aprendizaje, información de primer nivel y herramientas de aplicación sencilla e inmediata.</h5>
    
    </div>
    <div class="col-md-1">
    <img src="{{ asset('images/nosotros/icon2.png') }}" alt="" style="max-height: 60px;">
    </div>
    <div class="col-md-5 text-white">
      <h5>Se cuenta con <b>  múltiples módulos y varias lecciones</b> que cubren el concepto y contexto total del fascinante mundo Fintech, incluyendo sus diferentes campos de acción, como el forex, real estate y muchos otros.</h5>
    
    </div>

  </div>

</div>

<div class="col-md-12 py-5" style="background-color: #FFFFFF;">
        <div class="section-title-landing new-courses-section-title mb-2" style="text-align: center;">
                <h2 style="font-weight: 800; font-size: 40px; color:#ED254E;">NUESTROS VALORES</h2>
        </div>
        <div class="row align-items-center justify-content-center">
            <div class="containerscale">
                    <div class="card">
                            <img src="{{ asset('images/nosotros/09-285x300.png') }}" alt="conexión">
                            <div class="card-img-overlay d-flex flex-column">
                              <img src="{{ asset('images/nosotros/icon3.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center img-fluid " width="70px">
                              <h6 class="text-white my-auto text-center aumento">Conexión</h6>
                            </div>
                    </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/10-285x300.png') }}" alt="innovación">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/nosotros/icon4.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center" width="70px">
                                <h6 class="text-white my-auto text-center aumento">Innovación</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/08-285x300.png') }}" alt="crecimiento">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/nosotros/icon5.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center" width="70px">
                                <h6 class="text-white my-auto text-center aumento">Crecimiento</h6>
                        </div>
                </div>
            </div>
        </div>

        <div class="row align-items-center justify-content-center">
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/11-285x300.png') }}" alt="calidad">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/nosotros/icon6.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center" width="70px">
                                <h6 class="text-white my-auto text-center aumento">Calidad</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/12-285x300.png') }}" alt="eficacia">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/nosotros/icon7.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center" width="70px">
                                <h6 class="text-white my-auto text-center aumento">Eficacia</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/13-285x300.png') }}" alt="trascendencia">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/nosotros/icon8.png') }}" alt="conexión" class="text-white mx-auto my-auto text-center" height="70px">
                                <h6 class="text-white my-auto text-center aumento">Trascendencia</h6>
                        </div>
                </div>
            </div>
        </div>
</div>

<div style="background-color: #FFFFFF;">
<div class="container-fluid py-5" style="background-color: #212529; padding-left: 100px; padding-right: 100px;">
   <div class="new-courses-section-title mb-2" style="text-align: center;">
      <h2 style="font-weight: 800; font-size: 40px; color:#00C65B;">NUESTRO ECOSISTEMA</h2>
   </div>
   <div class="row" style="margin-left: 150px; margin-right: 150px;">
      <div class="row">
         <div class="col-md-3 align-self-start mt-2 pt-4">
            <img src="{{ asset('nosotros/nosotros/mba.png') }}" class="card-img img-fluid logo-scale" alt="...">
            <img src="{{ asset('nosotros/nosotros/fentix-1.png') }}" class="mt-5 pt-5 card-img img-fluid logo-scale" alt="...">
            <img src="{{ asset('nosotros/nosotros/revolutte.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="..." style="width: 200px;">
         </div>
         <div class="col align-self-center mt-2">
            <img src="{{ asset('nosotros/nosotros/world-mta.png') }}" class="card-img img-fluid logo-rotate" alt="...">
         </div>
         <div class="col-md-3 mt-2 pt-4">
          <img src="{{ asset('nosotros/nosotros/FTXlive-logo.png') }}" class="card-img img-fluid logo-scale" alt="...">
          <img src="{{ asset('nosotros/nosotros/no-work-1.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="...">
          <img src="{{ asset('nosotros/nosotros/revolutte-real-state.png') }}" class="card-img img-fluid logo-scale mt-5 pt-5" alt="..." style="width: 200px;">
         </div>
         <div class="col-md-12 text-center">
           <img src="{{ asset('nosotros/nosotros/revolutte-insurance.png') }}" class="card-img img-fluid logo-scale mt-3" alt="..." style="width: 200px;">
         </div>
      </div>
    </div>
</div>
</div>




   <div class="" style="background-color: #FFFFFF;">
      <div class="card" style="max-width: 100%;">
         <div class="row mt-4 no-gutters">
            <div class="col-md-4 offset-md-2 no-gutters">
               <img src="{{ asset('images/nosotros/josegordo.png') }}" class="img-fluid">
            </div>
            <div class="col-md-4 d-flex align-items-center" style="color: #fff;">
               <div class="card-body">
                  <h4 style="color: #1A1A1A">Fundador</h4>
                  <h2 style="color: #1A1A1A; font-size: 45px; font-weight: bold;">JOSÉ GORDO</h2>
                  <p class="card-text" style="font-weight: 500; font-size: 19px; line-height: 1.6em; color: #707070;">
                  Especialista en desarrollo de negocios rentables, sostenibles y de expansión global.
                  15 años de experiencia en el mundo financiero, eterno aprendiz y emprendedor, apasionado de las finanzas, la innovación y los proyectos de alto rendimiento. 
                  Es líder de una red de negocios con presencia en 80 países de Latinoamérica y Europa , tiene como compromiso personal y profesional, dejar huella en todo país que pise y persona que lo acompañe, siendo su prioridad, la educación de todo aquel que se sume a su equipo. 
                  Por ello es Escritor y autor de 4 libros de negocios, 2 de ellos best seller, en donde plasma la experiencia adquirida a través de su carrera como estratega y coach de negocios con valor agregado.
                  Así también ha creado diferentes técnicas de entrenamientos altamente efectivos, que sumados a todo un ecosistema de servicios educativos, apoyan a la mejora continua de los emprendedores del mundo. 
                  Fundador y Co-creador de My Trading Academy Pro, la mejor academia global para los amantes del emprendimiento financiero digital.

                  Síguelo en sus redes sociales: (IG) @josegordo.oficial - (F) @byjosegordo  - (Yt) Jose Gordo.
                  </p>
               </div>
            </div>
         </div>
         <div class="card" style="max-width: 100%;">
            <div class="row mt-4 no-gutters">
               <div class="col-md-4 offset-md-2 d-flex align-items-center" style="color: #fff;">
                  <div class="card-body">
                     <h4 style="color: #1A1A1A">Fundadora</h4>
                     <h2 style="color: #1A1A1A; font-size: 45px; font-weight: bold;">TANIA TOSTADO</h2>
                     <p class="card-text" style="font-weight: 500; font-size: 19px; line-height: 1.6em; color: #707070;">
                        Licenciada en Administración financiera con especialidad en finanzas corporativas, ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC.
                     </p>
                  </div>
               </div>
               <div class="col-md-4  no-gutters">
                  <img src="{{ asset('images/nosotros/tania-tostado.jpg') }}" class="img-fluid">
               </div>
               
            </div>
         </div>
      </div>



    <div class="col-md-12" style="background-color: #FFFFFF;">
       <div class="section-title-landing new-courses-section-title" style="text-align: center; padding: 30px;">
        <h2 class="font-weight-bold" style="color:#00C65B; margin-top:30px; ">INSTRUCTORES</h2>
      </div>
      
    <!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
<!--Indicators
<ol class="carousel-indicators">
  <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
  <li data-target="#multi-item-example" data-slide-to="1"></li>
  
</ol>-->
<!--/.Indicators-->

<!--Slides-->
<div class="carousel-inner" role="listbox">

  <!--First slide-->
  <div class="carousel-item active">

    <div class="col-md-3 offset-md-2" style="float:left">
     <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor1.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#1A1A1A;">Manuel Guerrero Aguilar</h4>
          <p class="card-text text-center">Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor3.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#1A1A1A;">Erick Reynaga</h4>
          <p class="card-text text-center">Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor4.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#1A1A1A;">Mirela Vuckovic</h4>
          <p class="card-text text-center">Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam.</p>
        </div>
      </div>
    </div>
    

  </div>
  <!--/.First slide-->

  <!--Second slide-->
  <!--<div class="carousel-item">

  <div class="col-md-3" style="float:left">
     <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor1.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Manuel Guerrero Aguilar</h4>
          <p class="card-text text-center">Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.</p>
        </div>
      </div>
    </div>


    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor3.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Erick Reynaga</h4>
          <p class="card-text text-center">Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/nosotros/instructor4.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Mirela Vuckovic</h4>
          <p class="card-text text-center">Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam.</p>
        </div>
      </div>
    </div>


  </div>-->
  <!--/.Second slide-->

 

</div>
<!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->


</div>

@endsection
