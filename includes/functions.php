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

?>