<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Choose Your Career</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style> 
/* 
.mb-3{
    width: 50%; /* Set the desired width for your form 
    max-width: 400px;
    justify-content: center;
    top: 50%;
    left: 50%;
    
}
.container{
    display: flex;
    flex-direction: column;
    justify-content: center;
     
}*/
body {
        background-color: #f8f9fa; /* Ajoutez une couleur de fond agréable */
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh; /* Faites en sorte que le conteneur occupe toute la hauteur de la vue */
    }

    .form-container {
        width: 100%;
        max-width: 400px;
        background-color: #ffffff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 20px; /* Ajoutez un espacement en haut */
    }

    .form-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
        color: #007bff; /* Couleur bleue Bootstrap */
    }

    .form-label {
        font-size: 16px;
        font-weight: bold;
        color: #495057; /* Couleur de texte Bootstrap pour une meilleure lisibilité */
    }

    .form-select {
        margin-bottom: 20px;
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        padding: 5px 20px;
        font-size: 18px;
        font-weight: bold;
    }
    /**** style de la barre  */
    
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
    display: flex;
    flex-direction: column;
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
         /* pointer-events: none;  Désactiver les interactions de la souris sur cette couche */
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
<body >

    <div class="container">
        <!-- Display error message if it exists -->
        @if(session('error'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session('error') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif

        <h2 class="mb-4 text-center">Choose Your Career:</h2>

        <form method="POST" action="{{route('submitCarrier')}}" class="needs-validation" novalidate>
            @csrf

            <div class="mb-3">
                <label for="career" class="form-label"></label>
                <select name="career" id="career" class="form-select">
                    @foreach($careers as $career)
                        <option value="{{ $career->id }}">{{ $career->name }}</option>
                    @endforeach
                </select>
            </div>
            <input name="id" value="1" type="hidden">

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
