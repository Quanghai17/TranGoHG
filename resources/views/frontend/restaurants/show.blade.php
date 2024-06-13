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
          <h1>{{ $project->name }}</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Post -->
  <section class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <img loading="lazy" style="aspect-ratio: 3/2; object-fit: cover;" src="{{ Voyager::image($project->images) }}"
            class="mb-30" alt="{{ $project->title }}">
          {!! $project->body !!}
        </div>
        <!-- Sidebar -->
  </section>
  <section class="video-wrapper video section-padding bg-img bg-fixed" data-overlay-dark="3"
    data-background="{{ Voyager::image(setting('site.background')) }}">
    <div class="container">
      <div class="row">
        <div class="col-md-8 offset-md-2 text-center">
          <span><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i
              class="star-rating"></i></span>
          <div class="section-subtitle"><span>Trần Gỗ Hoàng Gia</span></div>
          <div class="section-title"><span>Video Giới Thiệu</span></div>
        </div>
      </div>
      <div class="row">
        <div class="text-center col-md-12">
          <a class="vid" href="{{setting('site.link_Youtube')}}">
            <div class="vid-butn">
              <span class="icon">
                <i class="ti-control-play"></i>
              </span>
            </div>
          </a>
        </div>

      </div>
    </div>
  </section>
@endsection
