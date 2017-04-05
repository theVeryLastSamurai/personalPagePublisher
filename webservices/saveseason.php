<?php
	if (!isset($_REQUEST['seasonjson'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$json=json_decode( $_REQUEST['seasonjson']);

	if(is_array($json)){
		$season_numbers=array();
		foreach( $json as $r){

			if($r->seasonno =='-1'){
				$query="INSERT INTO `season` (`seasonno`, `websiteno`, `title`) VALUES (NULL, '".$websiteno."', '".$r->title."');";
			}else{
				$query="UPDATE `season` SET `title` = '".$r->title."' WHERE `season`.`seasonno` = ".$r->seasonno.";";
			}

			$result =$conn->query($query);
			if(!$result){
				echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
				return;
			}

			if($r->seasonno ==-1){
				$query="SELECT LAST_INSERT_ID(); ";
				$result=$conn->query($query);
				$row=$result->fetch_assoc();
				array_push($season_numbers, $row['LAST_INSERT_ID()'] );
			}
		}
	}

	if(isset($_REQUEST['deletejson']) && trim($_REQUEST['deletejson']," ")!=''){
		$ToDelete=json_decode($_REQUEST['deletejson']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				$query="DELETE FROM `season` WHERE `season`.`seasonno` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	if(is_array($season_numbers)) echo json_encode($season_numbers);

?>