<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>nqme Page</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            overflow: hidden;
            /* Disable scrolling */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        .radio-group {
            margin-top: 20px;
        }

        .submit-button {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .question-label {
            position: fixed;
            top: 10px;
            left: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
    color: #000; /* Changer la couleur du texte en blanc pour contraster avec le fond */
    /*background-color: #3498db;  Choisir une couleur de fond attrayante */
    border-radius: 10px; /* Ajouter des coins arrondis pour un aspect plus doux */
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body>
<div class="question-label">
        Question # 10
    </div>
    <div class="container">
       
            <form action="{{ route('leader') }}" method="post" onsubmit="return validateForm()">
                @csrf

                <div class="form-group">
                    <input type="text" class="form-control" name="player_name" placeholder="Enter your name" required>
                </div>

                <input name="ids" value="{{$ids}}" type="hidden">
                <input name="pnt" value="{{$pnt}}" type="hidden">

                <button type="submit" class="btn btn-primary submit-button">Submit</button>
            </form>
        </div>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>

</html>
