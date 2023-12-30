<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>game Page</title>
    
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
            display: flex;
    
        }

        .page-container {
            width: 50%; /* Set the desired width for your form */
            max-width: 400px; 
            text-align: center;
            padding: 20px;
            background-color: ##66aaff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
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
           /*
            margin:4.5%;
            padding:5%;
            top: 10px;
            left: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            transform: translateY(100); 
            position:fixed;*/
            margin: 2%;
            padding: 18px 10px;
    top: 10px;
    left: 10px;
    font-size: 15px;
    font-weight: bold;
    color: #fff; /* Changer la couleur du texte en blanc pour contraster avec le fond */
    background-color: #3498db; /* Choisir une couleur de fond attrayante */
    border-radius: 10px; /* Ajouter des coins arrondis pour un aspect plus doux */
    box-shadow: 0 0 4px rgba(0, 0, 0, 0.2); 
        }

        .question-container {
            width: 50%; /* Set the desired width for your form */
            max-width: 400px; /* Set a maximum width if needed */
            margin: 0 auto; /* Center the form horizontally */
            padding: 20px; /* Add padding as needed */
            box-sizing: border-box;
            display: none;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
          
            /* Adjust the margin as needed */
        }

        .radio-group {
            margin-top: 20px;
            
            display: block; /* Afficher les éléments en bloc pour les disposer verticalement */
            margin-bottom: 10px;
        }
        .radio-group label {
         display: block; /* Afficher les éléments en bloc pour les disposer verticalement */
         margin-bottom: 10px; /* Espacement entre chaque bouton radio */
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
            width: 50%; /* Set the desired width for your form */
            max-width: 400px;
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6);
            display: none;
            position: absolute;
            justify-content: center;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            margin-right:20px;
        }

        .close-button {
            background-color: #dc3545;
        
            color: #fff;
            padding: 10px 20px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
    
        }

        /* Add a class for displaying feedback container  #dc3545*/
        .visible {
            display: block !important;
        }
        .butt {
    background-color: #000; /* Green background #4CAF50 color */
    color: white; /* White text color */
    padding: 10px 20px; /* Padding around text */
    border: none; /* No border */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Change cursor to pointer on hover */
    font-size: 16px; /* Font size */
}

.butt:hover {
    background-color: #45a049; /* Darker green color on hover */
}
/******nav bar  */

ul {
    
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 10%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
    align-items: center;
  }
  
  li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
    margin-top: 10px;
    text-align: center;
    
  }
  li a.active {
    background-color: #04AA6D;
    color: white;
  }
  
  li a:hover:not(.active) {
    background-color: #555;
    color: white;
  }
  .logo-container {
    display: flex;
    align-items: center;
    margin-top: 10px;
    margin-left: 10px;
    
  }
  
  .logo {
    width: 50px; /* Ajustez la largeur de l'image selon vos besoins */
    height: auto;
    margin-right: 10px; /* Marge entre l'image et le texte */
    border-radius: 50%; /* Rend l'image circulaire */
  }
  
  .logo-text {
    margin: 0;
    font-size: 20px; /* Taille du texte */
    font-weight: bold; /* Style du texte */
    color: #333; /* Couleur du texte */
    
  }
  
  .mvc{
    color: #000;
    padding: 8px 8px;
    
  }
  .cc:focus{
    background-color: #555;
    color: white;
  }
  .navbar-brand{text-decoration: none;
  
  }
  .C{
    background-color: rgba(0, 0, 0, 0.1);
          width: 100%;
          height: 100%;
          position: fixed;
          justify-content: center;
          align-items: center;
          pointer-events: none;
         /* Permet aux événements de souris de passer à travers cette couche */
       
  }
  
  .iya{
    color: #000;
    padding: 8px 8px;
    font-style:oblique;
    margin: 10;
    font-size: 30px; /* Taille du texte */
    font-weight: bold; /* Style du texte */
    color: #333;
  
  }
  
    </style> 
</head>

<body>
<div class="C">

<ul>
  <a class="navbar-brand" href="{{url('/')}}">
  <div class="logo-container">
    <img src="https://static.vecteezy.com/ti/vecteur-libre/p3/9133592-mvc-letter-logo-design-with-polygon-shape-mvc-polygon-and-cube-shape-logo-design-mvc-hexagon-vector-logo-template-white-and-black-colors-mvc-monogram-logo-entreprise-et-immobilier-vectoriel.jpg" alt="Votre logo" class="logo">
    <p class="logo-text">MVC</p>
</div>

<ul>
    <li><a href="{{route('Career')}}" class="cc" disabled>Play</a></li>
    <li><a href="{{route('leaderbored')}}" class="cc" disabled>Leaderbord</a></li>
    <li><a href="#about" class="cc" disabled>About</a></li>
</ul>

<div style="margin-left:25%;padding:1px 16px;height:1000px;">
    <h1 class="iya" font-style="oblique"> </h1>
</div>

</div>


    <div class="feedback-container" id="feedbackContainer">
        @if(isset($feedback))
        <div class="alert" style="background-color:@if($pnt == 0)
   /* #0077cc Bleu froid */
@elseif($pnt == 50)
 /*   #66aaff  Bleu clair froid */
@elseif($pnt == 100)
   /* #99ccff  Bleu pâle froid */
@endif;">
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
        Level # @if($idg < 11)
        {{$idg}}
        @else
        10
        @endif
    </div>

    <div class="page-container" id="pageContainer">
        <h1>{{$qst->situation}}</h1>
        <button class="butt" onclick="showQuestionForm()">Start</button>
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
