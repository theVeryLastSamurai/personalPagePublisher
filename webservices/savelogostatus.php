<?php
	if (!isset($_REQUEST['logo'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE website SET logo = ".$_REQUEST['logo']." WHERE websiteno = $websiteno ;";

	$result=$conn->query($query);
	if(!$result) echo "Logo Status Could NOT save - Try again later...";
	else echo "RIGHT";
?>