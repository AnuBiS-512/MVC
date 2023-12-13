<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fixed Page</title>
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

        .page-container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .number-square {
            position: fixed;
            top: 10px;
            right: 10px;
            width: 30px;
            height: 30px;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .question-label {
            position: fixed;
            top: 10px;
            left: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .question-container {
            display: none;
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            /* Adjust the margin as needed */
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

        .feedback-container {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .close-button {
            background-color: #dc3545;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        /* Add a class for displaying feedback container */
        .visible {
            display: block !important;
        }
    </style>
</head>

<body>

    <div class="feedback-container" id="feedbackContainer">
        @if(isset($feedback))
        <div class="alert" style="background-color: @if($pnt == 0) #dc3545 @elseif($pnt == 50) #ffc107 @elseif($pnt == 100) #28a745 @endif;">
            {{$feedback}}
            @if($idg === 11)
            <form action="{{ route('leader') }}" method="post">
            <input name="ids" value="{{$ids}}" type="hidden">
            <input name="pnt" value="{{$pnt}}" type="hidden">
                @csrf
                <button type="submit" class="close-button">Close</button>
            </form>
            @else
            <button class="close-button" onclick="closeFeedback()">Close</button>
            @endif
        </div>
        @endif
    </div>

    <div class="question-label">
        Question # @if($idg < 11)
        {{$idg}}
        @else
        10
        @endif
    </div>

    <div class="page-container" id="pageContainer">
        <h1>{{$qst->situation}}</h1>
        <button onclick="showQuestionForm()">Start</button>
    </div>

    <div class="question-container" id="questionForm">
        <h2>{{$qst->question}}</h2>
        <form action="{{route('game')}}" method="post" onsubmit="return validateForm()">
            @csrf
            <div class="radio-group">
                <label><input type="radio" name="answer" value="1" required> {{$qst->answer_1}}</label>
                <label><input type="radio" name="answer" value="2" required>{{$qst->answer_2}}</label>
                <label><input type="radio" name="answer" value="3" required> {{$qst->answer_3}}</label>
                <label><input type="radio" name="answer" value="4" required> {{$qst->answer_4}}</label>
            </div>
            <input name="ids" value="{{$ids}}" type="hidden">
            <input name="idq" value="{{$qst->id}}" type="hidden">
            <input name="idg" value="{{$idg}}" type="hidden">
            <input name="pnt" value="{{$pnt}}" type="hidden">

            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>

    <div class="number-square">
        <span>{{$pnt}}</span>
        <!-- Your number goes here -->
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var feedbackContainer = document.getElementById('feedbackContainer');
            if (feedbackContainer.innerHTML.trim() !== '') {
                feedbackContainer.classList.add('visible');
            }

            // Call the function to update the close button when the window loads
            updateCloseButton();
        });

        function showQuestionForm() {
            var pageContainer = document.getElementById('pageContainer');
            var questionForm = document.getElementById('questionForm');
            var feedbackContainer = document.getElementById('feedbackContainer');

            // Toggle the visibility of the containers
            pageContainer.style.display = 'none';
            questionForm.style.display = 'block';
            feedbackContainer.style.display = 'none';
        }

        function closeFeedback() {
            var feedbackContainer = document.getElementById('feedbackContainer');
            var pageContainer = document.getElementById('pageContainer');

            // Toggle the visibility of the containers
            feedbackContainer.classList.remove('visible');
            pageContainer.style.display = 'block';
        }

        function validateForm() {
            // You can add custom validation logic here if needed
            return true;
        }

        function updateCloseButton() {
            var idg = {{$idg}};
            var closeButton = document.getElementById('closeButton');

            // Check if idg is 11
            if (idg === 11) {
                // Set the href attribute to the leader route
                closeButton.href = '{{ route('leader') }}';
            }
        }
    </script>

</body>

</html>
