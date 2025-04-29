@php
    use Carbon\Carbon;
@endphp

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Homepage | SATOEFL</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <link href="{{ asset('css/bootstrap-icons.css') }}" rel="stylesheet">

    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    {{-- Icon Plugin Website --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

     {{-- Sweet Alert --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>



</head>

<body>

     @if (session('message'))
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                Swal.fire({
                    title: 'Success!',
                    text: '{{ session('message') }}',
                    icon: 'success',
                    confirmButtonText: 'OK'
                });
            });
        </script>
    @endif

    {{-- Navigasi Bar --}}
    <nav class="navbar navbar-expand-lg">
        <div class="container">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <a href="index.html" class="navbar-brand mx-auto mx-lg-0">
                <i class="bi-bullseye brand-logo"></i>
                <span class="brand-text mt-2 ml-2">SATOEFL</span>
            </a>

            <a class="nav-link custom-btn btn d-lg-none" href="sesi">Login</a>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_1">Beranda</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_2">Tes TOEFL</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_3">Panduan</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_4">FAQ</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_5">ABOUT</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link custom-btn btn d-none d-lg-block" href="sesi">LOGIN</a>
                    </li>
                </ul>
                <div>

                </div>
    </nav>

    <main>

        <section class="hero" id="section_1">
            <img src="images/Kampus UTU.jpg" width="100%" height="100%" alt="">
            <div class="container">
                <div class="row">

                    <div class="col-lg-5 col-12 m-auto">
                        <div class="hero-text">

                            <h1 class="text-white mb-4"><u class="text-info">Welcome</u></h1>

                            <div class="d-flex justify-content-center align-items-center">
                                <span class="date-text">Website Language Center</span>

                                <span class="location-text">Teuku Umar University</span>
                            </div>

                            <a href="#section_2" class="custom-link bi-arrow-down arrow-icon"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="schedule section-padding" id="section_2">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12">
                        <h2 class="mb-5 text-center">Next <u class="text-info">Schedules</u></h2>

                        @foreach ($jadwalTest as $jadwal)
                            <div class="tab-content mt-5" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-DayOne" role="tabpanel"
                                    aria-labelledby="nav-DayOne-tab">
                                    <div class="row border-bottom pb-5 mb-5">
                                        <div class="col-lg-4 col-12">
                                            <img src="images/TOEFL.jpg" class="schedule-image img-fluid" width="1368px"
                                                height="160px">
                                        </div>

                                        <div class="col-lg-8 col-12 mt-3 mt-lg-0">

                                            <h4 class="mb-2">TOEFL TEST</h4>

                                            <p>Keterangan</p>

                                            <div class="d-flex align-items-center mt-4">
                                                <div class="avatar-group d-flex mt-4">
                                                    <img src="images/avatar/TOEFL2.jpg" class="img-fluid avatar-image"
                                                        alt="">

                                                    <div class="ms-3">
                                                        {{ Carbon::parse($jadwal->jadwal)->format('l, d F Y, H:i') }}
                                                        WIB
                                                        <p class="speakers-text mb-0">TOEFL TES</p>
                                                    </div>
                                                </div>
                                                <span class="mx-1 mx-lg-5">
                                                    <i class="bi-layout-sidebar me-2"></i>
                                                    {{ $jadwal->peserta }}/{{ $jadwal->kouta }}
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                        @endforeach
                    </div>
        </section>

        <section class="call-to-action section-padding">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-lg-7 col-12">
                        <h4 class="text-white mb-4">Find out your <u class="text-info">level of English...!</u></h4>
                    </div>

                    <div class="col-lg-3 col-12 ms-lg-auto mt-4 mt-lg-0">
                        <a href="register" class="custom-btn btn">Register Today</a>
                    </div>

                </div>
            </div>
        </section>

        <section class="pricing section-padding" id="section_3">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 col-12 text-center mx-auto mb-5">
                        <h2><u class="text-info">Panduan</u></h2>
                    </div>

                    <h5><i class="center">Coming Soon...</i></h5>
                </div>
            </div>
        </section>

        <section class="pricing section-padding" id="section_4">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 col-12 text-center mx-auto mb-5">
                        <h2><u class="text-info">FAQ</u></h2>
                    </div>

                    <h5><i class="center">Coming Soon...</i></h5>

                </div>
            </div>
        </section>

        <section class="contact section-padding" id="section_5">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12">
                        <h2 class="mb-5">Here you go <u class="text-info">...</u></h2>
                    </div>

                    <div class="col-lg-6 col-12 mb-10">
                        <iframe class="google-map"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3979.3857609923307!2d96.20085067407035!3d4.144299946231628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x303ec5caf44921ef%3A0xff7e96118f92ee3!2sUniversitas%20Teuku%20Umar!5e0!3m2!1sid!2sid!4v1715844493098!5m2!1sid!2sid"
                            width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                    <div class="col-lg-6 col-12 mt-5 mt-lg-0 mb-4">
                        <div class="venue-thumb bg-white shadow-lg">

                            <div class="venue-info-title">
                                <h2 class="text-white mb-0">Universitas Teuku Umar</h2>
                            </div>

                            <div class="venue-info-body">
                                <h4 class="d-flex">
                                    <i class="bi-geo-alt me-2"></i>
                                    <span>Aceh Barat, Meulaboh, Indonesia</span>
                                </h4>

                                <h5 class="mt-4 mb-3">
                                    <a href="mailto:hello@yourgmail.com">
                                        <i class="bi-envelope me-2"></i>
                                        email@gmail.com
                                    </a>
                                </h5>

                                <h5 class="mb-0">
                                    <a href="tel: 305-240-9671">
                                        <i class="bi-telephone me-2"></i>
                                        0822-7512-6681
                                    </a>
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8 col-12 mx-auto">
                        <form class="custom-form contact-form bg-white shadow-lg" action="/feedback" method="POST"
                            role="form">
                            @csrf
                            <h2>Please Say Hi</h2>

                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12 mt-10">
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="Name" required="">
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*"
                                        class="form-control" placeholder="Email" required="">
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <input type="text" name="subject" id="subject" class="form-control"
                                        placeholder="Subject">
                                </div>

                                <div class="col-12">
                                    <textarea class="form-control" rows="5" id="message" name="message" placeholder="Message"></textarea>

                                    <button type="submit" class="form-control">Submit</button>
                                </div>

                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </section>

    </main>

    <footer class="site-footer">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-lg-12 col-12 border-bottom pb-5 mb-5">
                    <div class="d-flex">
                        <a href="index.html" class="navbar-brand">
                            <i class="bi-bullseye brand-logo"></i>
                            <span class="brand-text mt-2">SATOEFL</span>
                        </a>

                        <ul class="social-icon ms-auto">
                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-whatsapp"></a></li>

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                        </ul>
                    </div>
                </div>


                <div class="col-lg-5 col-12 ms-lg-auto">
                    <div class="copyright-text-wrap d-flex align-items-center">
                        <p class="copyright-text ms-lg-auto me-4 mb-0">Copyright © 2024 SATOEFL

                            <br>All Rights Reserved.

                            <a href="#section_1" class="bi-arrow-up arrow-icon custom-link"></a>
                    </div>
                </div>

            </div>
        </div>
    </footer>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>
