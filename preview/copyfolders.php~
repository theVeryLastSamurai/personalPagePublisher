<?php
	require_once("../webservices/everypage_technical_header.php");

	if(!is_dir($_SESSION['LoggedIn']."_temp")){
		mkdir($_SESSION['LoggedIn']."_temp");
	}


	$folders=array('css', 'js' , 'fonts' ,$_SESSION['LoggedIn']."_images" , $_SESSION['LoggedIn']."_peopleimages", $_SESSION['LoggedIn']."_researchimages");

	$flag=true;

	foreach( $folders as $f){

		$newdir=$_SESSION['LoggedIn']."_temp/".$f;

		if(!is_dir($newdir)){
			mkdir($newdir);
		}

		$srcdir=realpath(dirname(__FILE__)."/".$f);

		$dir = new DirectoryIterator($srcdir);
		foreach ($dir as $fileinfo) {
		    if (!$fileinfo->isDot()) {
		    	$flag= copy( $srcdir."/".$fileinfo->getFilename() , $newdir."/".$fileinfo->getFilename() ) && $flag;
		    }
		}
	}
	if($flag)echo "right";

?>
