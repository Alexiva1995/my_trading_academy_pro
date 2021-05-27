<nav class="navbar navbar-expand-lg navbar-dark bg-dark-gray border-bottom" style="height: 70px; position: fixed; z-index: 1000; width: 100%;">
    <div class="sidebar-heading pr-3 pt-3" style="height: 70px">
        <img src="{{ asset('images/logoverticalblanco.png') }}" width="200" height="45">
    </div>
    <button class="btn ml-3" id="menu-toggle" style="background-color: #28a745 !important; color: #fff"><i class="fas fa-bars"></i></button>

    <button class="navbar-toggler d-none" type="button" data-toggle="collapse" data-target="#navbarItems" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarItems" style="z-index: 1000;">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0 header-list">
            <li class="nav-item active">
                <a class="nav-link items-header" href="{{route('index')}}">HOME</a>
            </li>
            <li class="nav-item">
               <a class="nav-link items-header" href="{{route('step1')}}">NOSOTROS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header" href="{{route('nosotros.gratis')}}">GRATIS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header" href="{{route('step3')}}">BLOG</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link items-header dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">AFILIADOS</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #212529 !important;">
                    <a class="dropdown-item items-header" href="{{ route('blog.afiliados')}}">AFILIADOS</a>
                    <a class="dropdown-item items-header" href="{{ route('blog.coaches')}}">COACHES</a>
                    <a class="dropdown-item items-header" href="{{ route('blog.comisiones')}}">COMISIONES</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link items-header" href="{{route('courses')}}">ACADEMIA</a>
            </li>
            @if (Auth::guest())
                <li class="nav-item">
                    <a class="nav-link items-header" href="{{route('transmisiones')}}">STREAMING</a>
                </li>
            @else
                <li class="nav-item dropdown">
                    <a class="nav-link items-header dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown">STREAMING</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2" style="background-color: #212529 !important;">
                        <a class="dropdown-item items-header" href="{{route('transmisiones')}}">STREAMING</a>
                        <a class="dropdown-item items-header" href="{{ route('schedule.calendar') }}">MIS EVENTOS</a>
                    </div>
                </li>
            @endif
            <li class="nav-item dropdown">
                <a class="nav-link items-header text-center dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    TRADING SOCIAL
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #212529 !important;">
                    <a class="dropdown-item items-header" href="{{route('trading')}}">TRADING SOCIAL</a>
                    <a class="dropdown-item items-header" href="{{route('inversiones')}}">INVERSIONES</a>
                    @if (!Auth::guest())
                        <a class="dropdown-item items-header" href="{{route('senales-senales')}}">SEÑALES</a>
                    @endif
                </div>
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
                </div>
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
