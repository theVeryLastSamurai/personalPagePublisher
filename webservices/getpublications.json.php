<?php
    require_once("../webservices/everypage_technical_header.php");
    $grand_query="SELECT title,publication_categoryno FROM publication_category WHERE websiteno='".$websiteno."' ;";
    $grand_result = $conn->query($grand_query);

    $ancestor_arr=array();
    for($i=$grand_result->num_rows ; $i>0 ; $i--){
        $grand_row = $grand_result->fetch_assoc();
        $parent_query="SELECT title, publication_subcategoryno FROM publication_subcategory WHERE publication_categoryno='".$grand_row['publication_categoryno']."' ; ";
        $parent_result= $conn->query($parent_query);
        $grandparent_arr=array();
        if($parent_result->num_rows >0){
            for($j=$parent_result->num_rows ; $j>0 ; $j--){
                $parent_row = $parent_result->fetch_assoc();
                $child_query="SELECT publicationno, title, download_link FROM publication WHERE publication_subcategoryno='".$parent_row['publication_subcategoryno']."' AND has_no_subcategory='-1' ;";
                $child_result=$conn->query($child_query);
                $child_arr=array();
                if($child_result->num_rows >0){
                    for($k=$child_result->num_rows ; $k>0 ;$k--){
                        $child_row = $child_result->fetch_assoc();
                        $child_arr[ $child_row['publicationno'] ] = array( "title" => $child_row['title'] , "link" => $child_row['download_link'] );;
                    }
                }
                $grandparent_arr[ $parent_row['publication_subcategoryno'] ] = array("title" => $parent_row['title'] , "content" => $child_arr);
            }
        }
        $undernosubcategory_query="SELECT publicationno, title, download_link FROM publication WHERE has_no_subcategory = '".$grand_row['publication_categoryno']."' ;";
        $undernosubcategory_result= $conn->query($undernosubcategory_query);
        unset($undernosubcategory_arr);
        $undernosubcategory_arr=array();
        if($undernosubcategory_result->num_rows > 0){
            $undernosubcategory_arr=array();
            for($l=$undernosubcategory_result->num_rows ; $l>0 ; $l--){
                $undernosubcategory_row= $undernosubcategory_result->fetch_assoc();
                $undernosubcategory_arr [ $undernosubcategory_row['publicationno'] ] = array( "title" => $undernosubcategory_row['title'] , "link" =>$undernosubcategory_row['download_link'] );
            }
        }

        $ancestor_arr[ $grand_row['publication_categoryno'] ] = array( "title" => $grand_row['title'] , "undernosubcategory" => $undernosubcategory_arr , "content" => $grandparent_arr );
    }

    $webservice_output=json_encode($ancestor_arr);
?>