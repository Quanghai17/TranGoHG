<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
  <meta name="keywords" content="{{ $pageMeta['title'] ?? setting('site.title') }}">

  <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

  <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" type="image/png">

  <meta property="og:image"
    content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
  <meta property="og:url" content="{{ \Request::fullUrl() }}" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
  <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Barlow&amp;family=Barlow+Condensed&amp;family=Gilda+Display&amp;display=swap">
  <link rel="stylesheet" href="{{ asset('assets/css/plugins.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/custom.css') }}" />
  <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/custom01.css')}}">

  @yield('style')
  @stack('style')

  @yield('head')
  @stack('head')
  
</head>

<body>
  @include('frontend.layouts.partials.alert')

  <!-- Preloader -->
  <div class="preloader-bg"></div>
  <div id="preloader">
    <div id="preloader-status">
      <div class="preloader-position loader"> <span></span> </div>
    </div>
  </div>

  <!-- Progress scroll totop -->
  <div class="progress-wrap cursor-pointer">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
      <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
    </svg>
  </div>

  @include('frontend.layouts.partials.header')

  @yield('content')

  @include('frontend.layouts.partials.footer')
  <div class="hotline-phone-ring-wrap float-icon-hotline">
    <ul class="left-icon hotline">
        <li class="hotline_float_icon" style="left: 33px; bottom: -30px;">
            <a target="_blank" rel="nofollow" id="messengerButton"
               href="https://zalo.me/{{ setting('site.phone') }}"><i
                        class="fa fa-zalo animated infinite tada"></i><span>Zalo</span></a></li>
        <li>
            <div class="hotline-phone-ring">
                <div class="hotline-phone-ring-circle"></div>
                <div class="hotline-phone-ring-circle-fill"></div>
                <div class="hotline-phone-ring-img-circle"><a href="tel:{{ setting('site.phone') }}" class="pps-btn-img" style="transform: translate(-2px,0px) rotate(-6deg);">
                        <img src="{{asset('assets/img/icons8-phone-96.png')}}" alt="so dien thoai" width="50"> 
                    </a></div>
            </div>
            <div class="hotline-bar">
                <a class="text-hotline" href="tel:{{ setting('site.phone') }}">
                    {{ setting('site.phone') }}
                </a>
            </div>
        </li>
    </ul>
  </div> 

  <!-- jQuery -->
  <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery-migrate-3.0.0.min.js') }}"></script>
  <script src="{{ asset('assets/js/modernizr-2.6.2.min.js') }}"></script>
  <script src="{{ asset('assets/js/imagesloaded.pkgd.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.isotope.v3.0.2.js') }}"></script>
  <script src="{{ asset('assets/js/pace.js') }}"></script>
  <script src="{{ asset('assets/js/popper.min.js') }}"></script>
  <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('assets/js/scrollIt.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.waypoints.min.js') }}"></script>
  <script src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.stellar.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.magnific-popup.js') }}"></script>
  <script src="{{ asset('assets/js/YouTubePopUp.js') }}"></script>
  <script src="{{ asset('assets/js/select2.js') }}"></script>
  <script src="{{ asset('assets/js/datepicker.js') }}"></script>
  <script src="{{ asset('assets/js/smooth-scroll.min.js') }}"></script>
  <script src="{{ asset('assets/js/custom.js') }}"></script>

  @yield('js')
  @stack('js')
</body>

</html>
