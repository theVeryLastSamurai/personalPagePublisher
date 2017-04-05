<?php
	if (!isset($_REQUEST['json'])){
		echo "Server didn't Respond ! Try again";
		return;
	}

	require_once("everypage_technical_header.php");


	$json=json_decode( $_REQUEST['json']);


	$newcategory_numbers=array();
	$newsubcategory_numbers=array();
	$newpub_numbers=array();

	foreach( $json as $category){

		/*********************** Category Info [BEGIN] *********************/
		$query="";
		if($category->category_no==-1){
			$query="INSERT INTO `publication_category` (`publication_categoryno`, `websiteno`, `title`) VALUES (NULL, '".$websiteno."', '".$category->title."');";
		}else{
			$query="UPDATE `publication_category` SET `title` = '".$category->title."' WHERE `publication_category`.`publication_categoryno` = ".$category->category_no." ;";
		}
		$result=$conn->query($query);
		if(!$result){
			echo "[ Unknown Error ] Something Went Wrong ! Please Try again !";
			return;
		}
		$CategoryNo=-1;
		if($category->category_no==-1){
			$query="SELECT LAST_INSERT_ID(); ";
			$result=$conn->query($query);
			$row=$result->fetch_assoc();
			$category->category_no=$row['LAST_INSERT_ID()'];
			$CategoryNo=$row['LAST_INSERT_ID()'];
			array_push($newcategory_numbers, $row['LAST_INSERT_ID()'] );
		}
		/*********************** Category Info [ END ] *********************/


		/*********************** Category UnderNoSubCategory [BEGIN] *********************/
		if($category->undernosubcategory){
			foreach ($category->undernosubcategory as $pub) {
				$query="";
				if($pub->pubno==-1){
					$query="INSERT INTO `publication` (`publicationno`, `publication_subcategoryno`, `title`, `download_link`, `has_no_subcategory`) VALUES (NULL, '-1', '".$pub->title."', '".$pub->link."', '".( $category->category_no !=-1? $category->category_no: $CategoryNo )."');";
				}else{
					$query="UPDATE `publication` SET `title` = '".$pub->title."', `download_link` = '".$pub->link."' WHERE `publication`.`publicationno` = ".$pub->pubno.";";
				}
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Something Went Wrong ! Please Try again !";
					return;
				}
				if($pub->pubno==-1){
					$query="SELECT LAST_INSERT_ID(); ";
					$result=$conn->query($query);
					$row=$result->fetch_assoc();
					array_push($newpub_numbers, $row['LAST_INSERT_ID()'] );
				}
			}
		}
		/*********************** Category UnderNoSubCategory [ END ] *********************/

		/*********************** Category SubCategory [BEGIN] *********************/
		if($category->subcategories){
			foreach($category->subcategories as $subcategory){
				/*********************** SubCategory Info [BEGIN] *********************/
				$query="";
				if($subcategory->subcategoryno==-1){
					$query="INSERT INTO `publication_subcategory` (`publication_subcategoryno`, `publication_categoryno`, `title`) VALUES (NULL, '".$category->category_no."', '".$subcategory->title."');";
				}else{
					$query="UPDATE `publication_subcategory` SET `title` = '".$subcategory->title."' WHERE `publication_subcategory`.`publication_subcategoryno` = ".$subcategory->subcategoryno.";";
				}
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Something Went Wrong ! Please Try again !";
					return;
				}
				if($subcategory->subcategoryno==-1){
					$query="SELECT LAST_INSERT_ID(); ";
					$result=$conn->query($query);
					$row=$result->fetch_assoc();
					$subcategory->subcategoryno = $row['LAST_INSERT_ID()'];
					array_push($newsubcategory_numbers, $row['LAST_INSERT_ID()'] );
				}
				/*********************** SubCategory Info [ END ] *********************/

				/*********************** SubCategory Publications [BEGIN] *********************/
				if($subcategory->pubs){
					foreach ($subcategory->pubs as $pub) {
						$query="";
						if($pub->pubno==-1){
							$query="INSERT INTO `publication` (`publicationno`, `publication_subcategoryno`, `title`, `download_link`, `has_no_subcategory`) VALUES (NULL, '".$subcategory->subcategoryno."', '".$pub->title."', '".$pub->link."', '-1');";
						}else{
							$query="UPDATE `publication` SET `title` = '".$pub->title."', `download_link` = '".$pub->link."' WHERE `publication`.`publicationno` = ".$pub->pubno.";";
						}
						$result=$conn->query($query);
						if(!$result){
							echo "[ Unknown Error ] Something Went Wrong ! Please Try again !";
							return;
						}
						if($pub->pubno==-1){
							$query="SELECT LAST_INSERT_ID(); ";
							$result=$conn->query($query);
							$row=$result->fetch_assoc();
							array_push($newpub_numbers, $row['LAST_INSERT_ID()'] );
						}
					}
				}
				/*********************** SubCategory Publications [ END ] *********************/
			}
		}
		/*********************** Category SubCategory [ END ] *********************/
	}





	if(isset($_REQUEST['categoriestodelete']) && trim($_REQUEST['categoriestodelete']," ")!=''){
		$ToDelete=json_decode($_REQUEST['categoriestodelete']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){

				//Deleting all pubs belonging to this category , under no subcategory
				$query="DELETE FROM `publication` WHERE `publication`.`publication_subcategoryno` = -1  AND  `publication`.`has_no_subcategory` = ".$item.";";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}


				//delete the pubs in the deleted subcategories ****************NOT DONE YET************


				//deleing all subcategories belonging to this category
				$query="DELETE FROM `publication_subcategory` WHERE `publication_subcategory`.`publication_categoryno` = ".$item.";";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}


				$query="DELETE FROM `publication_category` WHERE `publication_category`.`publication_categoryno` = ".$item.";";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}

			}
		}
	}

	if(isset($_REQUEST['subcategoriestodelete']) && trim($_REQUEST['subcategoriestodelete']," ")!=''){
		$ToDelete=json_decode($_REQUEST['subcategoriestodelete']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				
				//first delete the child rows
				$query="DELETE FROM `publication` WHERE `publication`.`publication_subcategoryno` = ".$item." ;";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}

				//and now remove the parent row
				$query="DELETE FROM `publication_subcategory` WHERE `publication_subcategory`.`publication_subcategoryno` = ".$item.";";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	if(isset($_REQUEST['pubstodelete']) && trim($_REQUEST['pubstodelete']," ")!=''){
		$ToDelete=json_decode($_REQUEST['pubstodelete']);
		if(is_array($ToDelete)){
			foreach( $ToDelete as $item){
				$query="DELETE FROM `publication` WHERE `publication`.`publicationno` = ".$item.";";
				$result=$conn->query($query);
				if(!$result){
					echo "[ Unknown Error ] Oops ! Something Went Wrong , Try again !";
					return;
				}
			}
		}
	}

	echo "RIGHT";
	
	$output=array( 'newcategory_numbers' => $newcategory_numbers, 'newsubcategory_numbers' => $newsubcategory_numbers, 'newpub_numbers' => $newpub_numbers );

	echo json_encode($output);

?>