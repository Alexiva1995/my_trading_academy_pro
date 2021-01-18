<nav class="navbar navbar-expand-lg navbar-dark bg-dark-gray border-bottom py-5" style="height: 70px;flex-wrap: nowrap!important; background: #F5F5F5!important;">
<button class="d-block d-sm-block d-md-none btn" id="menu-toggle" style="background-color: #28a745 !important; color: #fff"><i class="fas fa-bars"></i></button>

<button class="navbar-toggler d-none" type="button" data-toggle="collapse" data-target="#navbarItems" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>
        <div class="row">
            <div class="d-none d-sm-none d-md-block col-12 col-sm-6 col-md-9">
                <img src="{{ asset('images/logoverticalnegro.png') }}" class="img-fluid logo-header">
            </div>
            <div class="col-12 col-sm-12 col-md-3 pt-2 text-center">
                <a href="#" target="_blank" class="btn social-icons"><i class="fa fa-facebook-f fa-1x" style="color:#111329;"></i></a>
                <a href="#" class="btn social-icons" target="_blank"><i class="fa fa-twitter fa-1x" style="color:#111329;"></i></a>
                <a href="#" target="_blank" class="btn social-icons"><i class="fa fa-instagram fa-1x" style="color:#111329;"></i></a>
                <a href="#" target="_blank" class="btn social-icons"><i class="fa fa-youtube fa-1x" style="color:#111329;"></i></a>
                <a href="#" target="_blank" class="btn social-icons"><i class="fa fa-linkedin fa-1x" style="color:#111329;"></i></a>
            </div>

        </div>
</nav>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark-gray border-bottom navbar-redes" style="height: 70px; border-color:#00C65B!important;">
    <div class="collapse navbar-collapse" id="navbarItems" style="z-index: 1000;">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0 header-list">
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route('index')}}">HOME</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route('step1')}}">NOSOTROS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route('step2')}}">ACADEMIA</a>
            </li>
            @if (Auth::guest())
                <li class="nav-item">
                    <a class="nav-link items-header text-center" href="{{ route('courses') }}">CURSOS</a>
                </li>
            @else
                <li class="nav-item">
                    <a class="nav-link items-header text-center" href="{{ route('courses') }}">MIS CURSOS</a>
                </li>
            @endif
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route('transmisiones')}}">STREAMING</a>
            </li>
            <li class="nav-item">
                
                <a class="nav-link items-header text-center" href="{{route('inversiones')}}">INVERSIONES</a>
            </li>
           <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route('trading')}}">TRANDING SOCIAL</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="#">PRODUCTOS & HERRAMIENTAS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header text-center" href="{{route ('shopping-cart.membership')}}">MEMBRESIAS</a>
            </li>
            @if (Auth::guest())
             <div class="ct-topbar">
                <div class="container">
                    <ul class="list-unstyled list-inline ct-topbar__list">
                    <li class="ct-language">IDIOMA
                        <ul class="list-unstyled ct-language__dropdown">
                        <li><a href="#googtrans(es|de)" class="lang-en lang-select" data-lang="de"><img src="{{ asset('images/icons/germany.svg')}}" alt="ALEMÁN" height="15px" width="15px"> ALEMÁN</a></li>
                        <li><a href="#googtrans(es|ar)" class="lang-en lang-select" data-lang="ar"><img src="{{ asset('images/icons/saudi-arabia.svg')}}" alt="ÁRABE" height="15px" width="15px"> ÁRABE</a></li>
                        <li><a href="#googtrans(es|zh-CN)" class="lang-es lang-select" data-lang="zh-CN"><img src="{{ asset('images/icons/china.svg')}}" alt="CHINO" height="15px" width="15px"> CHINO</a></li>
                        <li><a href="#googtrans(es|es)" class="lang-en lang-select" data-lang="es"><img src="{{ asset('images/icons/spain.svg')}}" alt="ESPAÑOL" height="15px" width="15px"> ESPAÑOL</a></li>
                        <li><a href="#googtrans(es|fr)" class="lang-es lang-select" data-lang="fr"><img src="{{ asset('images/icons/france.svg')}}" alt="FRANCÉS" height="15px" width="15px"> FRANCÉS</a></li>
                        <li><a href="#googtrans(es|hi)" class="lang-en lang-select" data-lang="hi"><img src="{{ asset('images/icons/india.svg')}}" alt="HINDI" height="15px" width="15px"> HINDI</a></li>
                        <li><a href="#googtrans(es|en)" class="lang-en lang-select" data-lang="en"><img src="{{ asset('images/icons/united-states-of-america.svg')}}" alt="INGLÉS" height="15px" width="15px"> INGLÉS</a></li>
                        <li><a href="#googtrans(es|it)" class="lang-en lang-select" data-lang="it"><img src="{{ asset('images/icons/italy.svg')}}" alt="ITALIANO" height="15px" width="15px"> ITALIANO</a></li>
                        <li><a href="#googtrans(es|pt)" class="lang-es lang-select" data-lang="ja"><img src="{{ asset('images/icons/japan.svg')}}" alt="JAPONÉS" height="15px" width="15px"> JAPONÉS</a></li>
                        <li><a href="#googtrans(es|pt)" class="lang-es lang-select" data-lang="pt"><img src="{{ asset('images/icons/portugal.svg')}}" alt="PORTUGUÉS" height="15px" width="15px"> PORTUGUÉS</a></li>
                        <li><a href="#googtrans(es|ru)" class="lang-es lang-select" data-lang="ru"><img src="{{ asset('images/icons/russia.svg')}}" alt="RUSO" height="15px" width="15px"> RUSO</a></li>
                        <li><a href="#googtrans(es|vi)" class="lang-es lang-select" data-lang="vi"><img src="{{ asset('images/icons/vietnam.svg')}}" alt="VIETNAMITA" height="15px" width="15px"> VIETNAMITA</a></li>
                        
                        </ul>
                    </li>
                    </ul>
                </div>
            </div><!--CT-TOPBAR END-->

                <li class="nav-item li-register-button">
                    <a type="button" class="btn btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRARME</a> <!--/login-->
                </li>

                <li class="nav-item li-register-button">
                    <a type="button" class="btn btn-register-header" href="{{ route('log').'?act=0' }}">ENTRAR</a> <!--/login-->
                </li>
            @else
            <div class="ct-topbar">
                <div class="container">
                    <ul class="list-unstyled list-inline ct-topbar__list">
                    <li class="ct-language">IDIOMA
                        <ul class="list-unstyled ct-language__dropdown">
                        <li><a href="#googtrans(es|de)" class="lang-en lang-select" data-lang="de"><img src="{{ asset('images/icons/germany.svg')}}" alt="ALEMÁN" height="15px" width="15px"> ALEMÁN</a></li>
                        <li><a href="#googtrans(es|ar)" class="lang-en lang-select" data-lang="ar"><img src="{{ asset('images/icons/saudi-arabia.svg')}}" alt="ÁRABE" height="15px" width="15px"> ÁRABE</a></li>
                        <li><a href="#googtrans(es|zh-CN)" class="lang-es lang-select" data-lang="zh-CN"><img src="{{ asset('images/icons/china.svg')}}" alt="CHINO" height="15px" width="15px"> CHINO</a></li>
                        <li><a href="#googtrans(es|es)" class="lang-en lang-select" data-lang="es"><img src="{{ asset('images/icons/spain.svg')}}" alt="ESPAÑOL" height="15px" width="15px"> ESPAÑOL</a></li>
                        <li><a href="#googtrans(es|fr)" class="lang-es lang-select" data-lang="fr"><img src="{{ asset('images/icons/france.svg')}}" alt="FRANCÉS" height="15px" width="15px"> FRANCÉS</a></li>
                        <li><a href="#googtrans(es|hi)" class="lang-en lang-select" data-lang="hi"><img src="{{ asset('images/icons/india.svg')}}" alt="HINDI" height="15px" width="15px"> HINDI</a></li>
                        <li><a href="#googtrans(es|en)" class="lang-en lang-select" data-lang="en"><img src="{{ asset('images/icons/united-states-of-america.svg')}}" alt="INGLÉS" height="15px" width="15px"> INGLÉS</a></li>
                        <li><a href="#googtrans(es|it)" class="lang-en lang-select" data-lang="it"><img src="{{ asset('images/icons/italy.svg')}}" alt="ITALIANO" height="15px" width="15px"> ITALIANO</a></li>
                        <li><a href="#googtrans(es|pt)" class="lang-es lang-select" data-lang="ja"><img src="{{ asset('images/icons/japan.svg')}}" alt="JAPONÉS" height="15px" width="15px"> JAPONÉS</a></li>
                        <li><a href="#googtrans(es|pt)" class="lang-es lang-select" data-lang="pt"><img src="{{ asset('images/icons/portugal.svg')}}" alt="PORTUGUÉS" height="15px" width="15px"> PORTUGUÉS</a></li>
                        <li><a href="#googtrans(es|ru)" class="lang-es lang-select" data-lang="ru"><img src="{{ asset('images/icons/russia.svg')}}" alt="RUSO" height="15px" width="15px"> RUSO</a></li>
                        <li><a href="#googtrans(es|vi)" class="lang-es lang-select" data-lang="vi"><img src="{{ asset('images/icons/vietnam.svg')}}" alt="VIETNAMITA" height="15px" width="15px"> VIETNAMITA</a></li>
                        
                        </ul>
                    </li>
                    </ul>
                </div>
            </div><!--CT-TOPBAR END-->

                <!--<li class="nav-item" id="li-search-larger" style="padding-right: 5px;">
                    <a class="nav-link items-header" href="#"><i class="fa fa-search"></i></a>
                </li>
                <li class="nav-item" id="li-search-small" style="display: none;">
                    <a class="nav-link items-header" href="#">BUSCAR</a>
                </li>
                <li class="nav-item" id="li-home-larger">
                    <a class="nav-link items-header" href="#"><i class="fa fa-home"></i> <span class="badge badge-pill badge-primary badge-header">9+</span></a>
                </li>
                <li class="nav-item" id="li-messages-larger">
                    <a class="nav-link items-header" href="#"><i class="fa fa-envelope"></i> <span class="badge badge-pill badge-primary badge-header">3</span></a>
                </li>
                <li class="nav-item" id="li-messages-small" style="display: none;">
                    <a class="nav-link items-header" href="#">MENSAJES</a>
                </li>
                <li class="nav-item dropdown" id="li-notifications-larger">
                    <a class="nav-link items-header" role="button" data-toggle="dropdown" data-target="#"><i class="fa fa-bell"></i> <span class="badge badge-pill badge-primary badge-header">3</span></a>

                    @include('layouts.partials.notificationsDropdown')
                </li>
                <li class="nav-item" id="li-notifications-small" style="display: none;">
                    <a class="nav-link items-header" href="#">NOTIFICACIONES</a>
                </li>-->

                <li class="nav-item dropdown dropleft" id="li-user-larger" style="padding-right: 10px;">
                    <img class="dropdown-toggle items-header" id="navbarDropdown2" role="button" data-toggle="dropdown" src="{{asset('/uploads/avatar/'.Auth::user()->avatar)}}" alt="" style="width: 40px; height: 40px; border-radius: 50%;">

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                        {{ __('Salir') }}
                    </a>

                 <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                     @csrf
                 </form>
                 <a class="dropdown-item" href="{{route ('admin.user.edit')}}">Ver perfil <i class=" fa fa-angle-right"> </i></a>
                    </div>
                </li>
            @endif
        </ul>
    </div>
</nav>
