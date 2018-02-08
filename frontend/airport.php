<?php
extract($_GET);
// Create connection
$conn = mysqli_connect("localhost","root","","pilots");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
