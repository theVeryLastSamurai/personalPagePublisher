<?php
	if (!isset($_REQUEST['pajson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['pajson']);

	if(is_array($json)){
		$peoplenumbers=array();
		foreach( $json as $r){

			if($r->personno=='-1'){
				$query="INSERT INTO `pa` (`pano`, `websiteno`, `pa_category_no`, `title`, `description`) VALUES (NULL, '".$websiteno."', '".$r->category."', '".$r->name."', '".$r->description."');";
			}else{
				$query="UPDATE `pa` SET `pa_category_no` = '".$r->category."', `title` = '".$r->name."', `description` = '".$r->description."' WHERE `pa`.`pano` = ".$r->personno." ;";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->personno==-1){
				$query="SELECT LAST_INSERT_ID(); ";
				$result=$conn->query($query);
				$row=$result->fetch_assoc();
				array_push($peoplenumbers, $row['LAST_INSERT_ID()'] );
			}
		}
	}

	if(isset($_REQUEST['deletejson']) && trim($_REQUEST['deletejson']," ")!=''){
		$ToDelete=json_decode($_REQUEST['deletejson']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){

				$query="DELETE FROM `pa` WHERE `pa`.`pano` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	if(is_array($peoplenumbers)) echo json_encode($peoplenumbers);

?>