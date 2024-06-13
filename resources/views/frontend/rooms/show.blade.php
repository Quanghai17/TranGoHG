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
        <h1>Chi Tiết Sản Phẩm</h1>
      </div>
    </div>
  </div>
</div>


  <!-- Room Content -->
  <section class="rooms-page section-padding" data-scroll-index="1">
    <div class="container">
      <!-- project content -->
      <div class="row">
        <div class="col-md-12">
          <div class="section-subtitle">{{$product->price}}₫ / m²</div>
          <div class="section-title">{{ $product->title }}</div>
        </div>
        <div class="col-md-8">
          <div class="row">
            <div class="col-md-12">
              {!! $product->body !!}
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="butn-dark mt-15 mb-30"> <a href="#book"><span>Liên Hệ</span></a> </div>
            </div>
          </div>
        </div>
        <div class="col-md-3 offset-md-1">
          <h6>Chất lượng sản phẩm</h6>
          <ul class="list-unstyled page-list mb-30">
            <li>
            <div class="page-list-icon"> <span class="flaticon-towel"></span> </div>
            <div class="page-list-text">
                <p>Gỗ tự nhiên 100%</p>
            </div>
            </li>
            <li>
            <div class="page-list-icon"> <span class="flaticon-towel"></span> </div>
            <div class="page-list-text">
                <p>Màu sắc sang trọng</p>
            </div>
            </li>
            <li>
            <div class="page-list-icon"> <span class="flaticon-towel"></span> </div>
            <div class="page-list-text">
                <p>Đội ngũ lắp giáp chuyên nghiệp</p>
            </div>
            </li>
            <li>
            <div class="page-list-icon"> <span class="flaticon-towel"></span> </div>
            <div class="page-list-text">
                <p>Tư vấn miễn phí</p>
            </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  
  <!-- Similiar Room -->
  <section class="rooms1 section-padding bg-black">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section-subtitle"><span>Trần Gỗ Hoàng Gia</span></div>
          <div class="section-title"><span>Sản Phẩm Khác</span></div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="owl-carousel owl-theme">
            @foreach ($products  as $item)
            @php
              $images = json_decode($item->images);
            @endphp
              <div class="item">
                <div class="position-re o-hidden"> <img style="object-fit: cover;height: 460px"  loading="lazy" src="{{ Voyager::image($images[0]) }}" alt="{{ $item->title }}"> </div> 
                <span class="category"><a href="{{ route('products.show', $item->slug) }}">Trần Gỗ Hoàng Gia</a></span>
                <div class="con">
                  <h6><a href="{{ route('products.show', $item->slug) }}">{{ number_format($item->price) }}₫ / m²</a></h6>
                  <h5><a href="{{ route('products.show', $item->slug) }}">{{ $item->title }}</a> </h5>
                  <div class="line"></div>
                  <div class="row facilities">
                    <div class="col col-md-7">
                      
                    </div>
                    <div class="col col-md-5 text-right">
                      <div class="permalink"><a href="{{ route('products.show', $item->slug) }}">Xem Chi Tiết<i class="ti-arrow-right"></i></a></div>
                    </div>
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
