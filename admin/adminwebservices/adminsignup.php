<?php

	require_once("webservice_technical_header.php");

	if(!isset($_REQUEST['username']) || !isset($_REQUEST['password'])){
		echo "wrong";
		return;
	}

	$query="INSERT INTO `admin` (`username`, `password`, `issuper`) VALUES ('".$_REQUEST['username']."', '".$_REQUEST['password']."', '0');";
	if(!$conn->query($query)){
		echo "wrong";
		return;
	}

	echo 'right';

?>