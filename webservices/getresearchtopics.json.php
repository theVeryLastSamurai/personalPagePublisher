<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT * FROM research_topic WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['topicno'] ] = array( 
            "title" => $row['title'] ,
            "link" => $row['link'] ,
            "description" => $row['description'],
            "pic_address" => $row['pic_address'],
            "pic_bool" => $row['pic_bool']==1?true:false,
            "header_bool" => $row['header_bool']==1?true:false
    	);
    }
    $webservice_output= json_encode($arr);
?>
