<!DOCTYPE html>
    <html>
    <head>
        <title>Sneaker Plug! Feedback</title>
    </head>
    <body>
        <?php
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
            echo "<h2> Thank you $fname $lname for your Feedback</h2> <br>";
 
            echo "The following is the information that you have entered: <br>";
 
            $enter = $_POST['enter'];
            echo "Your Feedback: $enter <br>";
        ?> 
    </body>
</html>
