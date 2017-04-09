<?php
	if (!isset($_REQUEST['groupmeetingjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['groupmeetingjson']);

	if(is_array($json)){
		$topic_numbers=array();
		foreach( $json as $r){

			if($r->groupmeetingno=='-1'){
				$query="INSERT INTO `groupmeeting` (`groupmeeting_no`, `websiteno`, `title`, `day`, `time`, `venue`) VALUES (NULL, '".$websiteno."', '".$r->title."', '".$r->day."', '".$r->time."', '".$r->venue."');";
			}else{
				$query="UPDATE `groupmeeting` SET `title` = '".$r->title."', `day` = '".$r->day."', `time` = '".$r->time."', `venue` = '".$r->venue."' WHERE `groupmeeting`.`groupmeeting_no` =  ".$r->groupmeetingno." ;";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->groupmeetingno==-1){
				$query="SELECT LAST_INSERT_ID(); ";
				$result=$conn->query($query);
				$row=$result->fetch_assoc();
				array_push($topic_numbers, $row['LAST_INSERT_ID()'] );
			}
		}
	}

	if(isset($_REQUEST['deletejson']) && trim($_REQUEST['deletejson']," ")!=''){
		$ToDelete=json_decode($_REQUEST['deletejson']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				$query="DELETE FROM `groupmeeting` WHERE `groupmeeting`.`groupmeeting_no` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	if(is_array($topic_numbers)) echo json_encode($topic_numbers);

?>