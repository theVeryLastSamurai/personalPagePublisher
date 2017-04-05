<?php
	if (!isset($_REQUEST['color1']) || !isset($_REQUEST['color2'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$color1=$_REQUEST['color1'];
	$color2=$_REQUEST['color2'];
	
	$query="UPDATE `ppp_db`.`color` SET `hex` = '".$color1."' WHERE `color`.`websiteno`= ".$websiteno." AND `color`.`role`= 0 ; ";
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}
	$query="UPDATE `ppp_db`.`color` SET `hex` = '".$color2."' WHERE `color`.`websiteno`= ".$websiteno." AND `color`.`role`= 1 ; ";
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;	
	}
    $_SESSION['filechange']=true;
    echo "RIGHT";
?>
