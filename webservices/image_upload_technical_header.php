<?php
	/* RECIEVES a file indexed as 'UploadFile' in the $_FILES array & checks if it's a legitimate image for upload */
	require_once("everypage_technical_header.php");

	if(!isset($_FILES['UploadFile']) || !$_FILES['UploadFile']) return; // check if file is recieved
	
	
	$filetype=$_FILES['UploadFile']['type'];
	$ValidImageTypes = array("image/gif", "image/jpeg", "image/png");
	if(!in_array($filetype, $ValidImageTypes)){//chech if filetype is allowed
		echo "Invalid File Type - Upload an Image ( gif, jpeg, png )";
		return;
	}


	if(getimagesize($_FILES["UploadFile"]["tmp_name"])==false){//chech if image is real
		echo "File was Distinguished as Fake - Upload an Image ( gif, jpeg, png )";
		return;
	}
	

	if( filesize($_FILES['UploadFile']['tmp_name']) > 2000000 ){//chech if the image is not too big
		echo "File was Too Big - Upload an Image of Size 2MB or Smaller";
		return;
	}
	
?>