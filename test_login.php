?php
 include ('con.php');


 $email = mysqli_real_escape_string($con,$_POST['email']);
 $PASSWORD = mysqli_real_escape_string($con,$_POST['PASSWORD']);
 

 $sql = "select *from logininfo where username = '$email' and password = '$PASSWORD'";
 $result = mysqli_query($con, $sql);
 $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
 $count = mysqli_num_rows($result);
 
 if($count == 1){
     #echo "<h1><center> Login successful </center></h1>";
     #echo "<h3><center>Welecome: {$email}</h3>";
     header("Location: admin.html");
 }
 else{
     echo "<h1><center>Invalid username or password.</h1>";
 }  

 $con-> close();

?>
