<?php
    require_once("../webservices/everypage_technical_header.php");
    $query="SELECT person_category_no, title FROM person_category WHERE websiteno='".$websiteno."' ;";
    $result= $conn->query($query);
    $arr=array();

    for( $i=$result->num_rows ; $i>0 ; $i-- ){
    	$row=$result->fetch_assoc();
    	$arr[ $row['person_category_no'] ] = $row['title'];
    }

    $webservice_output=json_encode($arr);
?>