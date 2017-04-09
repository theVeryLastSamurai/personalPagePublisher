<?php

	if(!isset($_REQUEST['json']) || $_REQUEST['json']==''){
		echo "wrong";
		return;
	}

	require_once("webservice_technical_header.php");

	$users=json_decode($_REQUEST['json']);
	
	if(!is_array($users)){
		echo "wrong";
		return;
	}

	$query=array();

	foreach ($users as $user) {

		$q="SELECT * FROM `user` WHERE username = '".$user."' ;";
		$result=$conn->query($q);
		$r=$result->fetch_assoc();
		$websiteno=$r['websiteno'];
	
		array_push($query, "DELETE FROM `user` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `text` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `social_link` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `person_category` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `page` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `footer_link` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `color` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `website` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `research_topic` WHERE websiteno = ".$websiteno." ;");
		array_push($query, "DELETE FROM `person` WHERE websiteno = ".$websiteno." ;");


		$tempq="SELECT * FROM `season` JOIN `class` WHERE `season`.`seasonno` = `class`.`seasonno` AND `season`.`websiteno` = ".$websiteno." ;";
		$res=$conn->query($tempq);
		for($i=0; $i<$res->num_rows ;$i++){
			$row=$res->fetch_assoc();

			array_push($query, "DELETE FROM `class` WHERE classno = ".$row['classno']." ;");
		}

		array_push($query, "DELETE FROM `season` WHERE websiteno = ".$websiteno." ;");

		
		$tempq="SELECT * FROM `publication_category` WHERE websiteno = ".$websiteno." ;";
		$res=$conn->query($tempq);
		for($i=0; $i<$res->num_rows ;$i++){
			$row=$res->fetch_assoc();

			array_push($query, "DELETE FROM `publication` WHERE has_no_subcategory = ".$row['publication_categoryno']." ;");


			$p="SELECT * FROM `publication_category` JOIN `publication_subcategory` WHERE `publication_category`.`publication_categoryno`=`publication_subcategory`.`publication_categoryno` AND `publication_category`.`websiteno` = ".$websiteno." ;";
			$re=$conn->query($p);
			for($i=0; $i<$re->num_rows ;$i++){
				$ro=$re->fetch_assoc();

				array_push($query, "DELETE FROM `publication` WHERE publication_subcategoryno = ".$ro['publication_subcategoryno']." ;");
				array_push($query, "DELETE FROM `publication_subcategory` WHERE publication_subcategoryno = ".$ro['publication_subcategoryno']." ;");

			}
		}

		array_push($query, "DELETE FROM `publication_category` WHERE websiteno = ".$websiteno." ;");

	}


	foreach ($query as $q) {
		$result=$conn->query($q);
		if(!$result){
			echo "wrong";
			return;
		}
	}

	
	echo "right";
?>