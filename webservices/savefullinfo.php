<?php
	if (!isset($_REQUEST['fullname']) || !isset($_REQUEST['academicspecs']) || !isset($_REQUEST['department']) || !isset($_REQUEST['pageid'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query=array();

	$query[0]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['fullname']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'fullname' ;";
	$query[1]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['academicspecs']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'academic_specs' ;";
	$query[2]="UPDATE `ppp_db`.`text` SET `content`='".$_REQUEST['department']."' WHERE `text`.websiteno = ".$websiteno." AND `text`.`page_id` = '".$_REQUEST['pageid']."' AND `text`.`text_id` = 'department' ;";
	
	foreach ($query as $q){
		$result=$conn->query($q);
		if(!$result){
			echo "[ Unknown Error ] Oops ! Something Went Wrong & your Info Was Not Completey Saved - Try Again";
			return;
		}
	}

    echo "RIGHT";
?>