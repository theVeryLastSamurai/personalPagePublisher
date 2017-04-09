<?php

	if(!isset($_REQUEST['json']) || $_REQUEST['json']==''){
		echo "wrong";
		return;
	}

	require_once("webservice_technical_header.php");

	$users=json_decode($_REQUEST['json']);
	
	if(!is_array($users)){
		echo "wrong";
		return;
	}

	$query=array();

	foreach ($users as $user) {
		$query="DELETE FROM `admin` WHERE `admin`.`username` = '".$user."'; ";

		if(!$conn->query($query)){
			echo "wrong";
			return;
		}
	}

	
	echo "right";
?>