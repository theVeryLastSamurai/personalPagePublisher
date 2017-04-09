<?php
	if (!isset($_REQUEST['html']) || !isset($_REQUEST['pageid'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE `ppp_db`.`user` SET `profilepic_caption`='".$_REQUEST['html']."' WHERE `user`.websiteno = ".$websiteno." ;";
	
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}

    echo "RIGHT";
?>