<?php

	include("../../webservices/database_header.php");

	if(!isset($_REQUEST['username']) || !$_REQUEST['username']){
		echo "wrong";
		return;
	}

	$query="SELECT * FROM `user` WHERE username = '".$_REQUEST['username']."' ;";
	$result=$conn->query($query);

	if($result->num_rows>0){
		echo "wrong";
		return;
	}

	echo "RIGHT";
?>
