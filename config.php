<?php

//database login info
$dbuser = "Username";//otherwise "root"
$dbpw ="password";//otherwise  blank
$db = "DB name";

//Specific to you the store owner
$storeName = "Miranz Shop";
$rootURL = "http://yourrooturl.com/directory"; //example https://mysite.org  or http://yourhomepage.com/store
$yourEmail = "syed.aqeel@blockchainexpertsolutions.com";  //email notifications will be sent to this email when a new order is placed


//connect to the database
$conn = mysqli_connect("localhost", $dbuser, $dbpw, $db);
if(!$conn){
  die('Connection error check server log');
}

?>
