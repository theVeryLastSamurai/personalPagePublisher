<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT pano, pa_category_no, title, description FROM pa WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['pano'] ] = array(
    		"title" => $row['title'] ,
    		"pa_category_no" => $row['pa_category_no'] ,
    		"description" => $row['description']
    	);
    }
    echo json_encode($arr);
?>