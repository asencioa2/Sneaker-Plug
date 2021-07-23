<!DOCTYPE html>
    <html>
    <head>
        <title>Contact Us Page </title>
    </head>
    <body>
        <?php
            $Fname = $_POST['Fname'];
            $Lname = $_POST['Lname'];
            echo "<h2> Thank you $Fname $Lname for your Inquiry</h2> <br>";
 
            echo "The following is the information that you have entered: <br>";
 
            $NumberandStreet = $_POST['NumberandStreet'];
            echo "Number and Street: $NumberandStreet <br>";
 
            $city = $_POST['city'];
            echo "City: $city <br>";
 
            $state = $_POST['state'];
            echo  "State: $state <br>";
 
            $zipcode = $_POST['zipcode'];
            echo "Zip Code: $zipcode <br>";
 
            $phone = $_POST['phone'];
            echo "Phone: $phone <br>";
 
            $email = $_POST['email'];
            echo  "Email: $email <br>";
 
            $request = $_POST['request'];
            echo "Special Request: $request <br>";
        ?> 
    </body>
</html>
