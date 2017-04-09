<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT * FROM groupmeeting WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['groupmeeting_no'] ] = array( 
    		"title" => $row['title'] ,
            "day" => $row['day'] ,
    		"time" => $row['time'],
            "venue" => $row['venue']
    	);
    }
    $webservice_output= json_encode($arr);
?>