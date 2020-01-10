<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "service_provider";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
if(isset($_POST["submit"]))
{
	$service_provider_name=$_POST["service_provider_name"];
	$domain=$_POST["domain"];
	$email_ids=$_POST["email_ids"];
	$price=$_POST["price"];
	$price_select=$_POST["price_select"];
	$one_gb=$_POST["one_gb"];
	$one_gb_amount_type=$_POST["one_gb_amount_type"];
	$two_gb=$_POST["two_gb"];
	$two_gb_amount_type=$_POST["two_gb_amount_type"];
	$com=$_POST["com"];
	$com_currency=$_POST["com_currency"];

	
	$sql="insert into service_provider(service_provider_name)values('$service_provider_name')";

	if ($conn->query($sql) === TRUE) {
	$service_provider_id=$conn->insert_id;
	$sql="insert into hosting_package(no_of_domains,no_of_emails,price_in_INR,service_provider_id)values('$domain','$email_ids','$price','$service_provider_id')";
	$conn->query($sql);
	$sql="insert into vps_package(1GB_price_INR,2GB_price_INR,service_provider_id)values('$one_gb','$two_gb','$service_provider_id')";
	$conn->query($sql);
	$sql="insert into domain_package(com_price_INR,service_provider_id)values('$com','$service_provider_id')";
	$conn->query($sql);

    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
	
?>
<script type="text/javascript">
	
    alert("Success");
	window.location="service_form.html";
	 </script>
	
	<?php
}
?>
