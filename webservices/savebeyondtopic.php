<?php
	if (!isset($_REQUEST['beyondjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['beyondjson']);

	if(is_array($json)){
		$topic_numbers=array();
		foreach( $json as $r){

			if($r->topicno=='-1'){
				$query="INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES (NULL, '".$websiteno."', '".$r->title."', '".$r->description."');";
			}else{
				$query="UPDATE `beyondtopic` SET `title` = '".$r->title."', `description` = '".$r->description."' WHERE `beyondtopic`.`beyondtopic_no` = ".$r->topicno.";";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->topicno==-1){
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
				$query="DELETE FROM `beyondtopic` WHERE `beyondtopic`.`beyondtopic_no` = ".$item." ;";
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