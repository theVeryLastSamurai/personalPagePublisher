<?php
	require_once("everypage_technical_header.php");

	$query= "SELECT pic_address FROM `user` WHERE `username` = '".$_SESSION['LoggedIn']."'";

    $result = $conn->query($query);
    $webservice_output="";
    
    if( $result->num_rows > 0){
        $row = $result->fetch_assoc();
        $webservice_output=$row['pic_address'];
    }else{
        $webservice_output="default.jpg";
    }

    echo $webservice_output;
?>