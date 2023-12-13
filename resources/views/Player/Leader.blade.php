<!DOCTYPE html>
<html lang="en">
<head>
    <link href="{{asset('favicon.png')}}" rel="icon">
    <link href="{{ asset('css/home.css') }}" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MVC Leaderboard</title>
</head>
<body>

    <a class="mvc-text" href="{{url('/')}}">MVC</a>

    <div class="container mt-5">
        <h2>Leaderboard</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Points</th>
                </tr>
            </thead>
            <tbody>
                @foreach($leaders as $index => $leader)
                <tr>
                    <th scope="row">{{$index + 1}}</th>
                    <td>{{$leader->full_name}}</td>
                    <td>{{$leader->points}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</body>
</html>
