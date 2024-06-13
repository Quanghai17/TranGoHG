@php
    $banner = \App\Banner::first();
@endphp
<!-- Reservation & Booking Form -->
<section id="book" class="testimonials">
  <div class="background bg-img bg-fixed section-padding pb-0"
    data-background="{{ Voyager::image($banner->image) }}" data-overlay-dark="2">
    <div class="container">
      <div class="row">
        <!-- Reservation -->
        <div class="col-md-5 mb-30 mt-30">
          <p><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i
              class="star-rating"></i></p>
          <h5>Trần gỗ Hoàng Gia</h5>
          <div class="reservations mb-30">
            <div class="icon color-1"><span class="flaticon-call"></span></div>
            <div class="text">
              <p class="color-1">{{ __('Call') }}</p> <a class="color-1"
                href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
            </div>
          </div>
          <div class="icon_custom">{{setting('site.description')}}</div>
        </div>
        <!-- Booking From -->
      </div>
    </div>
  </div>
</section>