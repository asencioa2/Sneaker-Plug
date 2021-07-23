<?php

    $host = "localhost";  
    $user = "super";  
    $password = 'super';  
    $db_name = "Sneaker_Plug";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  
?>


<!DOCTYPE html>
<html>
  <head>
    <title>Connection</title>
    <style>
	body {background-color: coral;}

    </style>
  </head>
  <body>
	
  </body>
</html>
