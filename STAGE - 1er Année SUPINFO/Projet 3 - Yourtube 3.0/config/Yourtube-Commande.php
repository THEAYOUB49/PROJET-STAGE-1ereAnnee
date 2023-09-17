<?php



function getAdmin($email, $motdepasse)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("SELECT id, email, motdepasse FROM admin WHERE email = ? AND motdepasse = ?");

        $req->execute(array($email, $motdepasse));
    
        if($req->rowCount()== 1){

            $data = $req->fetch();

            return $data;
        }

        else{
            return false;
        }

    }
}


function getUser($email, $motdepasse)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("SELECT id, email, motdepasse FROM utilisateur WHERE email = ? AND motdepasse = ?");

        $req->execute(array($email, $motdepasse));
    
        if($req->rowCount() == 1) {
            $data = $req->fetch();
            return $data;
        } else {
            return false;
        }
    }
}



function ajouter($titre, $image, $lien, $description)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("INSERT INTO videos (titre, image, lien, description) VALUES (?, ?, ?, ?)");

        $req->execute(array($titre, $image, $lien, $description));

        $req->closeCursor();
    }
}



function afficher()
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("SELECT * FROM videos ORDER BY id DESC");

        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);


        $req->closeCursor();
        
        return $data;

        
    }
}

function supprimer($id)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("DELETE FROM videos WHERE id=?");

        $req->execute(array($id));

    }
}


function getVideo($id)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("SELECT * FROM video WHERE id=?");

        $req->execute(array($id));
    
        if($req->rowCount()== 1){

            $data = $req->fetchAll(PDO::FETCH_OBJ);

            return $data;
        }

        else{
            return false;
        }


    }
}



function rechercher($titre)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("SELECT * FROM videos WHERE titre LIKE :titre OR lien LIKE :titre");
        $req->bindValue(':titre', '%'.$titre.'%');
        $req->execute();

        $data = $req->fetchAll(PDO::FETCH_OBJ);

        $req->closeCursor();
        
        return $data;
    }
}



function recupereVideorParId($id) {
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("INSERT INTO utilisateur (pseudo, email, motdepasse) VALUES (?, ?, ?)");

        $req->execute(array('$pseudo', '$email', '$motdepasse'));
        $req->closeCursor();
    }


    $req = $access->prepare("SELECT * FROM videos WHERE id = :id");
    $req->bindParam(':id', $id, PDO::PARAM_INT);
    $req->execute();
    return $req->fetch(PDO::FETCH_OBJ);
}




function addUser($pseudo, $email, $motdepasse)
{
    if(require("Yourtube-Connexion.php"))
    {
        $req = $access->prepare("INSERT INTO utilisateur (pseudo, email, motdepasse) VALUES (?, ?, ?)");

        $req->execute(array($pseudo, $email, $motdepasse));

        $req->closeCursor();
    }
}

function estConnecte() {
    return isset($_SESSION['user_id']);
}


function getVideoById($id_video)
{
    if (require("Yourtube-Connexion.php")) {
        $req = $access->prepare("SELECT * FROM videos WHERE id = ?");
        $req->execute(array($id_video));

        if ($req->rowCount() == 1) {
            $data = $req->fetch(PDO::FETCH_OBJ);
            return $data;
        } else {
            return false;
        }
    }
}


?>




























