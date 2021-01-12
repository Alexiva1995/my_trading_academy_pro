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

    .card-img-top {
    border: none!important;
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
                  <img src="{{ asset('images/home2.png') }}" class="d-block w-100" alt="...">
                   <div class="carousel-caption">
                        <div class="col-md-8 offset-md-2">
                          <h3 class="estilomytranding text-center font-weight-bold mb-4" style="color: #00C65B;">Academia de Trading Online</h3 class="text-center">
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
    <img src="{{ asset('images/nosotros/3d-modeling.svg') }}" alt="" style="max-height: 60px;">
    </div>
    <div class="col-md-5 text-white">
      <h5>El modelo académico cuenta con flexibilidad de aprendizaje, información de primer nivel y herramientas de aplicación sencilla e inmediata.</h5>
    
    </div>
    <div class="col-md-1">
    <img src="{{ asset('images/nosotros/paper.svg') }}" alt="" style="max-height: 60px;">
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
                                    <h6 class="text-white my-auto text-center aumento">Conexión</h6>
                            </div>
                    </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/10-285x300.png') }}" alt="innovación">
                        <div class="card-img-overlay d-flex flex-column">
                                <h6 class="text-white my-auto text-center aumento">Innovación</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/08-285x300.png') }}" alt="crecimiento">
                        <div class="card-img-overlay d-flex flex-column">
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
                                <h6 class="text-white my-auto text-center aumento">Calidad</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/12-285x300.png') }}" alt="eficacia">
                        <div class="card-img-overlay d-flex flex-column">
                                <h6 class="text-white my-auto text-center aumento">Eficacia</h6>
                        </div>
                </div>
            </div>
            <div class="containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/13-285x300.png') }}" alt="trascendencia">
                        <div class="card-img-overlay d-flex flex-column">
                                <h6 class="text-white my-auto text-center aumento">Trascendencia</h6>
                        </div>
                </div>
            </div>
        </div>
</div>


<div class="container-fluid bg-ecosistema py-5">
<div class="new-courses-section-title mb-2" style="text-align: center;">
                <h2 style="font-weight: 800; font-size: 40px; color:#ED254E;">NUESTRO ECOSISTEMA</h2>
        </div>
        <div class="row align-items-center justify-content-center">
            <div class="col-md-3 containerscale">
                    <div class="card">
                            <img src="{{ asset('images/nosotros/e1.png') }}" alt="conexión" class="img-fluid">
                            <div class="card-img-overlay d-flex flex-column">
                            <img src="{{ asset('images/mba.png') }}" alt="My business academy pro" class="img-fluid text-white my-auto text-center">
                            <!--<h6 class="text-white my-auto text-center">Logo</h6>-->
                                <a href="" class="btn btn-danger btn-more">Saber más</a>
                            </div>
                    </div>
            </div>
            <div class="col-md-3 containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/e2.png') }}" alt="innovación" class="img-fluid">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/no-work-1.png') }}" alt="No work money" class="img-fluid text-white my-auto text-center">
                                <a href="" class="btn btn-danger btn-more">Saber más</a>
                        </div>
                </div>
            </div>
            <div class="col-md-3 containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/e3.png') }}" alt="crecimiento" class="img-fluid">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/fentix-1.png') }}" alt="fenttix" class="img-fluid text-white my-auto text-center">
                                <a href="" class="btn btn-danger btn-more">Saber más</a>
                        </div>
                </div>
            </div>
            <div class="col-md-3 containerscale">
                <div class="card">
                        <img src="{{ asset('images/nosotros/e4.png') }}" alt="calidad" class="img-fluid">
                        <div class="card-img-overlay d-flex flex-column">
                        <img src="{{ asset('images/FTXlive-logo.png') }}" alt="ftxlive" class="img-fluid text-white my-auto text-center">
                                <a href="" class="btn btn-danger btn-more">Saber más</a>
                        </div>
                </div>
            </div>
        </div>

</div>




<div class="col-md-12" style="background-color: #FFFFFF;">
    <div class="card" style="max-width: 100%;">
        <div class="row mt-4 no-gutters">
            <div class="col-md-4 offset-md-2 no-gutters">
              <img src="{{ asset('images/nosotros/josegordo.png') }}" class="img-fluid">
            </div>
            <div class="col-md-4 d-flex align-items-center" style="color: #fff;">
            <div class="card-body">
                <h4 style="color: #1A1A1A">Fundador</h4>
                <h2  style="color: #ED254E; font-size: 45px; font-weight: bold;">
                    JOSÉ GORDO
                </h2>
               <p class="card-text" style="font-weight: 500; font-size: 19px; line-height: 1.6em; color: #707070;">
               Desde hace más de 15 años, millones de personas en todo el mundo han experimentado una transformación de sus vidas y de sus negocios gracias a la aguda y enfocada visión de Jose Gordo, quien es a día de hoy uno de los mayores mentores en liderazgo, desarrollo personal y estrategia de negocios.
               </p>
            </div>
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

    <div class="col-md-3" style="float:left">
     <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Manuel Guerrero Aguilar</h4>
          <p class="card-text text-center">Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px; border-radius:50%;" class="img-fluid">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Tania Tostado</h4>
          <p class="card-text text-center">Licenciada en Administración financiera con especialidad en finanzas corporativas, ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Erick Reynaga</h4>
          <p class="card-text text-center">Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Mirela Vuckovic</h4>
          <p class="card-text text-center">Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam.</p>
        </div>
      </div>
    </div>
    

  </div>
  <!--/.First slide-->

  <!--Second slide-->
  <div class="carousel-item">

  <div class="col-md-3" style="float:left">
     <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Manuel Guerrero Aguilar</h4>
          <p class="card-text text-center">Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Tania Tostado</h4>
          <p class="card-text text-center">Licenciada en Administración financiera con especialidad en finanzas corporativas, ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Erick Reynaga</h4>
          <p class="card-text text-center">Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México.</p>
        </div>
      </div>
    </div>

    <div class="col-md-3" style="float:left">
      <div class="card mb-4 card-instructores">
        <img class="mx-auto"
          src="{{ asset('images/user.png') }}" alt="Card image cap" style="max-width:70px;">
        <div class="card-body">
          <h4 class="card-title text-center" style="color:#ED254E;">Mirela Vuckovic</h4>
          <p class="card-text text-center">Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam.</p>
        </div>
      </div>
    </div>


  </div>
  <!--/.Second slide-->

 

</div>
<!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->


</div>

@endsection
