<?php
	require_once("../webservices/everypage_technical_header.php");
	if(!isset($_REQUEST['src'])){
		echo "WRONG";
		return;
	}
	$src=$_REQUEST['src'];
	$myfile = fopen("css/style.css", "w") or die("WRONG");
	fwrite($myfile, $src) or die("WRONG");
	fclose($myfile) or die("WRONG");

	echo "RIGHT";
?>