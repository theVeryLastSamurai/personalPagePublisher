<?php
	if (!isset($_REQUEST['html']) || !isset($_REQUEST['pageid']) || !isset($_REQUEST['bool'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE `ppp_db`.`website` SET `homepage_header_caption`='".$_REQUEST['html']."', `homepage_header_caption_bool`='".($_REQUEST['bool']=='true'?'1':'0')."' WHERE websiteno = ".$websiteno." ;";
	
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}

    echo "RIGHT";
?>
