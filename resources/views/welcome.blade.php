<!DOCTYPE html>
<html lang="en">
<head>
    <link href="{{asset('favicon.png')}}" rel="icon">
    <link href="{{ asset('css/home.css') }}" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MVC</title>
  
</head>
<body>

    <a class="mvc-text" href="{{url('/')}}">MVC</a>

    <div class="button-container">
        <a class="button" href="{{route('Career')}}">Play</a>
        <a class="button" href="{{route('leaderbored')}}">Leaderbored</a>
        <a class="button" href="#">About</a>
    </div>

    <a class="admin-button" href="{{route('admin')}}">Admin Access</a>

</body>
</html>
