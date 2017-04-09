<?php
    session_start();
    if( !isset($_SESSION['LoggedIn']) || $_SESSION['LoggedIn']==false){
        $url="../index.html";
        header('Location: ' . $url, true, 302);
    }
    include("database_header.php");
    
    $profilepic_caption=$websiteno=$profile_pic_add="";

    $query="SELECT * FROM user WHERE username='".$_SESSION['LoggedIn']."' ;";
    $result = $conn->query($query);
    if( $result->num_rows > 0){
        $row = $result->fetch_assoc();
        $websiteno=$row['websiteno'];
        $profile_pic_caption=$row['profilepic_caption'];

        if($row['pic_address']){
            $profile_pic_add="../app_data/img/profilepic/".$row['pic_address'];
        }else{
            $profile_pic_add="../app_data/img/profilepic/default.jpg";
        }
        
    }else{
        $websiteno=-1;
        $profile_pic_add="../app_data/img/profilepic/default.jpg";
        $profile_pic_caption="";
    }

    if(isset($page_id) && $page_id){
        $page_title="";
        $query="SELECT title FROM page WHERE websiteno='".$websiteno."' AND page_id='".$page_id."' ;";
        $result = $conn->query($query);
        if( $result->num_rows > 0){
            $row = $result->fetch_assoc();
            $page_title=$row['title'];
        }else{
            $page_title="";
        }

        $page_data="";
        $query="SELECT text_id,content FROM text WHERE websiteno='".$websiteno."' AND page_id='".$page_id."' ;";
        $result=$conn->query($query);
        for( $i=$result->num_rows ; $i>0 ; $i-- ){
            $row = $result->fetch_assoc();
            $page_data[$row['text_id']]=$row['content'];
        }
    }


    function HTMLDecode($str){
        $str=str_replace("&SINGLEQUOTE", "'", $str);
        $str=str_replace("&DOUBLEQUOTE", '"', $str);
        //$str=str_replace("&NEWLINE", '\n', $str);
        $str=str_replace("&NEWLINE", '<br/>', $str);

        return $str;
    }
?>