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

		$q="UPDATE `user` SET `username` = '".$user->new_username."', `email` = '".$user->new_email."' WHERE `user`.`username` = '".$user->username."';";

		array_push($query, $q);

		$q="UPDATE `website` SET `username` = '".$user->new_username."' WHERE `website`.`username` = '".$user->username."';";

		array_push($query, $q);

	}

	foreach ($query as $q) {
		$result=$conn->query($q);
		if(!$result){
			echo "wrong";
			return;
		}
	}

	
	echo "right";
?>