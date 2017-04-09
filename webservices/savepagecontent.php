<?php
	if (!isset($_REQUEST['html']) || !isset($_REQUEST['pageid'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['html']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'page_content';";
	
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}

    echo "RIGHT";
?>