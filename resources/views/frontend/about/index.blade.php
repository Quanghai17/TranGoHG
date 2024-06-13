@extends('frontend.layouts.default')
@php
    $banner = \App\Banner::first();
@endphp

@section('content')
<!-- Header Banner -->
<div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4"
  data-background="{{ Voyager::image($banner->image) }}">
    <div class="container">
      <div class="row">
        <div class="col-md-12 caption mt-90">
          <span>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
          </span>
          <h5></h5>
          <h1>Giới Thiệu</h1>
        </div>
      </div>
    </div>
  </div>
 <!-- About -->
 <section class="about section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mb-30 animate-box" data-animate-effect="fadeInUp">
          <span>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
            <i class="star-rating"></i>
          </span>
          <div class="section-subname">{{ $about->title }}</div>
          <div class="section-title">{{ $about->decs }}</div>
          {!! $about->body !!}
          <!-- call -->
          <div class="reservations">
            <div class="icon"></div>
            <div class="text">
              <p>Liên Hệ Tư Vấn</p> <a
                href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
            </div>
          </div>
        </div>

        @php
          $images = json_decode($about->images);
        @endphp
       
        <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
          <img loading="lazy" src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}" class="mt-90 mb-30">
        </div>
        <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
          <img loading="lazy" src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}">
        </div>
      </div>
    </div>
  </section>
  
@endsection
