<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT personno, person_category_no, name, link_address, description, pic_address FROM person WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['personno'] ] = array( 
    		"pic_address" => $row['pic_address'] ,
    		"name" => $row['name'] ,
    		"link_address" => $row['link_address'] ,
    		"person_category_no" => $row['person_category_no'] ,
    		"description" => $row['description']
    	);
    }
    echo json_encode($arr);
?>