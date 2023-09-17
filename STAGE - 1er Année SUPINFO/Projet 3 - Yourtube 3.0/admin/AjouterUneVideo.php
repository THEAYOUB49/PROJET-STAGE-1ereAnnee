<?php

    session_start();

    if(!isset($_SESSION['admin01020304'])){
        header("Location: ../login.php");
    }
    
    if(empty($_SESSION['admin01020304'])){
        header("Location: ../login.php");
    }

    require("../config/Yourtube-Commande.php");

?>




<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Téléverser une Vidéo</title>
        <link rel="stylesheet" type="text/css" href="AjouterUneVideo.css">
    </head>
    <body>
            <header>
                
                <nav>
                    <label class="logo">
                        <img src="../IMG/Logo_FlopFlix.png" alt="" id="logo">
                    </label>

                    <ul>
                        <li><a class="active" href="./AjouterUneVideo.php">Téléverser Une Vidéo</a></li>
                        <li><a href="./SupprimerUneVideo.php">Retirer Une Vidéo</a></li>
                        <li><a href="./Deconnexion.php">Se Déconnecter</a></li>
                    </ul>
                </nav>

            </header>

            

            <h1>Téléverser une vidéo</h1>
            <form method="post">
                <label for="nom">Titre de la vidéo :</label>
                <input type="text" id="nom" name="nom" required><br>

                <label for="lien">Lien de la vidéo :</label>
                <input type="text" id="lien" name="lien" required><br>

                <label for="image">Miniature de la vidéo :</label>
                <input type="text" id="image" name="image" required><br>

                <label for="description">Description de la vidéo :</label><br>
                <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>

                <input type="submit" value="Ajouter" name= valider id= valider>
            </form>
    </body>
</html>



<?php

    if(isset($_POST['valider']))
    {
        if(isset($_POST['nom']) AND isset($_POST['image']) AND isset($_POST['lien']) AND isset($_POST['description']))
        {
            if(!empty($_POST['nom']) AND !empty($_POST['image']) AND !empty($_POST['lien']) AND !empty($_POST['description']))
            {
                $nom = htmlspecialchars(strip_tags($_POST['nom']));
                $image = htmlspecialchars(strip_tags($_POST['image']));
                $lien = htmlspecialchars(strip_tags($_POST['lien']));
                $desc = htmlspecialchars(strip_tags($_POST['description']));

                try {
                    ajouter($nom, $image, $lien, $desc);
                } 
                
                catch (Exception $e) {
                    $e->getMessage();
                }


            }
        }
    }


?>