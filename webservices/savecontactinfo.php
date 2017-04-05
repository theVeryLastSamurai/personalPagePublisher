<?php
	if (!isset($_REQUEST['pageid']) || !isset($_REQUEST['email']) || !isset($_REQUEST['tel']) || !isset($_REQUEST['cell'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query=array();
	$query[0]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['email']."' WHERE `text`.`websiteno` = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'email' ;";
	$query[1]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['tel']."' WHERE `text`.`websiteno` = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'tel' ;";
	$query[2]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['cell']."' WHERE `text`.`websiteno` = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'cell' ;";

	foreach ($query as $q ) {
		$result=$conn->query($q);

		if(!$result){
			echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
			return;
		}
	}

    echo "RIGHT";
?>