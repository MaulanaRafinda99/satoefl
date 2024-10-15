<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SATOEFL - LOGIN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link href="{{ asset('fonts/material-design-iconic-font/css/material-design-iconic-font.min.css') }}"
        rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Font Awesome CDN -->


    <!-- STYLE CSS -->
    <link rel="stylesheet" href="css/style.css">

    <link href="{{ asset('css/style_login.css') }}" rel="stylesheet">

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
    </style>

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
            <form action="/sesi/login" method="POST" class="password-toggle">
                <h3>Welcome</h3>
                @csrf
                <div class="form-wrapper">
                    <input type="email" name="email" value="{{ Session::get('email') }}" placeholder="Email Address"
                        class="form-control">
                    <i class="zmdi zmdi-email"></i>
                </div>
                <div class="form-wrapper">
                    <input type="password" placeholder="Password" id="password"class="form-control" name="password">
                    <a href="#" class="toggle-password" onclick="togglePasswordVisibility()">
                        <i class="far fa-eye" id="togglePassword"></i>
                    </a>
                </div>
                <div class="center">
                    <a href="register"></a>
                    <p>Don't have an account? <a href="register"><b><u>Register<u></b></a></p>
                </div>
                <button name="submit" type="submit">Login
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
