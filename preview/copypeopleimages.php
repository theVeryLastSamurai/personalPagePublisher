<?php
	require_once("../webservices/everypage_technical_header.php");

	$dir=$_SESSION['LoggedIn']."_peopleimages";
	if(!is_dir($dir)){
		mkdir($dir);
	}

	$query="SELECT `personno`,`pic_address` FROM `person` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);
	if(!$result){
		echo "WRONG";
		return;
	}

	$flag=true;

	for( $i=0 ; $i<$result->num_rows ; $i++){
		$row=$result->fetch_assoc();
		$pic=$row['pic_address'];

		while(!$pic){
			$query="UPDATE `person` SET `pic_address` = 'default.jpg' WHERE `person`.`personno` = ".$row['personno']." ;";
			$res=$conn->query($query);

			if(!$res) continue;

			$query="SELECT `pic_address` FROM `person` WHERE `personno` = ".$row['personno']." ;";
			$res=$conn->query($query);
			$temprow=$res->fetch_assoc();
			$pic=$temprow['pic_address'];
		}
		$flag=$flag=copy( "../app_data/img/peoplepic/".$pic , $dir."/".$pic ) && $flag;
	}

	if(!$flag){
		echo "WRONG";
		return;
	}
	echo "RIGHT";

?>