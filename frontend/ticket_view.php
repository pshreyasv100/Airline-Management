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
			<link rel ="stylesheet"  type="text/css" href ="purchase_css.css">
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

echo "<h1>List of tickets with cutomer name and flight details</h1>";
$sql="SELECT * from customer, ticket, booked_leg
where ticket.ticket_id=booked_leg.ticket_id
and customer.cust_id=ticket.cust_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo '<table><tr><th>fname</th><th>lame</th><th>phone</th><th>customerid</th><th>ticket_id</th><th>class</th><th>amount</th><th>flight_no</th><th>flight_leg_no</th><th>seat_no</th><th>date(yyyy-mm-dd)</th></tr>';
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["fname"]."</td><td>".$row["lname"]."</td><td>".$row["phone_no"]."</td><td>".$row["cust_id"]."</td><td>".$row["ticket_id"]."</td><td>".$row["class"]."</td><td>".$row["amount"]."</td><td>".$row["flight_no"]."</td><td>".$row["flight_leg_no"]."</td><td>".$row["seat_no"]."</td><td>".$row["date"]."</td></tr>";
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