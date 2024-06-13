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
          <h1>Bài Viết & Tin Tức</h1>
        </div>
      </div>
    </div>
  </div>


  <!-- News  -->
  <section class="news section-padding bg-black">
    <div class="container">
      <div class="row">
        @foreach ($posts as $post)
          <div class="col-md-4 mb-30">
            <div class="item">
              <div class="position-re o-hidden"> <img loading="lazy" style="height: 380px;" 
                  src="{{ Voyager::image($post->image) }}" alt="{{ $post->title }}">
                <div class="date">
                  <a href="{{ route('posts.show', $post->slug) }}">
                    <span>{{ date('M', strtotime($post->updated_at)) }}</span>
                    <i>{{ date('d', strtotime($post->updated_at)) }}</i>
                  </a>
                </div>
              </div>
              <div class="con"> <span class="category">
                  <a href="{{ route('posts.show', $post->slug) }}">{{ $post->tag }}</a>
                </span>
                <h5><a href="{{ route('posts.show', $post->slug) }}">{{ $post->title }}</a></h5>
              </div>
            </div>
          </div>
        @endforeach

        @if (count($posts) == 0)
          <h6 style="width: 100%; text-align: center;">{{ __('No meetings & events') }}</h6>
        @endif
      </div>

      {{ $posts->links('frontend.layouts.partials.paginate') }}
    </div>
  </section>
  @include('frontend.components.book')
  
@endsection

@section('js')
@endsection
