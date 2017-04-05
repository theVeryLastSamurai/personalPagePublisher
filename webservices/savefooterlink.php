<?php
	if (!isset($_REQUEST['footerlinkjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['footerlinkjson'] ,true);
	
	$i=0;
	foreach( $json as $flink ){
		
		$query="UPDATE `ppp_db`.`footer_link` SET `font_icon` = '".$flink['fonticon']."', `title` = '".$flink['title']."', `description`='".$flink['description']."', `activity_status`= ".$flink['LinkCheck'].", `link_label`='".$flink['FooterLinkLinkTitle']."', `link_address`='".$flink['FooterLinkLinkAddress']."'  WHERE `footer_link`.`websiteno`= ".$websiteno." AND `footer_link`.`role` = ".$i." ;";
		$i++;
		
		$result=$conn->query($query);
		if(!$result){
			echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
			return;
		}
	}

    echo "RIGHT";
?>