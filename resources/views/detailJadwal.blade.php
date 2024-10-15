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

    <title>SATOEFL | Participant Card</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <link href="{{ asset('css/bootstrap-icons.css') }}" rel="stylesheet">

    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

    <link href="{{ asset('css/profile_style.css') }}" rel="stylesheet">

    {{-- Icon Plugin Website --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


</head>

<body>

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
                        <a class="nav-link nonactive" href="transaksi">Transaksi</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link nonactive" href="jadwalSaya">Jadwal Saya</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link nonactive" href="hasilTes">Hasil Tes</a>
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

    @foreach ($users as $user)
        {{-- <div class="container" id="participant-card" style="margin-top: 20px">
            <div class="main-body">
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <div class="image-container">
                                        <img src="/uploads/{{ $user->image ? $user->image : '\images\profile.png' }}"
                                            class="rounded-circle" width="150" height="150">
                                    </div>

                                    <div class="mt-3">
                                        <h4>{{ $user->name }}</h4>
                                        <p class="text-secondary mb-1">{{ $user->nim }}</p>
                                        <p class="text-muted font-size-sm">{{ $user->alamat }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->name }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->jk ? $user->jk : '-' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->email }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Phone Number</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->no_hp ? $user->no_hp : '-' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Faculty</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->fakultas ? $user->fakultas : '-' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h5 class="mb-0" style="font-size: 18px">Department</h5>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->prodi ? $user->prodi : '-' }}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0" style="font-size: 18px">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        {{ $user->alamat ? $user->alamat : '-' }}
                                    </div>
                                </div>
                                <hr>
                                @foreach ($jadwalS as $jadwal)
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0" style="font-size: 18px">Jadwal</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            {{ Carbon::parse($jadwal->jadwal)->format('l, d F Y, H:i') }}
                                        </div>
                                    </div>
                                    <hr>
                                @endforeach
                                <hr>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <button onclick="printParticipantCard()" class="btn btn-primary">Print
                                            Participant Card</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div> --}}

        <div class="card" id="participant-card">
            <h6 style="font-size: 18px">Participant TOEFL Card</h6>
            <img src="/uploads/{{ $user->image ? $user->image : '\images\profile.png' }}" class="rounded-circle"
                width="150" height="150">
            <h2>{{ $user->name }}</h2>
            <div class="info">
                <p><strong>NIM &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;</strong>
                    {{ $user->nim }}</p>
                <p><strong>Fakultas &nbsp;&nbsp;: &nbsp;</strong>{{ $user->fakultas }}</p>
                <p><strong>Prodi
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>{{ $user->prodi }}</p>
                @foreach ($jadwalS as $jadwal)
                    <p><strong>Jadwal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</strong>{{ Carbon::parse($jadwal->jadwal)->format('l, d F Y, H:i') }}
                    </p>
                @endforeach
            </div>
        </div>
        <div class="card-print">
            <button onclick="printParticipantCard()" class="btn btn-primary">Print
            Participant Card</button>
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

                    </div>
                </div>

            </div>
        </div>
    </footer>

    <script>
        function printParticipantCard() {
            // Hide all elements except the participant card
            var elementsToHide = document.querySelectorAll('body > *:not(#participant-card)');
            elementsToHide.forEach(function(element) {
                element.style.display = 'none';
            });

            // Show the participant card
            document.getElementById('participant-card').style.display = 'block';

            // Trigger the print function
            window.print();

            // Show all elements again after printing is done
            elementsToHide.forEach(function(element) {
                element.style.display = '';
            });
            document.getElementById('participant-card').style.display = 'none';
        }
    </script>

    <style>
        .image-container {
            width: 150px;
            height: 150px;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            /* This ensures the image covers the container without distorting */
            border-radius: 50%;
            /* This makes the image circular */
        }

        .card {
            margin: 20px auto;
            /* Change margin to 'auto' */
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 500px;
            text-align: center;
            align-items: center;
            padding: 20px;
        }

        .card-print {
            text-align: center;
            align-items: center;            
        }


        .card img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            object-fit: cover;
        }

        .card h2 {
            margin: 10px 0;
            font-size: 24px;
            color: #333;
        }

        .card p {
            margin: 5px 0;
            font-size: 18px;
            color: #555;
        }

        .card .info {
            margin-top: 20px;
            text-align: left;
        }

        .card .info p {
            margin: 4px 0;
            font-size: 16px;
            display: flex;
            align-items: center;
        }
    </style>



    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>

</body>

</html>
