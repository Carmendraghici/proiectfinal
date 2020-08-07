<?php
//$con = mysqli_connect("localhost","my_user","my_password","my_db");
$con = mysqli_connect("localhost","admin","1234","proiect2php");
// Check connection
if (mysqli_connect_errno())
 {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }
 ?>