<?php
	
	require_once("../webservices/everypage_technical_header.php");

	if(!isset($_REQUEST['title']) || !isset($_REQUEST['content'])){
		echo "WRONG";
		return;
	}

	$dir=$_SESSION['LoggedIn']."_temp";
	if(!is_dir($dir)){
		mkdir($dir);
	}

	$filename=$_REQUEST['title'];
	$src=$_REQUEST['content'];

	$myfile = fopen($dir."/".$filename , "w") or die("WRONG");
	fwrite($myfile, $src) or die("WRONG");
	fclose($myfile) or die("WRONG");

	echo "right";

?>