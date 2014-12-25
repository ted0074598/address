<?php

//include_once 'bridge.php';


echo "hello word";


$link = mysqli_connect("localhost","root","","address") or die("Error " . mysqli_error($link)); 

//consultation: 

$query = "SELECT * FROM `p_information`" or die("Error in the consult.." . mysqli_error($link)); 

//execute the query. 
$link->query("SET character_set_client='utf8'");
$link->query("SET character_set_connection='utf8'");
$link->query("SET character_set_results='utf8'");

		
$result = $link->query($query); 

//display information: 

while($row = mysqli_fetch_array($result)) { 
echo $row["p_name"] . "<br>"; 
}

?>