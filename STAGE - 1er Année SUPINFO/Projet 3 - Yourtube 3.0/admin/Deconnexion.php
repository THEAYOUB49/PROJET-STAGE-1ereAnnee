<?php

    session_start();

    if(isset($_SESSION['admin01020304'])){
        $_SESSION['admin01020304'] =array();

        session_destroy();

        header("Location: ../Yourtube.php");

    }else{
        header("Location: ../login.php");
    }

?>