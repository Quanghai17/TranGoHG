@extends('frontend.layouts.default')
@php
    $banner = \App\Banner::where('slug', 'breadcrumb-about')->first();
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
          <h1>{{ $post->title }}</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Post -->
  <section class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <img loading="lazy" style="aspect-ratio: 3/2; object-fit: cover;" src="{{ Voyager::image($post->image) }}"
            class="mb-30" alt="{{ $post->title }}">
          {!! $post->body !!}
        </div>
        <!-- Sidebar -->
        <div class="col-md-4">
          <div class="news2-sidebar row">
            <div class="col-md-12">
              <div class="widget search">
                <form action="{{ route('posts.index') }}">
                  <input type="text" name="search" placeholder="{{ __('Type here ...') }}">
                  <button type="submit"><i class="ti-search" aria-hidden="true"></i></button>
                </form>
              </div>
            </div>
            <div class="col-md-12">
              <div class="widget">
                <div class="widget-title">
                  <h6>Bài Viết Khác</h6>
                </div>
                <ul class="recent">
                  @foreach ($post_similiar as $item)
                    <li>
                      <div class="thum"> <img loading="lazy" style="aspect-ratio: 3/2; object-fit: cover;"
                          src="{{ Voyager::image($item->getThumbnail($item->image, 'cropped')) }}" alt="{{ $item->title }}"> </div>
                      <a href="{{ route('posts.show', $item->slug) }}">{{ $item->title }}</a>
                    </li>
                  @endforeach

                  @if (count($post_similiar) == 0)
                    <li>{{ __('No recent Meetings') }}</li>
                  @endif
                </ul>
              </div>
            </div>
            <div class="col-md-12">
              <div class="widget">
                <div class="widget-title">
                  <h6>{{ __('Tags') }}</h6>
                </div>
                <ul class="tags">
                  <li><a href="#">{{ __($item->tag) }}</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  @include('frontend.components.book')
@endsection
