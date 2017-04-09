<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
		<link rel="stylesheet" type="text/css" href="css/font-awesome.css" >
		<link rel="stylesheet" type="text/css" href="css/style.css" >

		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/totop.js" ></script>
<?php

?>
		<?php require_once("../webservices/everypage_technical_header.php"); ?>

		<?php
			$PAGE='index.php';

			$query="SELECT `homepage_header_address`,`homepage_header_caption_bool`,`homepage_header_caption`,`homepage_header_status` FROM `website` WHERE websiteno = ".$websiteno." ;";
			$result=$conn->query($query);
			$row=$result->fetch_assoc();
			$HomepageImage=$row['homepage_header_address'];
			
			$HomepageImage=$_SESSION['LoggedIn']."_images/homepage_".$HomepageImage;

			$HomepageHeaderCaption=$row['homepage_header_caption'];
			$HomepageHeaderCaptionBool=$row['homepage_header_caption_bool'];

			$HomePageHeaderStatus=$row['homepage_header_status'];


			$query="SELECT `content` FROM `text` WHERE websiteno = ".$websiteno." AND page_id = 'homepage' AND text_id = 'page_content' ;";
			$result=$conn->query($query);
			$row=$result->fetch_assoc();
			$PageContent=$row['content'];


			$query="SELECT `pic_address`,`profilepic_caption` FROM `user` WHERE username = '".$_SESSION['LoggedIn']."' ;";

			$result=$conn->query($query);
			$row=$result->fetch_assoc();
			$ProfilePic=$_SESSION['LoggedIn']."_images/profilepic_".$row['pic_address'];
			$ProfilePicCaption=$row['profilepic_caption'];
		?>

	</head>
	<body>
		
		<?php
			$pageid="homepage";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<!--
				<div class="col-sm-12 col-xs-12 hidden-lg hidden-md">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<img class="HomepageHeaderImage img-responsive" src="<?php echo $ProfilePic; ?>" />
					</div>
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<?php echo HTMLDecode($ProfilePicCaption); ?>
					</div>
				</div>
				-->
				<!--<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">-->
				<div class="col-lg-2 col-md-2" ></div><!--added later-->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<?php if($HomePageHeaderStatus){ ?>
						<?php if($HomepageHeaderCaptionBool){ ?>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<img class="HomepageHeaderImage img-responsive" src="<?php echo $HomepageImage; ?>" />
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<?php echo HTMLDecode($HomepageHeaderCaption); ?>
							</div>
						<?php }else{ ?>
						<img class="HomepageHeaderImage img-responsive" src="<?php echo $HomepageImage; ?>" />
						<?php } ?>
					<?php } ?>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:30px;">
						<?php echo HTMLDecode($PageContent); ?>
					</div>
				</div>
				<div class="col-lg-2 col-md-2" ></div><!--added later-->
				<!--
				<div class="col-lg-4 col-md-4 col-sm-12 hidden-sm hidden-xs">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<img class="HomepageHeaderImage img-responsive" src="<?php echo $ProfilePic; ?>" />
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<?php echo HTMLDecode($ProfilePicCaption); ?>
					</div>
				</div>
				-->
			</div>
		</div>
		
		<?php
			require_once("footer.php");
		?>
		<a href="#" class="scrollup fa fa-2x fa-arrow-up"></a>
	</body>
</html>
