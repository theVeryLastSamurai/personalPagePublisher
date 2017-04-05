<?php
	if (!isset($_REQUEST['pageid']) || !isset($_REQUEST['title'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE `ppp_db`.`page` SET `title`='".$_REQUEST['title']."' WHERE `page`.websiteno = ".$websiteno." AND `page`.`page_id` = '".$_REQUEST['pageid']."' ;";
	$result=$conn->query($query);

	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}

    echo "RIGHT";
?>