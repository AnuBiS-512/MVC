<!DOCTYPE html>
<html>
<head>
<style>
body {
  /* margin: 0;
  background-image: url(https://img.freepik.com/vecteurs-libre/realisation-objectifs-concept-entreprise-croissance-carriere-cooperation-pour-developpement-du-projet_107791-29.jpg?1&w=740&t=st=1702816221~exp=1702816821~hmac=2e1b0809136adc54b82e5282824c3dd60a89834b4d87a38ceaa1436fe8229140);
  background-size:cover;
  justify-content: center ;
  background-repeat: no-repeat;
  height: 50%;
  font-family: 'Numans', sans-serif;
  align-content: center; */
  margin: 0;
  padding: 0;
  height: 100vh;
  background-image: url(https://v68.be/media/wp-content/uploads/2018/12/action-3641202_960_720.jpg);
  
  background-size: 100% 100%;
  background-position: center;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  text-align: center;
  
}

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
    </a>

    <li><a href="{{route('Career')}}" class="cc">Play</a></li>
    <li><a href="{{route('leaderbored')}}" class="cc">Leaderbord</a></li>
    <li><a href="#about" class="cc">About</a></li>
  </ul>
  
  <div style="margin-left:25%;padding:1px 16px;height:1000px;">
    <h1 class="iya" font-style="oblique"> </h1>
    
  </div>
</div>

</body>
</html>