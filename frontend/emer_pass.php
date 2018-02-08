<?php
extract($_GET);
// Create connection
$conn = mysqli_connect("localhost","root","","indigo");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo '<!DOCTYPE html>
	<html>
		<head>
			<script src="slideshow.js"></script>
			<link rel ="stylesheet"  type="text/css" href ="home_page.css">
			<link rel="stylesheet" type="text/css" href="purchase_css.css">
			<link rel ="stylesheet"  type="text/css" href ="forms_css.css">	
			   <style>
                               body
                               {
                                background-image: url("pexels-photo.jpg");
                                background-repeat: no-repeat;
                                background-attachment: fixed;
                                background-size:cover;
                                }					
              		.plane_buy_content{
			position:relative;
			top:30%;
			width:60%;
			opacity:0.7;
			left:50px;
			
			}
			
			h3{
			
			position:relative;
			left:45;
					
			}
               </style>
			<title>Update</title>
		</head>
		
		<body>
                         	<hr width=100% height=1px padding-top=-10></hr> 
			<h3>INDIGO</h3>
			<hr width=100% height=1px padding-top=-10></hr> 
			<div class="navigat">
			<nav class="navigation_bar">
				<ul>
				<li style="float: left; width: 275px; top:5px; position:relative;"><a href="home_page.html">Home</a></li>
				<li style="float: left; width: 275px; top:5px; position:relative;"><a href="Update.html">Update</a></li>
				<li style="float: left; width: 275px; top:5px; position:relative;"><a href="View.html">View</a></li>
				<li style="float: left; width: 275px; top:5px; position:relative;"><a href="Query.html">Query</a></li>
				<li style="float: left; width: 300px; top:5px"><a href ="contact_us.html">Contact us</a></li>  
					
				</ul>
			</nav>
			</div>
</br></br></br></br></br></br>';

$sql="SELECT DISTINCT airport.Name from airport WHERE airport.Code
IN(SELECT can_land.airport_code from can_land WHERE airplane_type=
	(SELECT airplane.type_name from airplane WHERE airplane.id=
		(SELECT flight.airplane_id from flight WHERE flight_number=
			(SELECT booked_leg.flight_no from booked_leg WHERE booked_leg.ticket_id=
				(SELECT ticket.ticket_id from ticket WHERE ticket.cust_id=
					(SELECT customer.cust_id from customer WHERE fname='$ip_fname' and lname='$ip_lname') and ticket.date='$ip_date')))))";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo '<table><tr><th>Airports AVAIL for Emergency Landing</th></tr>';
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["Name"]."</td></tr>";
    }
    echo "</table>";
} 
else {	
    echo "0 results";
}

echo '<button class="back_top"><a href ="#top">^</a></button>
	<hr width=100% height=1px color=#D3D3D3></hr>
	<footer class="home_page_footer">
	<p>Follow us on</p>
	<a target="_blank" title="find us on Facebook" href="https://www.facebook.com/INDIGO/">
	<img alt="follow us on facebook" display="inline" src="fb-art.jpg" width="20px" height="20px" border=none></a>
	<a target="_blank" title="Find us on twitter" href=""><img alt="follow us on facebook" display="inline" src="twitter.png" width="20px" height="20px" border=none></a>
	<p><span>Copyright &copy 2017 &middotAll Rights Reserved &middot </span><a href="home_page.html" >INDIGO</a></p>
	</footer>
</body>
</html>';
mysqli_close($conn);
?>