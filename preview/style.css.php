<?php require_once("../webservices/everypage_technical_header.php"); ?>
<?php
	$query="SELECT `role`,`hex` FROM `color` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);

	$color=array();
	for($i=0;$i< $result->num_rows;$i++){
		$row=$result->fetch_assoc();
		$color[$row['role']]=$row['hex'];
	}
?>

/* navbar */
.navbar-default {
    background-color: #<?php echo $color[0]; ?>;
	border-color: #<?php echo $color[1]; ?>;
	border-width: 0;
	border-radius: 0;
	border-bottom-width: 5px;
}
/* title */
.navbar-default .navbar-brand {
    color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #5E5E5E;
}
/* link */
.navbar-default .navbar-nav > li > a {
    color: white;
}

.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: #<?php echo $color[1]; ?>;
}
.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color: #<?php echo $color[0]; ?>;
    background-color: #<?php echo $color[1]; ?>;
}
.navbar-default .navbar-nav > .open > a, 
.navbar-default .navbar-nav > .open > a:hover, 
.navbar-default .navbar-nav > .open > a:focus {
    color: #<?php echo $color[0]; ?>;
    background-color: #<?php echo $color[1]; ?>;
}
/* caret */
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #777;
    border-bottom-color: #777;
}
.navbar-default .navbar-toggle:focus,
.navbar-default .navbar-toggle:hover{
	color: #<?php echo $color[0]; ?>;
	background-color: #<?php echo $color[1]; ?>;
}

.navbar-default .navbar-nav > .dropdown ul.dropdown-menu li.active a{
	background-color: #<?php echo $color[1]; ?> !important;
}

.SearchBox{
	background-color: #<?php echo $color[0]; ?>;
	color: #<?php echo $color[1]; ?>;
	padding-left:15px;
	padding-right:15px;
	margin-top:10px;
}

.SearchBox input[type=text]{
	height:2em;
	background-color: #<?php echo $color[0]; ?>;
	color: #fff;
	padding:3px;
	border-width: 0;
	margin-right:0;
}

.SearchBox input[type=text]:focus{
	outline:none;
}

.SearchBox input[type=text]::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: grey;
}

.SearchBox button{
	height:2em;
	background-color: #<?php echo $color[0]; ?>;;
	color: #<?php echo $color[1]; ?>;
	border:0;
}

.SearchBox button:focus{
	outline:none;
}


/* Large Devices, Wide Screens */
@media only screen and (min-width : 992px) and (max-width : 1200px) {
	.navbar-default .navbar-nav > li > a {
		font-size:1em;
	}
	.navbar-nav .SearchBox input[type=text]{
		width: 50px;
	}
}

/* Medium Devices, Desktops */
@media only screen and (min-width: 767px) and (max-width : 992px) {
	.navbar-default .navbar-nav > li > a {
		font-size: 0.75em;
	}
	.navbar-nav .SearchBox input[type=text]{
		width: 50px;
	}
}

footer{
	background-color: #<?php echo $color[0]; ?>;
	color:white;
	margin-top: 20px;
	padding-top:30px;
	padding-bottom:30px;
}

footer ul.FooterSections{
	list-style-type:none;
	margin:0;
	padding:0;
	font-size: 1em;
}


footer ul.FooterSections > li:before{
	content: '';
	display: inline-block;
	width: 5px;
	height: 1em;
	margin-right:5px;
	background-color: #<?php echo $color[1]; ?>;
}

footer ul.FooterSections > li ul.FooterItem{
	list-style-type:none;
	font-size: 0.8em;
	padding-top:10px;
	color: grey;
	padding-left:0;
}

footer ul.FooterSections > li ul.FooterItem > li{
	padding:5px;
}

a.social{
	font-size: 1.5em;
	text-decoration: none;
	color:inherit;
}

.social:focus,
.social:hover{
	color: #<?php echo $color[1]; ?>;
	cursor:pointer;
}

a.link{
	text-decoration:none;
	color:inherit;
}

a.link:focus,
a.link:hover{
	color: #<?php echo $color[1]; ?>;
	cursor:pointer;
}

.HomepageHeaderImage{
	border-style:solid;
	border-width: 10px;
	border-color: #<?php echo $color[0]; ?>;
	margin-bottom:20px;
}

.scrollup {
    width: 40px;
    height: 40px;
    position: fixed;
    bottom: 50px;
    right: 50px;
    display: none;
    text-align: center;
    padding-top:5px;
    background-color: #<?php echo $color[1]; ?>;
    color: #<?php echo $color[0]; ?>;
}

.Bar:before{
	content: '';
	display: inline-block;
	width: 7px;
	height: 1em;
	margin-right:20px;
	margin-bottom:-5px;
	background-color: #<?php echo $color[1]; ?>;
}

.card{
	margin-bottom:30px;
}

.FormButton{
	transition: background-color 0.5s;
}

.FormButton:focus,
.FormButton:hover{
	background-color: #<?php echo $color[1]; ?>;
}


ul.PubSubCateg{
	list-style-type:none;
	padding:0;
}

.LiCaret{
	color: #<?php echo $color[1]; ?>;
	margin-right: 10px;
}

#map{
	min-height: 400px;
}

.ContactMeFormElement{
	margin: 5px;
}