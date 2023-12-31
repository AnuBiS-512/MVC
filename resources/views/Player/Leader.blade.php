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
            text-align: center; /* Center the content */
        }

        .mvc-text {
            font-size: 30px;
            font-weight: bold;
            color: #007bff;
            text-decoration: none;
            display: block;
            margin-bottom: 20px;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            font-size: 28px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }

        th, td {
            text-align: center;
            border: 1px solid #007bff;
            padding: 10px;
        }

        thead {
            background-color: #007bff;
            color: #fff;
        }

        /* Style for the select menu */
        select {
            padding: 5px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <a class="mvc-text" href="{{url('/')}}">MVC</a>

    <div class="container">
        <h2>Leaderboard</h2>

        <!-- Add a select menu for career filtering -->
        <label for="careerFilter">Filter by Career:</label>
        <select id="careerFilter" onchange="filterLeaders()">
            <option value="all">All Careers</option>
            <!-- Add options dynamically based on available careers -->
            @foreach($careers as $career)
                <option value="{{$career->id}}">{{$career->name}}</option>
            @endforeach
        </select>

        <table class="table table-striped" id="leaderboardTable">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Points</th>
                </tr>
            </thead>
            <tbody>
                @foreach($leaders as $index => $leader)
                <tr data-career="{{$leader->career_id}}">
                    <th scope="row">{{$index + 1}}</th>
                    <td>{{$leader->full_name}}</td>
                    <td>{{$leader->points}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <script>
        function filterLeaders() {
            var selectedCareerId = document.getElementById('careerFilter').value;
            var rows = document.getElementById('leaderboardTable').getElementsByTagName('tbody')[0].getElementsByTagName('tr');

            for (var i = 0; i < rows.length; i++) {
                var careerId = rows[i].getAttribute('data-career');

                if (selectedCareerId === 'all' || careerId === selectedCareerId) {
                    rows[i].style.display = '';
                } else {
                    rows[i].style.display = 'none';
                }
            }
        }
    </script>

</body>

</html>
