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

    <title>SATOEFL | Hasil Test</title>

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


    {{-- Navbar --}}
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
                        <a class="nav-link" href="transaksi">Transaksi</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="jadwalSaya">Jadwal Saya</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="hasilTes">Hasil Tes</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link nonactive" href="profile">Profile</a>
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

    <div class="row" style="margin: 20px">
        <div class="col-lg-12 col-12">
            <h4 class=" text-center">Test <u class="text-info">Result</u></h4>
        </div>
    </div>

    {{-- Content --}}
    <table class="table table-striped custom-table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Schedule</th>
                <th scope="col">Listening</th>
                <th scope="col">Structure</th>
                <th scope="col">Reading</th>
                <th scope="col">Total Score</th>
                <th scope="col">Result</th>
                <th scope="col">Action</th>

            </tr>
        </thead>
        <tbody>
            @foreach ($results as $result)
                <tr>
                    <td>{{ $result->id }}</td>
                    <td>{{ Carbon::parse($result->jadwal)->format('l, d F Y, H:i') }} WIB</td>
                    <td>{{ $result->nilaiList }} </td>
                    <td>{{ $result->nilaiStr }} </td>
                    <td>{{ $result->nilaiRdg }} </td>
                    <td>{{ $result->score }} </td>
                    <td>{{ $result->keterangan }} </td>

                    <td>
                        <form action="{{ route('print.certificate', $result->id) }}" method="POST"
                            id="certificateForm">
                            @csrf
                            <input type="hidden" name="id" id="id" value="{{ $result->id }}">
                            <input type="hidden" name="jadwal" value="{{ $result->jadwal }}">
                            <input type="hidden" name="nilaiList" id="nilaiList" value="{{ $result->nilaiList }}">
                            <input type="hidden" name="nilaiStr" id="nilaiStr" value="{{ $result->nilaiStr }}">
                            <input type="hidden" name="nilaiRdg" id="nilaiRdg" value="{{ $result->nilaiRdg }}">
                            <input type="hidden" name="score" id="score" value="{{ $result->score }}">
                            <button class="btn btn register" style="background: #87b1df; color:#ffffff;">Print
                                Certificate</button>
                            <br></br>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    {{-- Footer --}}
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

    <script>
        document.getElementById("certificateForm").onsubmit = function() {
            this.target = "_blank"; // Open form submission in a new tab
        };
    </script>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>

</body>

<style>
    .custom-table {
        margin: 5%;
        width: 90%;
        border-radius: 10;
    }
</style>

</html>
