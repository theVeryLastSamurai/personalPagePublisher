<?php
	session_start();
	$_SESSION['AdminLoggedIn']=false;
	$_SESSION['IsSuperUser']=false;
	include("../../webservices/database_header.php");
	if(!isset($_REQUEST['username']) || !isset($_REQUEST['password'])) exit('WRONG');
	$username=$_REQUEST['username'];
	$password=$_REQUEST['password'];

	$query="SELECT * FROM admin WHERE username='".$username."' AND password='".$password."' ;";
	$result = $conn->query($query);

	if ($result->num_rows <= 0){
		$_SESSION['AdminLoggedIn']=false;
		$_SESSION['IsSuperUser']=false;
		exit("WRONG");
	}
	
	if ($result->num_rows > 0){
	    $row=$result->fetch_assoc();
	    
	    $_SESSION['AdminLoggedIn']=$username;
	    $_SESSION['IsSuperUser']=$row['issuper']?true:false;

	    echo "RIGHT";
	}

?>