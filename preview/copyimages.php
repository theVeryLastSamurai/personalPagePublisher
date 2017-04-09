<?php
	require_once("../webservices/everypage_technical_header.php");

	$dir=$_SESSION['LoggedIn']."_images";
	if(!is_dir($dir)){
		mkdir($dir);
	}

	$query="SELECT `homepage_header_address`,`default_header_address` FROM `website` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);
	$row=$result->fetch_assoc();
	$HeaderImage=$row['default_header_address'];
	$HomepageImage=$row['homepage_header_address'];
	$flag=true;

	
	while(!$HeaderImage){
		$query="UPDATE `website` SET `default_header_address` = 'default.jpg' WHERE `websiteno` = ".$websiteno.";";
		$result=$conn->query($query);

		if(!$result) continue;

		$query="SELECT `default_header_address` FROM `website` WHERE websiteno = ".$websiteno." ;";
		$result=$conn->query($query);
		$row=$result->fetch_assoc();
		$HeaderImage=$row['default_header_address'];
	}
	$flag=copy( "../app_data/img/defaultheader/".$HeaderImage , $dir."/header_".$HeaderImage ) && $flag;

	while(!$HomepageImage){
		$query="UPDATE `website` SET `homepage_header_address` = 'default.jpg' WHERE `websiteno` = ".$websiteno." ;";
		$result=$conn->query($query);

		if(!$result) continue;

		$query="SELECT `homepage_header_address` FROM `website` WHERE websiteno = ".$websiteno." ;";
		$result=$conn->query($query);
		$row=$result->fetch_assoc();
		$HomepageImage=$row['homepage_header_address'];
	}
	$flag=copy( "../app_data/img/homepageheader/".$HomepageImage , $dir."/homepage_".$HomepageImage ) && $flag;



	$query="SELECT `pic_address` FROM `user` WHERE username = '".$_SESSION['LoggedIn']."' ;";

	$result=$conn->query($query);
	$row=$result->fetch_assoc();
	$ProfilePic=$row['pic_address'];

	while(!$ProfilePic){
		$query="UPDATE `user` SET `pic_address` = 'default.jpg' WHERE `user`.`username` = '".$_SESSION['LoggedIn']."';";
		$result=$conn->query($query);

		if(!$result) continue;

		$query="SELECT `pic_address` FROM `user` WHERE username = '".$_SESSION['LoggedIn']."' ;";
		$result=$conn->query($query);
		$row=$result->fetch_assoc();
		$ProfilePic=$row['pic_address'];
	}
	$flag=copy( "../app_data/img/profilepic/".$ProfilePic , $dir."/profilepic_".$ProfilePic ) && $flag;
/*
	if($HeaderImage){
		$flag=copy( "../app_data/img/defaultheader/".$HeaderImage , "images/header_".$HeaderImage ) && $flag;
	}else{
		$HeaderImage=$_SESSION['LoggedIn'].".jpg";
		$flag=copy( "../app_data/img/defaultheader/default.jpg" , "images/header_".$HeaderImage ) && $flag;
	}

	if($HomepageImage){
		$flag=copy( "../app_data/img/homepageheader/".$HomepageImage , "images/homepage_".$HomepageImage ) && $flag;
	}else{
		$HomepageImage=$_SESSION['LoggedIn'].".jpg";
		$flag=copy( "../app_data/img/homepageheader/default.jpg" , "images/homepage_".$HomepageImage ) && $flag;
	}

	$HeaderImage="header_".$HeaderImage;
	$HomepageImage="homepage_".$HomepageImage;

*/

	$flag=copy( "../app_data/img/iasbsLogo.png" , $dir."/iasbsLogo.png" ) && $flag;

	if(!$flag){
		echo "WRONG";
		return;
	}
	echo "RIGHT";

?>