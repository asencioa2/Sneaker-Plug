<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">    
<style>
</style>
</head>

<body>
    <div class = "container">
        <H1 style = text-align: center><b>Login Page</b></H1>
        <br>

        <form action = "test_logjn.php" method="post">
            <label for="user">Username: </label>
            <input type="email" name="email" id = "email">
            <br>
            <label for="pwd">Password: </label>
            <input type="password" id="PASSWORD" name = "PASSWORD">
            <br><br>
        
            <input type="submit" value="Login" name="submit" id = "submit" class = "bg-primary text-white">
            <br><br>  

        </form>
        <p><em></em></p>
    </div>

    


</body>
</html>
