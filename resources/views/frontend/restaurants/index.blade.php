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
          <h1>Dự Án Đã Thi Công</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="rooms1 section-padding bg-cream" data-scroll-index="1">
    <div class="container">
      <div class="row">
        @foreach ($projects as $key => $project)
        
          <div class="col-md-6">
            <div class="item">
              <div class="position-re o-hidden">
                <img style="height: 480px;object-fit: cover" loading="lazy" src="{{ Voyager::image($project->images) }}" alt="{{ $project->title }}">
              </div>
              <span class="category"><a href="{{ route('projects.show', $project->slug) }}">Trần Gỗ Hoàng Gia</a></span>
              <div class="con">
                 <h6><a href="{{ route('projects.show', $project->slug) }}">{{ number_format(1500000) }}₫ / M2</a></h6>
                <h5><a href="{{ route('projects.show', $project->slug) }}">{{ $project->title }}</a> </h5>
                <div class="line"></div>
                <div class="row facilities">
                  <div class="col col-md-7">
                    
                  </div>
                  <div class="col col-md-5 text-right">
                    <div class="permalink"><a href="{{ route('projects.show', $project->slug) }}">Xem Chi Tiết<i class="ti-arrow-right"></i></a></div>
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
                <img style="height: 200px" loading="lazy" src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}">
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
