<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
			$PAGE='publications.php';
			$pageid="publications";
			require_once("header.php");
		?>

		<div class="container">
			<div class="row">
				<?php
					$query="SELECT * FROM `publication_category` WHERE websiteno  = ".$websiteno." ;";
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
								<div class='card-body'>";

								
								$t="SELECT * FROM `publication` WHERE publication_subcategoryno = -1 AND has_no_subcategory = ".$row['publication_categoryno']." ;";
								$re=$conn->query($t);

								if($re->num_rows>0) echo "<table class='table table-striped table-hover' >";

									for($l=0; $l<$re->num_rows ;$l++){
										$f=$re->fetch_assoc();

										echo "
											<tr>
												<td> ".HTMLDecode($f['title']).(empty($f['download_link']) ? "": " <a href='".HTMLDecode($f['download_link'])."'>Read more</a>")."</td>
											</tr>";
									}

								if($re->num_rows>0) echo "</table>";



								$q="SELECT * FROM `publication_subcategory` WHERE publication_categoryno = ".$row['publication_categoryno']." ;";
								$res=$conn->query($q);

								if($res->num_rows>0)echo "<ul class='PubSubCateg' >";

									for($j=0; $j<$res->num_rows ;$j++){
										$r=$res->fetch_assoc();
										echo "<li><h3><i class='fa fa fa-caret-right LiCaret' ></i>".$r['title']."</h3>";


										$p="SELECT * FROM `publication` WHERE publication_subcategoryno = ".$r['publication_subcategoryno']." ;";
										$resu=$conn->query($p);

										echo "<table class='table table-striped table-hover' >";

											for($k=0; $k<$resu->num_rows ;$k++){
												$s=$resu->fetch_assoc();
												echo "
												<tr>
													<td>".HTMLDecode($s['title']).(empty($s['download_link'])? "": " <a href='".HTMLDecode($s['download_link'])."'>Read more</a>")."</td>
												</tr>";
											}


										echo "</table></li>";
									}

								if($res->num_rows>0)echo "</ul>";


						echo    "</div>
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
