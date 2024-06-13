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
          <h1>liên Hệ Chúng Tôi</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Contact -->
  <section class="contact section-padding">
    <div class="container">
      <div class="row mb-90">
        <div class="col-md-6 mb-60">
          <h3>{{setting('site.title')}}</h3>
          <p>{{setting('site.description')}}</p>
          <div class="reservations mb-30">
            <div class="icon"><span class="flaticon-call"></span></div>
            <div class="text">
              <p>Liên hệ</p> <a
                href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
            </div>
          </div>
          <div class="reservations mb-30">
            <div class="icon"><span class="flaticon-envelope"></span></div>
            <div class="text">
              <p>{{ __('Email Info') }}</p> <a
                href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a>
            </div>
          </div>
          <div class="reservations">
            <div class="icon"><span class="flaticon-location-pin"></span></div>
            <div class="text" style="white-space: pre-wrap"><p>{{ __('Address') }}</p>@if (App::getLocale() == 'vi'){{setting('site.address_vi')}}@else{{setting('site.address')}}@endif</div>
          </div>
        </div>
        <div class="col-md-5 mb-30 offset-md-1">
          <h3>Gửi liên hệ</h3>
          <form action='feedback' method="POST" class="contact__form">
            @csrf
              <!-- form message -->
              
              <!-- form elements -->
              <div class="row">
                  <div class="col-md-6 form-group">
                      <input name="name" type="text" placeholder="Họ Tên *" required>
                  </div>
                  <div class="col-md-6 form-group">
                      <input name="email" type="email" placeholder="Email *" required>
                  </div>
                  <div class="col-md-6 form-group">
                      <input name="phone" type="text" placeholder="Số điện thoại *" required>
                  </div>
                  <div class="col-md-6 form-group">
                      <input name="address" type="text" placeholder="Địa chỉ *" required>
                  </div>
                  <div class="col-md-12 form-group">
                      <textarea name="content" id="message" cols="30" rows="4" placeholder="Lời nhắn *" required></textarea>
                  </div>
                  <div class="col-md-12">
                      <button type="submit" class="butn-dark"><a type="submit"><span>Gửi liên hệ</span></a></button>
                  </div>
              </div>
          </form>
      </div>
      </div>
      <!-- Map Section -->
      <div class="row">
          <style>
            .map iframe {
              width: 100% !important;
              height: 600px !important;
            }
          </style>
        <div class="col-md-12 map animate-box map" data-animate-effect="fadeInUp">
          {!! setting('site.map') !!}
        </div>
      </div>
    </div>
  </section>

  @include('frontend.components.book')
@endsection
