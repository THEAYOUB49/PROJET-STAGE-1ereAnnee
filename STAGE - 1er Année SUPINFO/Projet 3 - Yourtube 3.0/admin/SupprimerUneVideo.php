<?php

    session_start();

    if(!isset($_SESSION['admin01020304'])){
        header("Location: ../login.php");
    }

    if(empty($_SESSION['admin01020304'])){
        header("Location: ../login.php");
    }

    require("../config/Yourtube-Commande.php");
    $videos=afficher();

?>




<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Retirer une Vidéo</title>
        <link rel="stylesheet" type="text/css" href="./SupprimerUneVideo.css">

    </head>
    <body>
            <header>
                <nav>
                    <label class="logo">
                        <img src="../IMG/Logo_FlopFlix.png" alt="" id="logo">
                    </label>

                    <ul>
                        <li><a href="./AjouterUneVideo.php">Téléverser une vidéo</a></li>
                        <li><a class="active" href="./SupprimerUneVideo.php">Retirer une Vidéo</a></li>
                        <li><a href="./Deconnexion.php">Se Déconnecter</a></li>
                    </ul>

                </nav>
            </header>



            <h1>Retirer une vidéo</h1>
            <form method="post">

                <input type="number" placeholder="       Entrer l'id de la vidéo" id="idproduit" name="idproduit"  required><br>

                <input type="submit" value="Supprimer" name= valider id= Valider >
            </form>

            <div class="video-grid">
                <?php foreach($videos as $video): ?>
                    <div class="video-item">
                        <img src="<?= $video->image ?>" alt="titre de la vidéo">
                        <h2 style= "color: black;"><?= $video->id ?></h2>
                    </div>
                <?php endforeach; ?>
            </div>

    </body>
</html>



<?php

    if(isset($_POST['valider']))
    {
        if(isset($_POST['idproduit']))
        {
            if(!empty($_POST['idproduit']) AND is_numeric($_POST['idproduit']))
            {
                $idproduit = htmlspecialchars(strip_tags($_POST['idproduit']));
                

                try {
                    supprimer($idproduit);
                } 
                
                catch (Exception $e) {
                    $e->getMessage();
                }


            }
        }
    }


?>