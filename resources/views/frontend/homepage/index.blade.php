@extends('frontend.layouts.default')

@section('content')
    <header class="header slider-fade">
        <div class="owl-carousel owl-theme">
            @foreach ($banners as $banner)
                <div class="text-center item bg-img" data-overlay-dark="2"
                    data-background="{{ Voyager::image($banner->image) }}">
                    <div class="v-middle caption">
                        <div class="container">
                            <div class="row">

                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </header>

    <!-- About -->
    <section class="about section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-30 animate-box" data-animate-effect="fadeInUp">
                    <span>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                    </span>
                    <div class="section-subname" style="font-size: 25px;">{{ $about->title }}</div>
                    <div class="section-title" style="font-size: 25px;">{{ $about->excerpt }}</div>
                    {{-- {!! $about->body !!} --}}
                    <!-- call -->
                    <div class="reservations">
                        <div class="icon"></div>
                        <div class="text">
                            <p>Liên Hệ Tư Vấn</p> <a
                                href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
                        </div>
                    </div>
                </div>

                <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
                    <img loading="lazy" src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}"
                        class="mt-90 mb-30">
                </div>
                <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
                    <img loading="lazy" src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}">
                </div>
            </div>
        </div>
    </section>

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
                        // dd($images);
                    @endphp

                    @if ($key < 3)
                        <div class="col-md-4">
                            <div class="item">
                                <div class="position-re o-hidden">
                                    <img style="height: 465px; object-fit: cover;" loading="lazy" src="{{ Voyager::image($images[0]) }}"
                                        alt="{{ $room->title }}">
                                </div>
                            @else
                                <div class="col-md-6">
                                    <div class="item">
                                        <div class="position-re o-hidden">
                                            <img style="height: 465px; object-fit: cover;" loading="lazy"
                                                src="{{ Voyager::image($images[0]) }}" alt="{{ $room->title }}">
                                        </div>
                    @endif
                    <span class="category"><a href="#">Nội Thất Sang Trọng</a></span>
                    <div class="con">
                        <h6><a href="{{ route('products.show', $room->slug) }}">{{ number_format($room->price) }}₫ /
                                m²</a></h6>
                        <h5><a href="{{ route('products.show', $room->slug) }}">{{ $room->title }}</a> </h5>
                        <div class="line"></div>
                        <div class="row facilities">
                            <div class="col col-md-7">
                            </div>
                            <div class="col col-md-5 text-right">
                                <div class="permalink"><a href="{{ route('products.show', $room->slug) }}">Xem Chi Tiết <i
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

    <section class="pricing section-padding bg-black">
      <div class="container">
          <div class="row">
              <div class="col-md-4">
                  <div class="section-subtitle"><span>Giá Tốt Nhất</span></div>
                  <div class="section-title"><span>Loại gỗ được dùng để làm trần</span></div>
                  <p>Các loại gỗ thường được dùng làm trần gỗ hiện nay phổ biến nhất như gỗ hương, gỗ gõ đỏ, gỗ pơ mu, gỗ
                      xoan, gỗ sồi,…Theo đánh giá thì gỗ hương, gỗ gõ đỏ thuộc nhóm gỗ tốt nhất sau đó đến gỗ pơ mu, cuối
                      cùng là gỗ xoan và gỗ sồi xếp cuối.</p>
                  <div class="reservations mb-30">
                      <div class="icon"></div>
                      <div class="text">
                          <p class="color-2">Liên Hệ Số Điện Thoại</p> <a
                              href="tel:{{ preg_replace('/[^0-9]+/', '', setting('site.phone')) }}">{{ setting('site.phone') }}</a>
                      </div>
                  </div>
              </div>
              <div class="col-md-8">
                  <div class="owl-carousel owl-theme">
                      @foreach ($services as $service)
                          <div class="pricing-card">
                              <img style="height: 200px" loading="lazy" src="{{ Voyager::image($service->image) }}"
                                  alt="{{ $service->title }}">
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
                    <a class="vid" href="{{ setting('site.link_Youtube') }}">
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

    <section class="services section-padding">
      <div class="container">
          @foreach ($restaurants as $key => $restaurant)
              @php
                  $images = json_decode($restaurant->images);
              @endphp
              <div class="row">
                  @if ($key % 2 == 0)
                      <div class="col-md-6 p-0 animate-box" data-animate-effect="fadeInLeft">
                          <div class="img left">
                              <a href="{{ route('projects.show', $restaurant->slug) }}"><img
                                      style="height: 380px; width: 570px;object-fit: cover;" loading="lazy"
                                      src="{{ Voyager::image($restaurant->images) }}"
                                      alt="{{ $restaurant->title }}"></a>
                          </div>
                      </div>
                      <div class="col-md-6 p-0 bg-cream valign animate-box" data-animate-effect="fadeInRight">
                          <div class="content">
                              <div class="cont text-left">
                                  <div class="info">
                                      <h6>Công Trình</h6>
                                  </div>
                                  <h4>{{ $restaurant->name }}</h4>
                                  <p>{{ $restaurant->desc }}</p>
                                  <div class="butn-dark"> <a
                                          href="{{ route('projects.show', $restaurant->slug) }}"><span>Đọc
                                              thêm</span></a> </div>
                              </div>
                          </div>
                      </div>
                  @else
                      <div class="row">
                          <div class="col-md-6 bg-cream p-0 order2 valign animate-box" data-animate-effect="fadeInLeft">
                              <div class="content">
                                  <div class="cont text-left">
                                      <div class="info">
                                          <h6>Công Trình</h6>
                                      </div>
                                      <h4>{{ $restaurant->name }}</h4>
                                      <p>{{ $restaurant->description }}</p>
                                      <div class="butn-dark"> <a
                                              href="{{ route('projects.show', $restaurant->slug) }}"><span>Đọc
                                                  thêm</span></a> </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-md-6 p-0 order1 animate-box" data-animate-effect="fadeInRight">
                              <div class="img">
                                  <a href="{{ route('projects.show', $restaurant->slug) }}">
                                      <img style="object-fit: cover;height: 380px; width: 570px" loading="lazy"
                                          src="{{ Voyager::image($restaurant->images) }}"
                                          alt="{{ $restaurant->name }}"></a>
                              </div>
                          </div>
                      </div>
                  @endif
              </div>
          @endforeach
      </div>
    </section>

  <section class="news section-padding bg-black">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-subtitle"><span>Tin tức & Bài Viết</span></div>
                <div class="section-title"><span>Tin tức & Bài Viết</span></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-theme">
                    @foreach ($posts as $post)
                        <div class="item">
                            <div class="position-re o-hidden"> <img style="height: 380px;object-fit: cover;"
                                    src="{{ Voyager::image($post->image) }}" alt="{{ $post->title }}">
                                <div class="date">
                                    <a href="#"> <span>{{ date('M', strtotime($post->updated_at)) }}</span>
                                        <i>{{ date('d', strtotime($post->updated_at)) }}</i> </a>
                                </div>
                            </div>
                            <div class="con"> <span class="category">
                                    <span>Nội Thất Sang Trọng</span>
                                    <h5><a href="{{ route('posts.show', $post->slug) }}">{{ $post->title }}</a></h5>
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
