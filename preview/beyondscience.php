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

	</head>
	<body>
		
		<?php
			$PAGE='beyondscience.php';
			$pageid="beyondscience";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<?php
					$query="SELECT * FROM `beyondtopic` WHERE websiteno  = ".$websiteno." ;";
					$result=$conn->query($query);
					for($i=0; $i<$result->num_rows ;$i++){
						$row=$result->fetch_assoc();

						echo "
							<div class='card col-xs-12 col-sm-12 col-md-12 col-lg-12'>
								<div class='card-header'>
									<h2>
										<i class='Bar'></i>
										".HTMLDecode($row['title'])."
									</h2>
								</div>
								<div class='card-body'>
									".HTMLDecode($row['description'])."
								</div>
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
