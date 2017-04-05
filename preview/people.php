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
			$query="SELECT `pic_address`,`profilepic_caption` FROM `user` WHERE username = '".$_SESSION['LoggedIn']."' ;";

			$result=$conn->query($query);
			$row=$result->fetch_assoc();
			$ProfilePic=$_SESSION['LoggedIn']."_images/profilepic_".$row['pic_address'];
			$ProfilePicCaption=$row['profilepic_caption'];
		?>

	</head>
	<body>
		
		<?php
			$PAGE='people.php';
			$pageid="people";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<div class="card col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="card-header">
						<h1><i class="Bar"></i>Group Leader</h1>
					</div>
					<div class="card-body">
						<div class="col-lg-2 col-md-2 col-sm-3 col-xs-12">
							<img class="HomepageHeaderImage img-responsive" src="<?php echo $ProfilePic; ?>" />
						</div>
						<div class="col-lg-10 col-md-10 col-sm-9 col-lg-12 col">
							<?php echo HTMLDecode($ProfilePicCaption); ?>
						</div>
					</div>
				</div>
				<?php
					$query="SELECT `person_category_no`,`title` FROM `person_category` WHERE websiteno = ".$websiteno." ; ";
					$result=$conn->query($query);
					for($i=0; $i< $result->num_rows ; $i++){
						$row=$result->fetch_assoc();

						echo "
							<div class='card col-xs-12 col-sm-12 col-md-12 col-lg-12' >
								<div class='card-header'>
									<h2><i class='Bar'></i>".HTMLDecode($row['title'])."</h2>
								</div>
								<div class='card-body' >";

						$q="SELECT * FROM `person` WHERE websiteno = ".$websiteno." AND person_category_no = ".$row['person_category_no']." ;";
						$res=$conn->query($q);
						for($j=0; $j<$res->num_rows ; $j++){
							$r=$res->fetch_assoc();

							echo "
								<div class='col-lg-4 col-md-4 col-sm-6 col-xs-12' >
									<div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'>
										<img class='HomepageHeaderImage img-responsive' src='".$_SESSION['LoggedIn']."_peopleimages/".$r['pic_address']."' />
									</div>
									<div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'><strong>".HTMLDecode($r['name'])."</strong><br/>".HTMLDecode($r['description']);

									if($r['link_address']){
										echo "<br/><a target='_blank' href='".HTMLDecode($r['link_address'])."'>Web Page</a>";
									}
										
							echo "  </div>
								</div>
							";
						}

						echo "</div>
							</div>
						";
					}
				?>
			</div>
		</div>
		
		<?php
			require_once("footer.php");
		?>
		<a href="#" class="scrollup fa fa-2x fa-arrow-up"></a>
	</body>
</html>
