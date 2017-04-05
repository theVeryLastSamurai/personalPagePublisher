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
			$PAGE='research.php';
			$pageid="research";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<?php


					$query="SELECT * FROM research_topic WHERE websiteno= ".$websiteno." AND header_bool=1;";
					$mres=$conn->query($query);
					if($mres->num_rows>0){
						$row=$mres->fetch_assoc();

						$link_flag=($row['link'])? true : false;

						echo"
							<div class='jumbotron'>
								<div class='row'>
							  <div class='card-header'>
									<h2>
										".(($link_flag)?"<a class='link' target='_blank' href='".HTMLDecode($row['link'])."'>":"").HTMLDecode($row['title']).(($link_flag)?"</a>":"")."
									</h2>
								</div>";
						if($row['pic_bool'])
							echo"<div class='card-body'>
									<div class='hidden-lg hidden-md col-sm-12 col-xs-12' >
										<img class='img-responsive' src='".$_SESSION['LoggedIn']."_researchimages/".$row['pic_address']."' />
									</div>
									<div class='hidden-lg hidden-md col-sm-12 col-xs-12' style='margin-top:20px;'></div>
									<div class='col-lg-9 col-md-8 col-sm-12 col-xs-12'>
									".HTMLDecode($row['description'])."
									</div>
									<div class='col-lg-3 col-md-4 hidden-sm hidden-xs' >
										<img class='img-responsive' src='".$_SESSION['LoggedIn']."_researchimages/".$row['pic_address']."' />
									</div>
								</div>";
						else
							echo "<div class='card-body'>
									".HTMLDecode($row['description'])."
								</div>";

						echo "</div></div>";
					}


					$query="SELECT * FROM `research_topic` WHERE websiteno  = ".$websiteno." AND header_bool=0 ;";
					$result=$conn->query($query);
					for($i=0; $i<$result->num_rows ;$i++){
						$row=$result->fetch_assoc();

						$link_flag=($row['link'])? true : false;

						echo "
							<div class='card col-xs-12 col-sm-12 col-md-12 col-lg-12'>
								<div class='card-header'>
									<h2>
										<i class='Bar'></i>
										".(($link_flag)?"<a class='link' target='_blank' href='".HTMLDecode($row['link'])."'>":"").HTMLDecode($row['title']).(($link_flag)?"</a>":"")."
									</h2>
								</div>";
						if($row['pic_bool'])
							echo"<div class='card-body'>
									<div class='hidden-lg hidden-md col-sm-12 col-xs-12' >
										<img class='img-responsive' src='".$_SESSION['LoggedIn']."_researchimages/".$row['pic_address']."' />
									</div>
									<div class='hidden-lg hidden-md col-sm-12 col-xs-12' style='margin-top:20px;'></div>
									<div class='col-lg-9 col-md-8 col-sm-12 col-xs-12'>
									".HTMLDecode($row['description'])."
									</div>
									<div class='col-lg-3 col-md-4 hidden-sm hidden-xs' >
										<img class='img-responsive' src='".$_SESSION['LoggedIn']."_researchimages/".$row['pic_address']."' />
									</div>
								</div>";
						else
							echo "<div class='card-body'>
									".HTMLDecode($row['description'])."
								</div>";
								
						echo "</div>";
					}


					if($mres->num_rows){
						echo "</div></div>";
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
