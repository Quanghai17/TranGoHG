@extends('frontend.layouts.default')

@section('content')
  <!-- Header Banner -->
  <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4"
    data-background="{{ Voyager::image($banner->image) }}">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-left caption mt-90">
          @if (isset(request()->search))
            <h5><a href="{{ route('offers.index') }}">{{ __('Offers') }}</a> / {{ __('Search') }}:
              {{ request()->search }}</h5>
          @else
            <h5>{{ __('Enticing offers') }}</h5>
          @endif

          <h1>{{ $banner->translate()->title }}</h1>
        </div>
      </div>
    </div>
  </div>


  <!-- News  -->
  <section class="news section-padding bg-black">
    <div class="container">
      <div class="row">
        @foreach ($offers as $offer)
          <div class="col-md-4 mb-30">
            <div class="item team">
              <div class="position-re o-hidden"> <img loading="lazy"
                  src="{{ Voyager::image($offer->getThumbnail($offer->image, 'cropped')) }}" alt="{{ $offer->translate()->title }}">
                <div class="date">
                  <a href="{{ route('offers.show', $offer->slug) }}">
                    <span>{{ date('M', strtotime($offer->updated_at)) }}</span>
                    <i>{{ date('d', strtotime($offer->updated_at)) }}</i>
                  </a>
                </div>
              </div>
              <div class="info">
                <h6><a href="{{ route('offers.show', $offer->slug) }}">{{ $offer->translate()->title }}</a></h6>
                <p>{{ $offer->translate()->description }}</p>
              </div>
            </div>
          </div>
        @endforeach

        @if (count($offers) == 0)
          <h6 style="width: 100%; text-align: center;">{{ __('No enticing offers') }}</h6>
        @endif
      </div>

      {{ $offers->links('frontend.layouts.partials.paginate') }}
    </div>
  </section>

  @include('frontend.components.book')
@endsection

@section('js')
@endsection
