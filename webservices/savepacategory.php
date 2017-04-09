<?php
	if (!isset($_REQUEST['categoryjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['categoryjson']);

	if(is_array($json)){
		$category_numbers=array();
		foreach( $json as $r){

			if($r->pacategoryno =='-1'){
				$query="INSERT INTO `pa_category` (`pa_category_no`, `websiteno`, `title`) VALUES (NULL, ".$websiteno.", '".$r->title."');";
			}else{
				$query="UPDATE `pa_category` SET `title` = '".$r->title."' WHERE `pa_category`.`pa_category_no` = ".$r->pacategoryno." ;";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->pacategoryno ==-1){
				$query="SELECT LAST_INSERT_ID(); ";
				$result=$conn->query($query);
				$row=$result->fetch_assoc();
				array_push($category_numbers, $row['LAST_INSERT_ID()'] );
			}
		}
	}

	if(isset($_REQUEST['deletejson']) && trim($_REQUEST['deletejson']," ")!=''){
		$ToDelete=json_decode($_REQUEST['deletejson']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				$query="DELETE FROM `pa_category` WHERE `pa_category`.`pa_category_no` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	if(is_array($category_numbers)) echo json_encode($category_numbers);

?>