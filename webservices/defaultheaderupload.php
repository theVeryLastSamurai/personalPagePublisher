<?php
	require_once("image_upload_technical_header.php");
	
	//Now that everything is checked, Start the Upload Process
	$target_path = "../app_data/img/defaultheader/".$_SESSION['LoggedIn'].".";
	$target_file = $target_path.pathinfo($_FILES['UploadFile']['name'])['extension'];

	if (!move_uploaded_file($_FILES["UploadFile"]["tmp_name"], $target_file)) {
        echo "[ Unknown Error ] Sorry, Your File was not Uploaded - Try Again";
        return;
    }

    $query="UPDATE `ppp_db`.`website` SET `default_header_address` = '".basename($target_file)."' WHERE `website`.`websiteno` = ".$websiteno." ;";
	$result=$conn->query($query);
	if(!$result){
		echo "[ Unknown Error ] Oops ! Something Went Wrong - Try Again";
		return;
	}
    
    //Now that the Upload is done, user's previous Default header picture might've been in the other possible extensions, let's delete 'em all (if any)
	$allowedExtensions=array('jpg', 'png', 'gif');
	$PossibleImage= array();
	foreach( $allowedExtensions as $ex){
		if(pathinfo($_FILES['UploadFile']['name'])['extension'] != $ex) array_push($PossibleImage, $target_path.$ex );
	}

	foreach ( $PossibleImage as $img){
		if(file_exists($img)){
			unlink($img);
		}
	}
    $_SESSION['filechange']=true;
    echo "RIGHT";
?>
