<?php

session_start();

require("config/Yourtube-Commande.php");

if(isset($_GET['q'])) {
$videos = rechercher($_GET['q']);
} else {
$videos = afficher();
}

if (estConnecte()) {
 
} else {
  echo '<p class="Attention">Veuillez vous connecter pour accéder à toute les fonctionnalités.</p>';
}


?>



<!DOCTYPE html>
<html>
  
  <head>
	  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="Yourtube.css">

		<title>Accueil - YourTube</title>
	
	</head>
    
    
    <body>

		<header>

    <label class="logo">
				<img src="./IMG/Yourtube.png" alt="" id="logo">
			</label>
		<nav>
			
			<ul>
        <li><a class="active" href="./Yourtube.php">Accueil</a></li>
				
				<?php if (isset($_SESSION['user_id'])): ?>
          <li><a href="./deconnexion.php">Déconnexion</a></li>
        <?php endif; ?>

        <form  class="search-form" action="./Yourtube.php" method="GET">
				<input style="border-radius: 10px;padding: 5px 10px;align: right;" type="text" name="q" placeholder="Rechercher une vidéo...">
				<button type="submit">Rechercher</button>
			</form>

			</ul>

      <?php if (!isset($_SESSION['user_id'])): ?>
          <ul class="nav-right">
            <li><a href="./inscription.php" class="nav-button">Inscription</a></li>
            <li><a href="./connexion.php" class="nav-button">Connexion</a></li>
          </ul>
        <?php endif; ?>
			
		</nav>
	</header>


  

        <div class="video-grid">
          <?php foreach($videos as $video): ?>

            <div class="video-item">
              <img src="<?= $video->image ?>" alt="<?= $video->titre ?>">
              <h2><?= $video->titre ?></h2>
              <p class="video"><?= $video->lien ?></p>
              <p class="description"><?= substr($video->description, 0, 200) ?>...</p>
            </div>

          <?php endforeach; ?>
        </div>

  </body>
</html>
        

	
    </body>
</html