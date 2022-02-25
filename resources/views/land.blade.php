<!DOCTYPE html>
<html>
<head>
    <title>Hotel Hebat</title>
    <link href="{!! asset('assets/css/landing.css') !!}" rel="stylesheet" type="text/css" >
    <link href="assets/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/admin/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="{!! asset('assets/image/hotel.png') !!}" type="image/x-icon">
</head>
<body>
    <div class="header">
        <img class="hotel" src="{!! asset('assets/image/hotel.png') !!}">
        <h1>HOTEL HEBAT</h1>
        <ul>
            <li><a href="{{ url('land') }}" class="home">Home</a></li>
            <li><a href="{{ url('kamarhotel') }}" class="kamar">Kamar</a></li>
            <li><a href="{{ url('fasilitas') }}" class="fasilitas">Fasilitas</a></li>
        </ul>
        @if (Route::has('login'))
                <div class="login">
                    @auth
                        <a href="{{ url('/home') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Home</a>
                    @else
                        <a href="{{ route('login') }}" class="btn btn-primary">Log in</a>

                        <!-- @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                        @endif -->
                    @endauth
                </div>
            @endif
    </div>
    <center>
    <div class="muka">
        <img src="{!! asset('assets/image/hotelmuka.jpg') !!}">
    </div>
    <div class="main">
        @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
        @endif
        <div class="side">
            <p>Lepaskan diri Anda ke Hotel Hebat, dikelilingi oleh keindahan pegunungan yang indah, danau, dan sawah menghijau. Nikmati sore yang hangat dengan berenang di kolam renang dengan pemandangan matahari terbenam memukau. Kids Club yang luas menawarkan berbagai fasilitas dan kegiatan anak-anak yang akan melengkapi kenyamanan keluarga. Convention Center kami dilengkapi pelayanan lengkap dengan ruang penyelenggaraan konvensi M.I.C.E ataupun mewujudkan acara pernikahan yang mewah.</p>
        </div>
    </div>
    </center>
</body>
</html>