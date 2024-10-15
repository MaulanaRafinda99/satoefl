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

    <title>SATOEFL | Transaksi Detail</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <link href="{{ asset('css/bootstrap-icons.css') }}" rel="stylesheet">

    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    <link href="{{ asset('vendor/select2/select2.min.css') }}" rel="stylesheet" media="all">

    <link href="{{ asset('vendor/datepicker/daterangepicker.css') }}" rel="stylesheet" media="all">

    <link href="{{ asset('vendor/mdi-font/css/material-design-iconic-font.min.css') }}" rel="stylesheet" media="all">

    <link href="{{ asset('vendor/font-awesome-4.7/css/font-awesome.min.css') }}" rel="stylesheet" media="all">

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">

    {{-- Icon Plugin Website --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

     {{-- Sweet Alert --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    {{-- Main CSS for Detail Transaction --}}
    <link href="{{ asset('css/main.css') }}" rel="stylesheet" media="all ">

</head>

<body>

     @if ($errors->any())
        <script>
            Swal.fire({
                title: 'Validation Error!',
                html: '<ul>' + 
                    @foreach ($errors->all() as $error)
                        '<li>{{ $error }}</li>' +
                    @endforeach
                    '</ul>',
                icon: 'error'
            });
        </script>
    @endif

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



    @if (session('error'))
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                Swal.fire({
                    title: 'Oops...',
                    text: '{{ session('error') }}',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
            });
        </script>
    @endif

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

            <a class="nav-link custom-btn btn d-lg-none" href="logout">Logout</a>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link nonactive" href="peserta">TOEFL TES</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="transaksi">Transaksi</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="jadwalSaya">Jadwal Saya</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="hasilTes">Hasil Tes</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll nonactive" href="profile">Profile</a>
                    </li>

                    <li class="nav-item">
                        <div class="col-md-12 pt-2">
                            <div class="user-info">
                                @if (Auth::check())
                                    <p>Welcome, {{ Auth::user()->name }}</p>
                                @else
                                    <script>
                                        window.location.href = "{{ 'sesi' }}"; // Redirect to login page
                                    </script>
                                @endif
                            </div>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link custom-btn btn d-none d-lg-block" href="/logout">Logout</a>
                    </li>
                </ul>
                <div>

                </div>
    </nav>

    @foreach ($transaksis as $transaksi)
        <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
            <div class="wrapper wrapper--w790">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Transaction Detail</h2>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('transaction.update', $transaksi->id) }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="form-row">
                                <div class="name">Nama</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="name"
                                            value="{{ $transaksi->nama }}" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Jadwal</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="jadwal"
                                            value="{{ Carbon::parse($transaksi->jadwal)->format('l, d F Y, H:i') }} WIB"
                                            readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Jumlah Pembayaran</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="jumlah_pembayaran"
                                            id="jumlah_pembayaran" value="Rp. {{ $transaksi->jumlah_pembayaran }} ,-"
                                            readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="jenis_pembayaran">Jenis Pembayaran :</div>
                                <br>
                                <div class="value">
                                    <div class="input-group">
                                        <div class="rs-select2 js-select-simple select--no-search">
                                            <select name="jenis_pembayaran" id="jenis_pembayaran">
                                                <option disabled="disabled" selected="selected">Choose option</option>
                                                <option>Dana : 082275126681</option>
                                                <option>Link Aja : 082275126681</option>
                                                <option>BSI : 082275126681</option>
                                                <option>BPD : 082275126681</option>
                                            </select>
                                            <div class="select-dropdown"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Bukti Pembayaran</div>
                                <div class="value">
                                    <div class="input-group">
                                        <img id="uploadedImage" id="" src="/uploads/{{ $transaksi->image }}"
                                            alt="Uploaded Image"
                                            style="max-width: 300px; max-height: 300px;">
                                        <input class="input--style-4" type="file" id="image" name="image">
                                    </div>
                                </div>
                            </div>

                            <div class="form-row p-t-20">
                                <label class="label label--block">Have you ever taken TOEFL before?</label>
                                <div class="p-t-15">
                                    <label class="radio-container m-r-55">Yes
                                        <input type="radio" checked="checked" name="status_pendaftaran"
                                            id="status_pendaftaran" value="Yes">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">No
                                        <input type="radio" name="status_pendaftaran" id="status_pendaftaran"
                                            value="no">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endforeach


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
