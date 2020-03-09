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

    if(isset($_GET["getKidsMovies"])) {
        $KidsMovies = getKidsMovies($pdo);
    
        echo json_encode($KidsMovies);
    }

    