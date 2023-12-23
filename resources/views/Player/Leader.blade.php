<!DOCTYPE html>
<html lang="en">

<head>
    <link href="{{asset('favicon.png')}}" rel="icon">
    <link href="{{ asset('css/home.css') }}" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MVC Leaderboard</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            color: #333;
        }

        .mvc-text {
            font-size: 30px;
            font-weight: bold;
            color: #007bff;
            text-decoration: none;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            font-size: 28px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
            text-align:center;
        }

        th, td {
            text-align: center;
            border: 1px solid #007bff; /* Ajout de bordures autour des cellules */
            padding: 10px; /* Ajout de rembourrage pour un aspect plus aéré */
        }

        thead {
            background-color: #007bff; /* Couleur de fond de l'en-tête */
            color: #fff; /* Couleur du texte de l'en-tête */
        }
    </style>
</head>

<body>

    <a class="mvc-text" href="{{url('/leaderbored')}}">MVC</a>

    <div class="container">
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