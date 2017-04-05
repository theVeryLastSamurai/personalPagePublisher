<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
		<link rel="stylesheet" type="text/css" href="css/font-awesome.css" >
		<link rel="stylesheet" type="text/css" href="css/style.css" >

		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/totop.js" ></script>

		<?php require_once("../webservices/everypage_technical_header.php"); ?>

		<?php
			$PAGE='contactme.php';

			$query="SELECT `content` FROM `text` WHERE page_id = 'contactme' AND text_id = 'page_content' ;";
			$result=$conn->query($query);
			$row=$result->fetch_assoc();

			$PageContent=$row['content'];


			$query="SELECT `content` FROM `text` WHERE page_id = 'contactme' AND text_id = 'email' ;";
			$result=$conn->query($query);
			$row=$result->fetch_assoc();

			$Email=$row['content'];
		?>

	</head>
	<body>
		
		<?php
			$pageid="contactme";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<div class="card col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card-header">
						<h1><i class="Bar"></i>Our Location</h1>
					</div>
					<div class="card-body">
						<iframe id='map' class="col-xs-12 col-sm-12 col-md-12 col-lg-12" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6763.894676842347!2d48.507471!3d36.706008!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2cbfb8469b1a33a3!2sInstitute+for+Advanced+Studies+in+Basic+Sciences!5e1!3m2!1sen!2sus!4v1464904549827" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:30px;">
							<?php echo HTMLDecode($PageContent); ?>
						</div>
					</div>
				</div>
				<div class="card col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card-header">
						<h2><i class="Bar"></i>Contact Form</h2>
					</div>
					<div class="card-body">
						<form action="MAILTO:<?php echo HTMLDecode($Email); ?>" method="post" enctype="text/plain">
							<div class="row">							
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<input type="text" class="ContactMeFormElement form-control col-xs-12" placeholder="Your Full Name:" />
									<input type="text" class="ContactMeFormElement form-control col-xs-12" placeholder="Your Email:" />
									<input type="text" class="ContactMeFormElement form-control col-xs-12" placeholder="Phone Number:" />
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<textarea class="ContactMeFormElement form-control col-xs-12" placeholder="Message:" style="min-height: 120px;"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 ContactMeFormElement">
									<input type="submit" value="Submit" class="btn FormButton center-block" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<?php
			require_once("footer.php");
		?>
		<a href="#" class="scrollup fa fa-2x fa-arrow-up"></a>
	</body>
</html>
