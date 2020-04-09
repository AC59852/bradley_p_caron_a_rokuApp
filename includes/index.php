<?php
    require('functions.php');

    if (isset($_GET['user'])) {
        $user = getUser($pdo);

        echo json_encode($user);
    
    }
    
    if(isset($_GET["getUsers"])) {
        $users = getUsers($pdo);
    
        echo json_encode($users);
    }

    if(isset($_GET["getAllMovies"])) {
        $allMovies = getAllMovies($pdo);
    
        echo json_encode($allMovies);
    }

    if(isset($_GET["getAllMusic"])) {
        $allMusic = getAllMusic($pdo);
    
        echo json_encode($allMusic);
    }

    if(isset($_GET["getAllShows"])) {
        $allShows = getAllShows($pdo);
    
        echo json_encode($allShows);
    }

    if(isset($_GET["getKidsMovies"])) {
        $KidsMovies = getKidsMovies($pdo);
    
        echo json_encode($KidsMovies);
    }

    if(isset($_GET["getKidsMusic"])) {
        $KidsMusic = getKidsMusic($pdo);
    
        echo json_encode($KidsMusic);
    }

    if(isset($_GET["getKidsShows"])) {
        $KidsShows = getKidsShows($pdo);
    
        echo json_encode($KidsShows);
    }


    