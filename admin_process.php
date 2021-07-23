<?php
include ('con.php');

$email = $_POST['email'];
$PASSWORD = $_POST['pwd'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$product = $_POST['product'];
$price = $_POST['price'];
$size = $_POST['size'];
$color = $_POST['color'];

if (isset($_POST['submit1']))
{
    $sql = "INSERT INTO logininfo (username,password,fname,lname) VALUES ('$email','$PASSWORD','$fname','$lname')";

    if (mysqli_query($con, $sql))
    {
        echo "<h1><center> New login was created! </center></h1>";

    }
    else
    {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

}
elseif (isset($_POST['submit2']))
{
    $sql = "INSERT INTO Inventory (ProductID,Price,Size,Color) VALUES ('$product','$price','$size','$color')";

    if (mysqli_query($con, $sql))
    {
        echo "<h1><center> New record was created! </center></h1>";

    }
    else
    {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }

}
elseif (isset($_POST['submit3']))
{
    $sql = "SELECT * FROM Inventory";
    $result = mysqli_query($con, $sql);

    echo "<table border='1'>
    <tr>
    <th>ProductID</th>
    <th>Price</th>
    <th>Size</th>
    <th>Color</th>
    </tr>";

    while ($row = mysqli_fetch_array($result))
    {
        echo "<tr>";
        echo "<td>" . $row['ProductID'] . "</td>";
        echo "<td>" . $row['Price'] . "</td>";
        echo "<td>" . $row['Size'] . "</td>";
        echo "<td>" . $row['Color'] . "</td>";
        echo "</tr>";
    }
    echo "</table>";

}

$con->close();

?>
