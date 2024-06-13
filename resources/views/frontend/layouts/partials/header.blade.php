@php
  $menu = menu('Home menu', '_json');
@endphp

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
  <div class="container">
    <!-- Logo -->
    <div class="logo-wrapper navbar-brand valign">
      <a href="{{ url('') }}">
        <div class="logo">
          <img loading="lazy" src="{{ Voyager::image(setting('site.logo')) }}" 
            data-src="{{ Voyager::image(setting('site.logo')) }}"
            data-src-dark="{{ Voyager::image(setting('site.logo')) }}" 
            class="logo-img"
            alt="{{ setting('site.title') }}">
        </div>
      </a>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span
        class="icon-bar"><i class="ti-line-double"></i></span> </button>
    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        @foreach ($menu as $item)
          <li class="nav-item @if (count($item->children) > 0) dropdown @endif"> 
            <a href="{{ url($item->url) }}" class="nav-link @if($item->url == "/".request()->segment(1)) active @endif"> 
              {{ $item->translate()->title }} 
              @if (count($item->children) > 0)
                <i class="ti-angle-down"></i>
              @endif
            </a>

            @if (count($item->children) > 0)
              <ul class="dropdown-menu last" style="width: max-content;">
                @foreach ($item->children as $child)
                  <li class="dropdown-item @if(url($child->url) == url()->current()) active @endif">
                    <a href="{{ url($child->url) }}">{{ $child->translate()->title }}</a>
                  </li>
                @endforeach
              </ul>
            @endif
          </li>
        @endforeach
      </ul>
    </div>
  </div>
</nav>
