<?php
	session_start();
	if(!isset($_SESSION['LoggedIn']) || $_SESSION['LoggedIn']==false)
		exit("WRONG");
	else{
		$_SESSION['LoggedIn']=false;
		echo "RIGHT";
	}

?>