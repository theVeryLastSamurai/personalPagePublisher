<?php
	
	if (!isset($_REQUEST['page_id'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");

	$query="UPDATE page SET activity_status = '0' WHERE page_id = '".$_REQUEST['page_id']."' AND websiteno = ".$websiteno." ;";
    $result = $conn->query($query);

    if($result)
    	echo"RIGHT";
    else
    	echo"WRONG";
?>