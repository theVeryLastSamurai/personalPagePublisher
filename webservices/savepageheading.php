<?php
	if (!isset($_REQUEST['pageid']) || !isset($_REQUEST['heading']) || !isset($_REQUEST['subheading'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query=array();

	$query[0]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['heading']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'heading' ;";
	
	$query[1]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['subheading']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'subheading' ;";

	foreach( $query as $q){
		$result=$conn->query($q);

		if(!$result){
			echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
			return;
		}
	}

    echo "RIGHT";
?>