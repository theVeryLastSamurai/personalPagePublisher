<?php
	if (!isset($_REQUEST['researchjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['researchjson']);

	if(is_array($json)){
		$topic_numbers=array();
		foreach( $json as $r){

			if($r->topicno=='-1'){
				$query="INSERT INTO `research_topic` (`topicno`, `websiteno`, `title`, `link`, `description`, `pic_bool`, `header_bool`) VALUES (NULL, '".$websiteno."', '".$r->title."', '".$r->link."', '".$r->description."', '".$r->pic_bool."', '".$r->heading."');";
			}else{
				$query="UPDATE `ppp_db`.`research_topic` SET `research_topic`.`title`= '".$r->title."', `research_topic`.`link`= '".$r->link."',`research_topic`.`description`= '".$r->description."', `research_topic`.`pic_bool` = '".$r->pic_bool."', `research_topic`.`header_bool`= '".$r->heading."' WHERE `research_topic`.`topicno` = ".$r->topicno." ;";
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
				$query="DELETE FROM `research_topic` WHERE `research_topic`.`topicno` = ".$item." ;";
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
