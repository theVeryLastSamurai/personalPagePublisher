<?php
	if (!isset($_REQUEST['socialinfojson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['socialinfojson'] ,true);
	
	$first_time_flag=true;
	foreach( $json as $slink){
		$checkbox= ($slink['CheckboxVal']=='true')? 1 : 0;
		$query="";
		if($checkbox){
			$query="UPDATE `ppp_db`.`social_link` SET `activity_status` = 1, `link_address` = '".$slink['LinkVal']."' WHERE `social_link`.`websiteno`= ".$websiteno." AND `social_link`.`type` = '".$slink['Type']."' ;";
		}else{
			$query="UPDATE `ppp_db`.`social_link` SET `activity_status` = 0 WHERE `social_link`.`websiteno`= ".$websiteno." AND `social_link`.`type` = '".$slink['Type']."' ;";
		}

		$result=$conn->query($query);
		if(!$result){
			if($first_time_flag)
				echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
			else
				echo "[ Unknown Error ] Data was PARTIALLY Saved ! Try Again to Save All Data";
			return;
		}
		$first_time_flag=false;
	}
    
    echo "RIGHT";
?>