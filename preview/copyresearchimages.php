<?php
	require_once("../webservices/everypage_technical_header.php");

	$dir=$_SESSION['LoggedIn']."_researchimages";
	if(!is_dir($dir)){
		mkdir($dir);
	}

	$query="SELECT `topicno`,`pic_address`,`pic_bool` FROM `research_topic` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);
	if(!$result){
		echo "WRONG";
		return;
	}

	$flag=true;

	for( $i=0 ; $i<$result->num_rows ; $i++){
		$row=$result->fetch_assoc();
		$pic=$row['pic_address'];
		$pic_bool=$row['pic_cool'];

		while(!$pic){
			$query="UPDATE `research_topic` SET `pic_address` = 'default.jpg', `pic_bool`=0 WHERE `research_topic`.`topicno` = ".$row['topicno']." ;";
			$res=$conn->query($query);

			if(!$res) continue;

			$query="SELECT `pic_address`,`pic_bool` FROM `research_topic` WHERE `topicno` = ".$row['topicno']." ;";
			$res=$conn->query($query);
			$temprow=$res->fetch_assoc();
			$pic=$temprow['pic_address'];
		}
		$flag=$flag=copy( "../app_data/img/researchpic/".$pic , $dir."/".$pic ) && $flag;
	}

	if(!$flag){
		echo "WRONG";
		return;
	}
	echo "RIGHT";

?>
