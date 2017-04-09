<?php
	if (!isset($_REQUEST['classjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['classjson']);

	if(is_array($json)){
		$class_numbers=array();
		foreach( $json as $r){

			if($r->classno=='-1'){
				$query="INSERT INTO `class` (`classno`, `seasonno`, `title`, `link`, `description`, `schedule`, `venue`) VALUES (NULL, '".$r->season."', '".$r->title."', '".$r->link."', '".$r->description."', '".$r->schedule."', '".$r->venue."');";
			}else{
				$query="UPDATE `class` SET `seasonno` = '".$r->season."', `title` = '".$r->title."', `link` = '".$r->link."', `description` = '".$r->description."', `schedule` = '".$r->schedule."', `venue` = '".$r->venue."' WHERE `class`.`classno` = ".$r->classno." ;";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->classno==-1){
				$query="SELECT LAST_INSERT_ID(); ";
				$result=$conn->query($query);
				$row=$result->fetch_assoc();
				array_push($class_numbers, $row['LAST_INSERT_ID()'] );
			}
		}
	}

	if(isset($_REQUEST['deletejson']) && trim($_REQUEST['deletejson']," ")!=''){
		$ToDelete=json_decode($_REQUEST['deletejson']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				$query="DELETE FROM `class` WHERE `class`.`classno` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	if(is_array($class_numbers)) echo json_encode($class_numbers);

?>