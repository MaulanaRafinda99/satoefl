<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SATOEFL - Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link href="{{ asset('fonts/material-design-iconic-font/css/material-design-iconic-font.min.css') }}"
        rel="stylesheet">


    <!-- STYLE CSS -->
    <link rel="stylesheet" href="css/style.css">


    {{-- Font Awesome --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Font Awesome CDN -->

    {{-- Sweet Alert --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        .password-toggle {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            top: 80%;
            right: 0px;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .password-toggle2 {
            position: relative;
        }

        .toggle-password2 {
            position: absolute;
            top: 80%;
            right: 0px;
            transform: translateY(-50%);
            cursor: pointer;
        }
    </style>

    <link href="{{ asset('css/style_login.css') }}" rel="stylesheet">

</head>

<body>
    @if ($errors->any())
        <script>
            Swal.fire({
                title: 'Validation Error!',
                html: '' + 
                    @foreach ($errors->all() as $error)
                        '<p>{{ $error }}</p>' +
                    @endforeach
                    '',
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


    <div class="wrapper" style="background-image: url('images/login-bg.jpg');">
        <div class="inner">
            <div class="image-holder">
                <img src="images/avatar-login.jpg" alt="">
            </div>
            <form action="/sesi/create" method="POST">
                @csrf
                <h3>Registration Form</h3>
                <div class="form-wrapper">
                    <label for="name" class="form-label"></label>
                    <input type="name" name="name" placeholder="Full Name" class="form-control" value="{{ old('name') }}">
                    <i class="zmdi zmdi-account"></i>
                </div>
                <div class="form-wrapper">
                    <label for="nim" class="form-label"></label>
                    <input type="nim" name="nim" placeholder="NIM" class="form-control" value="{{ old('nim') }}">
                    <i class="zmdi zmdi-account"></i>
                </div>
                <div class="form-wrapper">
                    <label for="Email" class="form-label"></label>
                    <input type="email" name="email" placeholder="Email Address" class="form-control" value="{{ old('email') }}" required>
                    <i class="zmdi zmdi-email"></i>
                </div>


                <div class="form-wrapper">
                    <input type="password" placeholder="Password" id="password" name="password" class="form-control" value="{{ old('password') }}">
                    <a href="#" class="toggle-password" onclick="togglePasswordVisibility()">
                        <i class="far fa-eye" id="togglePassword"></i>
                    </a>
                </div>

                <div class="form-wrapper">
                    <label for="count_register" class="form-label" style="font-weight: bold">How many times have you taken the TOEFL at Teuku Umar
                        University before?</label>
                    <select id="count_register" name="count_register" class="form-control" style="font-weight: bold" required>
                        <option value= 0 >0x</option>
                        <option value= 1 >1x</option>
                        <option value= 2 >2x</option>
                        <option value= 3 >3x</option>
                        <option value= 4 >4x</option>
                        <option value= 5 >5x</option>
                    </select>
                  <i class="zmdi zmdi-long-arrow-down"></i>
                </div>

                <div class="center">
                    <p style="padding-left: 30px; text">Already Have Account? <a href="sesi"><b><u style="color: #00BFD4;">Login<u></b></a></p>
                </div>
                <button name="submit" type="submit">Register
                    <i class="zmdi zmdi-arrow-right"></i>
                </button>
            </form>
        </div>
    </div>

</body>
<script>
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('password');
        var icon = document.getElementById('togglePassword');

        if (passwordField.type === "password") {
            passwordField.type = "text";
            icon.classList.remove('far', 'fa-eye');
            icon.classList.add('fas', 'fa-eye-slash');
        } else {
            passwordField.type = "password";
            icon.classList.remove('fas', 'fa-eye-slash');
            icon.classList.add('far', 'fa-eye');
        }
    }
</script>

</html>
