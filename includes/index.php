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