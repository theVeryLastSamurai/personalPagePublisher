<?php
	session_start();
	if(!isset($_SESSION['AdminLoggedIn']) || $_SESSION['AdminLoggedIn']==false)
		exit("WRONG");
	else{
		$_SESSION['AdminLoggedIn']=false;
		echo "RIGHT";
	}

?>