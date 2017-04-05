<?php
	session_start();
	include("database_header.php");
	if(!isset($_REQUEST['username']) || !isset($_REQUEST['password'])) exit('WRONG');
	$username=$_REQUEST['username'];
	$password=$_REQUEST['password'];

	$query="SELECT * FROM user WHERE username='".$username."' AND password='".$password."' ;";
	$result = $conn->query($query);

	if ($result->num_rows <= 0){
		$_SESSION['LoggedIn']=false;
		exit("WRONG");
	}
	
	if ($result->num_rows > 0){
	    // output data of each row
	    /*while($row = $result->fetch_assoc()) {
	        echo "username: " . $row["username"]. " - pass: " . $row["password"]. " " . $row["website#"]. " " . $row["pic_address"]. "<br>";
	    }*/
	    $_SESSION['LoggedIn']=$username;
	    echo "RIGHT";
	}

?>