<?php
	if ( !isset($_REQUEST['status']) ){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE website SET homepage_header_status = ".$_REQUEST['status']." WHERE websiteno = $websiteno ;";
	
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}

    echo "RIGHT";
?>