<?php
    session_start();
    if( !isset($_SESSION['AdminLoggedIn']) || $_SESSION['AdminLoggedIn']==false){
        $url="index.html";
        header('Location: ' . $url, true, 302);
    }
    include("../webservices/database_header.php");
    

    function HTMLDecode($str){
        $str=str_replace("&SINGLEQUOTE", "'", $str);
        $str=str_replace("&DOUBLEQUOTE", '"', $str);
        //$str=str_replace("&NEWLINE", '\n', $str);
        $str=str_replace("&NEWLINE", '<br/>', $str);

        return $str;
    }
?>