<?php
    require('connect.php');


       function getUsers($conn) {
           

           $getData = 'SELECT t1.* FROM profiles t1, users t2 WHERE t1.username = t2.username';

           $runQuery = $conn->query($getData);

           $result = array();

           while ($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
               $result[] = $row;
           }

           return $result;
       }



    function getUser($conn) {
        // validate that the post method is working from out JS file
        $username = $_POST['username'];

        // echo $userame; 

        $getUser = 'SELECT * FROM users WHERE username="'.$username.'"';
        $runQuery = $conn->query($getUser);

        $resultUser = array();

        while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
            // push each row of data into our arry to make it easy to iterate over
            $resultUser[] = $row;
        }

        return $resultUser;
    }

?>