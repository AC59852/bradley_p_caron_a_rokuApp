<?php
    require('connect.php');


       function getUsers($conn) {
           

           $getData = 'SELECT t1.* FROM profiles t1, tbl_user t2 WHERE t1.username = t2.user_name';

           $runQuery = $conn->query($getData);

           $result = array();

           while ($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
               $result[] = $row;
           }

           return $result;
       }

    function getAllMovies($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getAllMovies = 'SELECT * FROM movies ORDER BY year';
        $runQuery = $conn->query($getAllMovies);

        $resultMovies = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultMovies[] = $row;
        }

        return $resultMovies;
    }

    function getAllShows($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getAllShows = 'SELECT * FROM shows ORDER BY year';
        $runQuery = $conn->query($getAllShows);

        $resultShows = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultShows[] = $row;
        }

        return $resultShows;
    }

    function getAllMusic($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getAllMusic = 'SELECT * FROM music ORDER BY year';
        $runQuery = $conn->query($getAllMusic);

        $resultMusic = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultMusic[] = $row;
        }

        return $resultMusic;
    }

    function getKidsMovies($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getKidsMovies = 'SELECT * FROM movies WHERE iskids = 1 ORDER BY year';
        $runQuery = $conn->query($getKidsMovies);

        $resultKidsMovies = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultKidsMovies[] = $row;
        }

        return $resultKidsMovies;
    }

    function getKidsMusic($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getKidsMusic = 'SELECT * FROM music WHERE isKids = 1 ORDER BY year';
        $runQuery = $conn->query($getKidsMusic);

        $resultKidsMusic = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultKidsMusic[] = $row;
        }

        return $resultKidsMusic;
    }

    function getKidsShows($conn) {
        // validate that the post method is working from out JS file

        // echo $userame; 

        $getKidsShows = 'SELECT * FROM shows WHERE isKids = 1 ORDER BY year';
        $runQuery = $conn->query($getKidsShows);

        $resultKidsShows = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultKidsShows[] = $row;
        }

        return $resultKidsShows;
    }

?>