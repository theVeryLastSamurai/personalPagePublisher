<?php
	require_once("../webservices/everypage_technical_header.php");	

	/*so that, when creating index.html, we'd send OutputType=html to make the links right*/
	$HTMLFlag=false;
	if(isset($_REQUEST['OutputType']) && $_REQUEST['OutputType']=='html'){
		$HTMLFlag=true;
	}else if(isset($_SESSION['filechange']) && $_SESSION['filechange']==true){
		$_SESSION['filechange']=false;
		header("Location: ../portal/preparepreview.php?redirect=".$PAGE);
	}

	$query="SELECT * FROM `page` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);

	$page=array();
	for($i=0;$i< $result->num_rows ; $i++){
		$row=$result->fetch_assoc();
		$page[$row['page_id']]= $row;
	}

	$List=array('homepage','people','research', 'publications','teachings','contactme');


	$EventsList=array('groupmeetings', 'participatedactivities' ,'beyondscience');


	$query="SELECT `default_header_address` FROM `website` WHERE websiteno = ".$websiteno." ;";
	$result=$conn->query($query);
	$row=$result->fetch_assoc();
	$HeaderImage=$row['default_header_address'];
	
	$HeaderImage=$_SESSION['LoggedIn']."_images/header_".$HeaderImage;


	$query="SELECT `content` FROM `text` WHERE websiteno = ".$websiteno." AND text_id = 'fullname' ; ";
	$result=$conn->query($query);
	$row=$result->fetch_assoc();
	$FullName=HTMLDecode($row['content']);

?>

<header>
	<div class="row">
		<div class="col-lg-12">
			<img style="width:100%;" src="<?php echo $HeaderImage; ?>" />
			<h1 class="carousel-caption" ><?php /*echo HTMLDecode($FullName);*/ ?></h1>
		</div>
	</div>

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<div class="SearchBox hidden-lg hidden-md hidden-sm" style="float:left;width: 80%;" >
					<input type="text" placeholder="Search" style="width:80%;" />
					<button><i class="fa fa-search"></i></button>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
				</button>
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<?php
						foreach($List as $item){
							if($page[$item]['activity_status']==1){
								$class="";
								$href=$page[$item]['file_name'].(($HTMLFlag)? ".html" : ".php");
								if($item==$pageid){
									$class=" class='active' ";
									$href="#";
								}

								echo "<li ".$class." ><a href='".$href."'>".HTMLDecode($page[$item]['title'])."</a></li> ";
							}
						}
					?>
					<?php
						$count=0;
						$print="";
						$active_flag=false;
						foreach($EventsList as $event){
							if($page[$event]['activity_status']==1){
								$count++;

								$class="";
								$href=$page[$event]['file_name'].(($HTMLFlag)? ".html" : ".php");
								if($event==$pageid){
									$class=" class='active' ";
									$href="#";
									$active_flag=true;
								}

								$print.="<li ".$class." ><a href='".$href."'>".HTMLDecode($page[$event]['title'])."</a></li>";
							}
						}

						switch ($count) {
							case 0:
								/*Do exactly Nothing*/
								break;
							case 1:
								foreach ($EventsList as $event) {
									if($page[$event]['activity_status']==1){
										$class="";
										$href=$page[$event]['file_name'].(($HTMLFlag)? ".html" : ".php");
										if($event==$pageid){
											$class=" class='active' ";
											$href="#";
										}
										echo "<li ".$class." ><a href='".$href."'>".HTMLDecode($page[$event]['title'])."</a></li> ";
									}
								}
								break;
							default:
								echo "<li class='dropdown ".($active_flag?"active":"")."'>
										<a class='dropdown-toggle' data-toggle='dropdown' href='#'>Events
										<span class='caret'></span></a>
										<ul class='dropdown-menu'>".$print."</ul></li>";
								break;
						}
					?>
					<!--<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Events
						<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li> 
						</ul>
					</li>-->
				</ul>
				<div class="nav navbar-nav navbar-right" >
					<div class="SearchBox hidden-xs">
						<input type="text" placeholder="Search" />
						<button><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>

<script type="text/javascript">
	
	$(".SearchBox input[type=text]").on("keyup",function(){ // to Synchronize Both Search Boxes
		$(".SearchBox input[type=text]").val($(this).val());
	});

	$(".SearchBox button").click(function(){//submit Search
		//alert("Searching for "+$(this).siblings("input[type=text]").val());
		alert("Search is Currently not available");
	});

</script>
