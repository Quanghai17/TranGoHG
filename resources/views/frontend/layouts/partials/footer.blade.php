@php
  $menu = menu('Home menu', '_json');
@endphp

<!-- Footer -->
<footer class="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="footer-column footer-about">
            <div class="logo">
              <img loading="lazy" src="{{ Voyager::image(setting('site.logo')) }}" 
                data-src="{{ Voyager::image(setting('site.logo')) }}"
                data-src-dark="{{ Voyager::image(setting('site.logo')) }}" 
                class="logo-img"
                alt="{{ setting('site.title') }}">
            </div>
            <p class="footer-about-text">
           {{setting('site.description')}}
            </p>
          </div>
        </div>
        <div class="col-md-3 offset-md-1">
          <div class="footer-column footer-explore clearfix">
            <h3 class="footer-title">Menu</h3>
            <ul class="footer-explore-list list-unstyled">
              @foreach ($menu as $item)
                <li><a href="{{ $item->url }}">{{ $item->title }}</a></li>
              @endforeach
            </ul>
          </div>
        </div>
        <div class="col-md-4">
          <div class="footer-column footer-contact">
            <h3 class="footer-title">Liên Hệ</h3>
            <p class="footer-contact-text" style="white-space: pre-line">{{setting('site.address')}}
            </p>
            <div class="footer-contact-info">
              <p class="footer-contact-phone"> {{ setting('site.phone') }}</p>
              <p class="footer-contact-mail">{{ setting('site.email') }}</p>
            </div>
            <div class="footer-about-social-list">
              @if (!empty(setting('social-network.facebook')))
                <a href="{{ setting('social-network.facebook') }}"><i class="ti-facebook"></i></a>
              @endif
              @if (!empty(setting('social-network.youtube')))
                <a href="{{ setting('social-network.youtube') }}"><i class="ti-youtube"></i></a>
              @endif
              @if (!empty(setting('social-network.twitter')))
                <a href="{{ setting('social-network.twitter') }}"><i class="ti-twitter"></i></a>
              @endif
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="footer-bottom-inner">
            <p class="footer-bottom-copy-right">© Copyright {{ date('Y') }} by {{setting('site.title')}}. All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
