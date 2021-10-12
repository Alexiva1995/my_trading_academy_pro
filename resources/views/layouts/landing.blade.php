<!DOCTYPE html>
<html lang="en">
    <head>
        <meta property="og:title" content="MTA"/>
        <meta property="og:site_name" content="My Trading Academy PRO"/>
        <meta property="og:url" content="https://mytradingacademypro.com/office"/>
        <meta property="og:description" content="Aprende las mejores estrategias y conviértete en un experto en operaciones en el mercado de divisas."/>
        <meta property="og:type" content="website"/>
        <meta property="og:locale" content="es"/>
        <meta property="og:image" content="https://mytradingacademypro.com/office/images/logoverticalnegro.png"/>
        <meta property="og:image:width" content="300" />
        <meta property="og:image:height" content="180" />

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta http-equiv="Expires" content="0" />
        <meta http-equiv="Pragma" content="no-cache" />
        <!--<title>{{ $settings->name }}</title>-->
        <title>{{ $settings->name }}</title>

        <link rel="stylesheet" href="{{ asset('bootstrap-4.5.1/css/bootstrap.min.css') }}">
        <link href="{{ asset('css/simple-sidebar.css') }}" rel="stylesheet">
        <link rel="stylesheet" href="{{ asset('css/theme.css') }}">
        <link href="https://emoji-css.afeld.me/emoji.css" rel="stylesheet">
        <link rel="shortcut icon" href="{{ asset('icon.png') }}" />

        <!-- css para la vista de anotaciones y mas -->
        <link rel="stylesheet" href="{{asset('css/anotaciones-simple.css')}}">
        <!-- css para cookies -->
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css" />
        <link rel="stylesheet" type="text/css" href="{{ asset('assets/datatables/datatables.min.css') }}">
        <style>
            .ct-topbar {
            text-align: right;
            border-radius: 25px;
            margin-top: 5px;
            }
            .ct-topbar__list {
            margin-bottom: 0px;
            }
            .ct-language__dropdown{
                padding-top: 8px;
                max-height: 0;
                overflow: hidden;
                position: absolute;
                top: 110%;
                left: -3px;
                -webkit-transition: all 0.25s ease-in-out;
                transition: all 0.25s ease-in-out;
                width: 150px;
                text-align: center;
                padding-top: 0;
                z-index:9999;
            }
            .ct-language__dropdown li{
                background: #222;
                padding: 5px;
            }
            .ct-language__dropdown li a{
                display: block;
                color:#fff;
                font-size:12px;
                text-align:left;
            }
            .ct-language__dropdown li:first-child{
                padding-top: 10px;
                border-radius: 3px 3px 0 0;
            }
            .ct-language__dropdown li:last-child{
                padding-bottom: 10px;
                border-radius: 0 0 3px 3px;
            }
            .ct-language__dropdown li:hover{
                background: #444;
            }
            .ct-language__dropdown:before{
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                margin: auto;
                width: 8px;
                height: 0;
            }
            .ct-language{
                position: relative;
                background: #00C65B;
                color: #fff;
                padding: 7px;
                border-radius: 25px;
                font-weight: bold;
            }
            .ct-language:hover .ct-language__dropdown{
                max-height: 500px;
                padding-top: 8px;
            }
            .list-unstyled {
                padding-left: 0;
                list-style: none;
            }
        </style>

        @stack('styles')

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>

        <script>
            window.Laravel = {!! json_encode([
                'csrfToken' => csrf_token(),
            ]) !!};

            var base_url = '{{ url('/') }}';
            var assetsPath = base_url + '/assets';
        </script>
        <script>
            $(document).ready(function(){ //Hacia arriba
                irArriba();
            });

            function irArriba(){
              $('.ir-arriba').click(function(){ $('body,html').animate({ scrollTop:'0px' },1000); });
              $(window).scroll(function(){
                if($(this).scrollTop() > 0){ $('.ir-arriba').slideDown(600); }else{ $('.ir-arriba').slideUp(600); }
              });
              $('.ir-abajo').click(function(){ $('body,html').animate({ scrollTop:'1000px' },1000); });
            }             
        </script>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            @include('layouts.partials.header')

            <!-- Page Content -->
            <div class="bg-dark-gray" id="page-content-wrapper" style="margin-top: 70px;">
                <div class="row">
                    <div class="col-md-2 col-sm-2 col-xs-12" id="sidebar-div">
                        @include('layouts.partials.sidebar')
                    </div>
                    <div class="col-md-10 col-xs-10 col-sm-12" id="content-div">
                        <div class="container">     
                            @yield('content') 
                            <!--<div class="icon-bar">
                                <a href="#" class="btn btn-social-media-icon btn-rounded facebook mt-2 mb-2" target="_blank"><i class="text-center fa fa-facebook"></i></a>
                                <a href="#" class="btn btn-social-media-icon btn-rounded twitter mt-2 mb-2" target="_blank"><i class="text-center fa fa-twitter"></i></a>
                                <a href="#" class="btn btn-social-media-icon btn-rounded linkedin mt-2 mb-2" target="_blank"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="btn btn-social-media-icon btn-rounded email-icon mt-2 mb-2" target="_blank"><i class="fas fa-envelope"></i></a>
                                <a href="#" class="btn btn-social-media-icon btn-rounded youtube" target="_blank"><i class="fa fa-youtube"></i></a>
                            </div>-->

                            <div class="section-paises" id="section-paises">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 py-5">
                                        <div class="mb-5 text-center">
                                                <img src="{{ asset('images/mba.png')}}" alt="" height="40px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/no_work_no_money.png')}}" alt="" height="40px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/logo-fentix.png')}}" alt="" height="40px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/logo-fxtlive.png')}}" alt="" height="40px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/mytradinglogo.png')}}" alt="" height="40px" class="mr-4 ml-4 mb-3">
                                            </div>
                                            <div class="mb-25 text-center">
                                                <img src="{{ asset('images/icf.png')}}" alt="" height="50px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/logo-jose.png')}}" alt="" height="50px" class="mr-4 ml-4 mb-3"><br class="d-block d-sm-none">
                                                <img src="{{ asset('images/revolutte.png')}}" alt="" height="50px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/revolutte-insurance.png')}}" alt="" height="50px" class="mr-4 ml-4 mb-3">
                                                <img src="{{ asset('images/revolutte-real-state.png')}}" alt="" height="50px" class="mr-4 ml-4 mb-3">
                                            </div>
                                            <div class="mb-2 text-center text-white" style="margin:20px;">
                                                PAISES EN DONDE ESTAMOS PRESENTES
                                            </div>
                                            <div class="mb-2 text-center" style="margin:20px;">
                                                <img src="{{ asset('images/usa.png')}}" height="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/espana.png')}}" height="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/rusia.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/marruecos.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/japon.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/cuba.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/colombia.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/ecuador.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/mexico.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/peru.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/venezuela.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/paraguay.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                                <img src="{{ asset('images/vietnam.png')}}" height="40px" width="40px" class="mr-3 mb-2">
                                            </div>
                                            <div class="mb-2 text-center text-white" style="margin-top: 10px;">
                                                Medios de Pago
                                                <img src="{{ asset('images/stripe.png') }}" height="15px" class="mr-md-2 mr-3" style="margin-left: 1rem! important;">
                                                <img src="{{ asset('images/logopaypalwhite.png') }}" height="15px" class="mr-md-2 mr-3" style="margin-left: 1rem! important;">
                                            </div>
                                            <div class="mb-2 text-center text-white" style="margin-top: 10px;">
                                                Aceptamos
                                                <img src="{{ asset('images/visa.png') }}" height="15px" class="mr-md-3 mr-3" style="margin-left: 1rem! important;">
                                                <img src="{{ asset('images/mastercard.png') }}" height="15px" class="mr-md-3 mr-3">
                                                <img src="{{ asset('images/american.png') }}" height="15px" class="mr-md-3 mr-3">
                                            </div>
                                            <div class="mb-2 text-center text-white" style="margin-top: 10px;">
                                                Pr&oacute;ximamente
                                                <img src="{{ asset('images/amazon_pay.png') }}" height="15px" class="mr-md-3 mr-3" style="margin-left: 1rem! important;">
                                                <img src="{{ asset('images/apple_pay.png') }}" height="15px" class="mr-md-3 mr-3">
                                                <img src="{{ asset('images/g_pay.png') }}" height="15px" class="mr-md-3 mr-3">

                                            </div>
                                            <div class="text-center text-white" style="margin-top: 20px;">
                                                <a href="#" class="text-white" target="_blank" style="padding: 2px;">Academia</a> &nbsp&nbsp
                                                <a href="#" class="text-white" target="_blank" style="padding: 2px;">Noticias</a> &nbsp&nbsp
                                                <a href="#" class="text-white" target="_blank" style="padding: 2px;">Pol&iacute;ticas de Uso</a> &nbsp&nbsp
                                                <a href="#" class="text-white" style="padding: 2px;" target="_blank">T&eacute;rminos y condiciones</a>&nbsp&nbsp
                                                <a href="#" data-toggle="modal" data-target="#contactModal" class="text-white" style="padding: 2px;" target="_black"> Contacto</a>&nbsp&nbsp
                                                <a href="{{route('index')}}" class="text-white" style="padding: 2px;">Inicio</a>&nbsp&nbsp
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <!-- Boton hacia arriba -->
                                <a class="ir-arriba"  javascript:void(0) title="Volver arriba">
                                <span class="fa-stack">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-arrow-up fa-stack-1x fa-inverse"></i>
                                </span>
                                </a>
                            </div>

                            @include('layouts.partials.footer')
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->
        </div>
        <!-- /#wrapper -->
        {{-- Modal de Contacto --}}
        <div class="modal fade" id="contactModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="background-color: black;">
                    <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel" style="color: white;">Déjanos tu Mensaje</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                    <form action="{{ route('contact-us') }}" method="POST">
                        @csrf
                        <div class="modal-body text-center">
                            <div class="form-group">
                                <label for="name" style="color: white;">Nombre (*)</label>
                                <input type="text" class="form-control" name="name" style="background-color: #1C1D21;" required>
                            </div>
                            <div class="form-group">
                                <label for="email" style="color: white;">Correo (*)</label>
                                <input type="email" class="form-control" name="email" style="background-color: #1C1D21;" required>
                            </div>
                            <div class="form-group">
                                <label for="subject" style="color: white;">Asunto (*)</label>
                                <input type="text" class="form-control" name="subject" style="background-color: #1C1D21;" required>
                            </div>
                            <div class="form-group">
                                <label for="message" style="color: white;">Mensaje</label>
                                <textarea class="form-control" name="message" rows="3" style="background-color: #1C1D21;" required></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function googleTranslateElementInit() {
                new google.translate.TranslateElement({pageLanguage: jQuery('.goog-te-combo').val(), layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT}, 'google_translate_element');
            }

            function triggerHtmlEvent(element, eventName) {
                var event;
                if (document.createEvent) {
                    event = document.createEvent('HTMLEvents');
                    event.initEvent(eventName, true, true);
                    element.dispatchEvent(event);
                } else {
                    event = document.createEventObject();
                    event.eventType = eventName;
                    element.fireEvent('on' + event.eventType, event);
                }
            }

	        jQuery('.lang-select').click(function() {
                var theLang = jQuery(this).attr('data-lang');
                jQuery('.goog-te-combo').val(theLang);

                //alert(jQuery(this).attr('href'));
                window.location = jQuery(this).attr('href');
                location.reload();

            });
        </script>
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

        <!-- Bootstrap core JavaScript -->
        <script src="https://kit.fontawesome.com/d6f2727f64.js" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="{{ asset('bootstrap-4.5.1/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('bootstrap-4.5.1/js/bootstrap.bundle.min.js') }}"></script>
        <script src="{{ asset('assets/datatables/datatables.min.js') }}"></script>

        <!-- Menu Toggle Script -->
        <!-- Menu Toggle Script -->
        <script>
            $("#menu-toggle").click(function(e) {
                e.preventDefault();
                //$("#wrapper").toggleClass("toggled");
                if ($("#content-div").hasClass("col-md-10")){
                    $("#sidebar-div").css("display", "none");
                    $("#content-div").removeClass("col-md-10");
                    $("#content-div").addClass("col-md-12");
                }else{
                    $("#sidebar-div").css("display", "block");
                    $("#content-div").removeClass("col-md-12");
                    $("#content-div").addClass("col-md-10");
                }

                if ($("#icon-bar").hasClass("d-block")){
                    $("#icon-bar").removeClass("d-block");
                    $("#icon-bar").addClass("d-none");
                }else{
                    $("#icon-bar").removeClass("d-none");
                    $("#icon-bar").addClass("d-block");
                }
            });
            $("#menu-toggle2").click(function(e) {
                e.preventDefault();
                //$("#wrapper").toggleClass("toggled");
                if ($("#content-div").hasClass("col-md-10")){
                    $("#sidebar-div").css("display", "none");
                    $("#content-div").removeClass("col-md-10");
                    $("#content-div").addClass("col-md-12");
                }else{
                    $("#sidebar-div").css("display", "block");
                    $("#content-div").removeClass("col-md-12");
                    $("#content-div").addClass("col-md-10");
                }

                if ($("#icon-bar").hasClass("d-block")){
                    $("#icon-bar").removeClass("d-block");
                    $("#icon-bar").addClass("d-none");
                }else{
                    $("#icon-bar").removeClass("d-none");
                    $("#icon-bar").addClass("d-block");
                }
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js" data-cfasync="false"></script>
        <script>
        window.cookieconsent.initialise({
          "palette": {
            "popup": {
              "background": "#252e39"
            },
            "button": {
              "background": "#00C65B"
            }
          },
          "theme": "classic",
          "position": "bottom-right",
          "content": {
            "message": "Utilizamos cookies propias y de terceros para mejorar nuestros servicios. Si continúa con la navegación, consideraremos que acepta este uso.",
            "dismiss": "Acepto",
            "link": "Leer más.",
            "href": "https://ftxlive.com/office/"
          }
        });
        </script>

        {{-- mensajes push --}}
         <script src="{{ asset('assets/push/push-js-master/bin/push.js')}}"></script>

         {{-- Sweetalert 2 --}}
         <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

        @stack('scripts')
    </body>
    @include('layouts.push.push')
</html>
