@extends('frontend.layouts.default')

@section('content')
  <!-- Header Banner -->
  <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4"
    data-background="{{ Voyager::image($banner->image) }}">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-left caption mt-90">
          <h5>{{ __('Meetings & Events') }}</h5>
          <h1>{{ $offer->translate()->title }}</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Post -->
  <section class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <img loading="lazy" style="aspect-ratio: 3/2; object-fit: cover;" src="{{ Voyager::image($offer->image) }}"
            class="mb-30" alt="{{ $offer->translate()->title }}">
          {!! $offer->translate()->body !!}
        </div>
        <!-- Sidebar -->
        <div class="col-md-4">
          <div class="news2-sidebar row">
            <div class="col-md-12">
              <div class="widget search">
                <form action="{{ route('offers.index') }}">
                  <input type="text" name="search" placeholder="{{ __('Type here ...') }}">
                  <button type="submit"><i class="ti-search" aria-hidden="true"></i></button>
                </form>
              </div>
            </div>
            <div class="col-md-12">
              <div class="widget">
                <div class="widget-title">
                  <h6>{{ __('Recent Meetings') }}</h6>
                </div>
                <ul class="recent">
                  @foreach ($offer_similiar as $item)
                    <li>
                      <div class="thum"> <img loading="lazy" style="aspect-ratio: 3/2; object-fit: cover;"
                          src="{{ Voyager::image($item->getThumbnail($item->image, 'cropped')) }}" alt="{{ $item->translate()->title }}"> </div>
                      <a href="{{ route('offers.show', $item->slug) }}">{{ $item->translate()->title }}</a>
                    </li>
                  @endforeach

                  @if (count($offer_similiar) == 0)
                    <li>{{ __('No recent Meetings') }}</li>
                  @endif
                </ul>
              </div>
            </div>
            {{-- <div class="col-md-12">
            <div class="widget">
              <div class="widget-title">
                <h6>{{__('Tags')}}</h6>
              </div>
              <ul class="tags">
                <li><a href="#">{{ __($item->translate()->tag )}}</a></li>
              </ul>
            </div>
          </div> --}}
          </div>
        </div>
      </div>
    </div>
  </section>

  @include('frontend.components.book')
@endsection
