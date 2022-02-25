<!DOCTYPE html>
<html>
<head>
<title>Hotel Hebat</title>
    <link href="{!! asset('assets/css/login.css') !!}" rel="stylesheet" type="text/css" >
    <link href="assets/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/admin/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="{!! asset('assets/image/hotel.png') !!}" type="image/x-icon">
</head>
<body>
    <center>
    <div class="body">
        <form method="POST" action="{{ route('login') }}">
        <div class="header">{{ __('Login') }}</div>
        <br>
            @csrf
            <div class="row mb-3">
                <label for="email" class="col-md-4 col-form-label text-md-end" style="text-align:left;">{{ __('Email Address') }}</label>
                <div>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="name@example.com" autofocus>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                </div>
            </div>
            <div class="row mb-3">
                <label for="password" class="col-md-4 col-form-label text-md-end" style="text-align:left;">{{ __('Password') }}</label>
                <div>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" required autocomplete="current-password">
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                </div>
            </div>
            <div class="mb-1" style="text-align:left;">
                <div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                            <label class="form-check-label" for="remember">
                                {{ __('Remember Me') }}
                            </label>
                    </div>
                </div>
            </div>
            <div class="mb-2">
                <div>
                    <button type="submit" class="btn btn-primary">
                        {{ __('Login') }}
                    </button>
                </div>
            </div>
            @if (Route::has('register'))
                <a href="{{ route('register') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
            @endif
            
        </form>
    </div>
    </center>
</body>
</html>