<?php

	require_once("webservice_technical_header.php");

	$query="SELECT * FROM `user` WHERE 1;";
	$result=$conn->query($query);

	$users=array();

	for($i=0; $i<$result->num_rows ;$i++){
		$row=$result->fetch_assoc();

		$temp=array(
			'username' => $row['username'],
			'email' => $row['email']
		);

		array_push($users, $temp);
	}

	echo json_encode($users);

?>