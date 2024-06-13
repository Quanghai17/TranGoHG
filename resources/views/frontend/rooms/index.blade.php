@extends('frontend.layouts.default')
@php
    $banner = \App\Banner::first();
@endphp
@section('content')
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
          <h1>Sản Phẩm</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="rooms1 section-padding bg-cream" data-scroll-index="1">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-subtitle"></div>
          <div class="section-title">Sản Phẩm Của Chúng Tôi</div>
        </div>
      </div>
      <div class="row">
        @foreach ($products as $key => $room)
          @php
            $images = json_decode($room->images);
          @endphp
          
          @if ($key < 3)
            <div class="col-md-4">
              <div class="item">
                <div class="position-re o-hidden">
                  <img style="object-fit: cover;height: 460px" loading="lazy" src="{{ Voyager::image($images[0]) }}" alt="{{ $room->title }}">
                </div>
          @else
            <div class="col-md-6">
              <div class="item">
                <div class="position-re o-hidden">
                  <img style="object-fit: cover;height: 460px" loading="lazy" src="{{ Voyager::image($images[0]) }}" alt="{{ $room->title }}">
                </div>
          @endif
                <span class="category"><a href="#">Nội Thất Sang Trọng</a></span>
                <div class="con">
                  <h6><a href="#">{{ number_format($room->price) }}₫ / m²</a></h6>
                  <h5><a href="{{ route('products.show', $room->slug) }}">{{ $room->title }}</a> </h5>
                  <div class="line"></div>
                  <div class="row facilities">
                    <div class="col col-md-7">
                    </div>
                    <div class="col col-md-5 text-right">
                      <div class="permalink"><a href="{{ route('products.show', $room->slug) }}">{{ __('Details') }} <i
                            class="ti-arrow-right"></i></a></div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </section>

    <!-- Pricing -->
    <section class="pricing section-padding bg-black">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="section-subtitle"><span>Giá Tốt Nhất</span></div>
          <div class="section-title"><span>Loại gỗ được dùng để làm trần</span></div>
          <p>Các loại gỗ thường được dùng làm trần gỗ hiện nay phổ biến nhất như gỗ hương, gỗ gõ đỏ, gỗ pơ mu, gỗ xoan, gỗ sồi,…Theo đánh giá thì gỗ hương, gỗ gõ đỏ thuộc nhóm gỗ tốt nhất sau đó đến gỗ pơ mu, cuối cùng là gỗ xoan và gỗ sồi xếp cuối.</p>
          <div class="reservations mb-30">
            <div class="icon"></div>
            <div class="text">
              <p  class="color-2">Liên Hệ Số Điện Thoại</p> <a
                href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
            </div>
          </div>
        </div>
        <div class="col-md-8">
          <div class="owl-carousel owl-theme">
            @foreach ($services as $service)
              <div class="pricing-card">
                <img style="object-fit: cover;height: 200px" loading="lazy" src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}">
                <div class="desc">
                  <div class="name">{{ $service->title }}</div>
                  <div class="amount">{{ number_format($service->price) }}₫ <span> 
                      </span></div>
                  <div class="list-custom">
                    {!! $service->body !!}
                  </div>
                </div>
              </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section>

@endsection

@section('js')
@endsection
