<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT * FROM beyondtopic WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['beyondtopic_no'] ] = array( 
    		"title" => $row['title'] ,
    		"description" => $row['description']
    	);
    }
    $webservice_output= json_encode($arr);
?>