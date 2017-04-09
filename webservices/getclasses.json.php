<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT class.classno, class.title, class.link,  class.description, class.schedule , class.venue, season.seasonno
            FROM class INNER JOIN season
            ON class.seasonno=season.seasonno
            WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['classno'] ] = array( 
    		"title" => $row['title'] ,
            "link" => $row['link'] ,
    		"description" => $row['description'] ,
    		"schedule" => $row['schedule'] ,
    		"venue" => $row['venue'],
            "seasonno" => $row['seasonno']
    	);
    }
    
    echo json_encode($arr);
?>