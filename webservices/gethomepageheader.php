<?php
	require_once("everypage_technical_header.php");

	$query='SELECT homepage_header_address FROM website WHERE websiteno=\''.$websiteno.'\' ;';
    $result = $conn->query($query);
    $webservice_output="";
    
    if( $result->num_rows > 0){
        $row = $result->fetch_assoc();
        $webservice_output=$row['homepage_header_address'];
    }else{
        $webservice_output="default.jpg";
    }

    echo $webservice_output;
?>