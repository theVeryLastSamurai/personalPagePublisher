<?php
    /* variable $page_id MUST NOT be passed to "everypage_technical_header.php" here because this AIN'T a page */
    include("../webservices/everypage_technical_header.php");
    /* A-Checks if user is logged in
    B- Fetches websiteno & profile_pic_add*/
?>

<!DOCTYPE html>
<html>

<head>
    <title>IASBS Personal Page Publisher</title>
    
    <?php require_once("../websiteelements/html_head.html"); /* all CSS libraries Neccessary for this page*/ ?>

    
</head>

<body class="flat-red">
    <div class="app-container">
        <div class="row content-container">
            <?php /* the Top Panel */
                $title="Preview / Download";
                $act_deact=false;
                $page_id="download";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="download.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>

            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body padding-top">
                		<div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="../preview/" target="_blank">
                                    <div class="card dark summary-inline">
                                        <div class="card-body">
                                            <i class="icon fa fa-leaf fa-3x"></i>
                                            <div class="content">
                                                <div class="title">Preview</div>
                                                <div class="sub-title">Personal Page</div>
                                            </div>
                                            <div class="clear-both"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="../preview/<?php echo $_SESSION['LoggedIn']; ?>_website.zip">
                                    <div class="card red summary-inline">
                                        <div class="card-body">
                                            <i class="icon fa fa-download fa-3x"></i>
                                            <div class="content">
                                                <div class="title">Download</div>
                                                <div class="sub-title">Personal Page</div>
                                            </div>
                                            <div class="clear-both"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-xs-12 col-md-6 col-sm-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title"><span class="icon fa fa-download" style="margin-right: 10px;"></span>Compilation Log</div>
                                        </div>
                                    </div>
                                    <div  class="card-body">
                                    	<div class="sub-title">Preview Preparation</div>
                                    	<div id="plog" class="text-indent"></div>
	                                    <div class="sub-title">Download Preparation</div>
	                                    <div id="dlog" class="text-indent"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-12 col-md-6 col-sm-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title"><span class="icon fa fa-download" style="margin-right: 10px;"></span>Eureka !</div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                    	Take a Quick Look at the <strong>Compilation Log</strong> !<br/>
                                    	if All you see is <strong class='alert-success fresh-color'>Green</strong>, then You are <strong>GOOD TO GO</strong> !<br/>
                                    	Go ahead,
                                    	<ul>
                                    		<li>
                                    			To Preview the whole thing, Simply Click on the <strong class="alert-danger" style="background-color: #122091;color:white">Preview</strong> button
                                    		</li>
                                    		<li>
                                    			To Download your website, Simply Click on the <strong class="alert-danger fresh-color">Download</strong> button which will provide you with a ".zip" file
                                    		</li>
                                    	</ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right"><a href="#"><i class="fa fa-long-arrow-up"></i></a></span>
            </div>
        </footer>


        <!--end Modal-->
        
        <!-- Javascript Libs -->
        
        <script type="text/javascript" src="../lib/js/jquery.min.js"></script>

		<?php require_once("../websiteelements/scripts.html"); ?>
        

	<script type="text/javascript" src="../lib/js/font-awesome-list.js"></script>
        
        <script type="text/javascript">

        	function CheckObj(lim){
        		this.counter=0;
        		this.limit=lim?lim:0;
        		this.callback=function(){};
        		this.check=function(){
        			this.counter++;
        			if(this.counter==this.limit)
        				if(typeof this.callback=="function")
        					this.callback();
        		}
        	}

        	Check1=new CheckObj(4);



        	Check1.callback=function(){

        		var list=['index.php','people.php','research.php','publications.php','teachings.php','contactme.php','groupmeetings.php','participatedactivities.php','beyondscience.php'];


        		Check2=new CheckObj(list.length+1);


        		Check2.callback=function(){
        			$.ajax({
        				url: "../preview/createzip.php",
        				success: function(data){
        					if(data.toLowerCase()=='right'){
        						$("#dlog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> .Zip File Created Successfully !</div>");
        					}else{
        						$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Couldn't Create .Zip File  !</div>");
        					}
        				},
        				failure: function(){
        					$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Couldn't Create .Zip File  !</div>");
        				}
        			});
        		};


        		list.forEach(function(item){
        			var source="../preview/"+item;
        			$.ajax({
        				url: source,
        				data: {"OutputType":"html"},
        				method: "POST",
        				success:function(output){
        					$.ajax({
        						url: "../preview/createhtmlpage.php",
        						data: {
        							"title": item.replace(".php", ".html"),
        							"content": output
        						},
        						method: "POST",
        						success: function(d){
        							if(d.toLowerCase()=='right'){
        								$("#dlog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> \""+item.replace(".php",".html")+"\" Created Successfully !</div>");
        								Check2.check();
        							}else{
        								$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Couldn't Create \""+item.replace(".php",".html")+"\"  !</div>");
        							}
        						},
        						failure: function(){
        							$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Couldn't Create \""+item.replace(".php",".html")+"\"  !</div>");
        						}
        					});
        				},
        				failure: function(){
        					$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Couldn't Read From \""+item+"\"  !</div>");
        				}
        			});
        		});

        		$.ajax({
        			url: "../preview/copyfolders.php",
        			success: function(data){
        				if(data.toLowerCase()=='right'){
        					$("#dlog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> All Folders Copied Successfully !</div>");
        					Check2.check();
        				}else{
        					$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Folders Couldn't Copy !</div>");
        				}
        			},
        			failure: function(){
        				$("#dlog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Folders Couldn't Copy !</div>");
        			}
        		});

        	};


        	

        	


	    	$.ajax({
	    		url: "../preview/style.css.php",
	    		success: function(src){
	    			$.ajax({
	    				url: "../preview/compilestyle.php",
	    				data: {"src": src},
	    				method: "POST",
	    				success: function(res){
	    					if(res.toLowerCase()=='right'){
	    						$("#plog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> \"style.css\" Compiled Successfully !</div>");
	    					}
	    					else
	    						$("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> \"style.css\" Couldn't Compile !</div>");
	    				},
	    				failure: function(d){
	    					$("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> \"style.css\" Couldn't Compile !</div>");
	    				}
	    			});
	    		},
	    		failure: function(d){
	    			$("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> \"style.css\" Couldn't Compile !</div>");
	    		}
	    	}).done(function() {
	    		Check1.check();
	    	});

	    	$.ajax({
	    		url: "../preview/copyimages.php",
	    		success: function(data){
	    			if(data.toLowerCase()=='right'){
	    				$("#plog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> Header and User Images were Copied Successfully !</div>");
	    			}else{
	    				$("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Header and User Images Couldn't get Copied !</div>");
	    			}
	    		},
	    		failure: function(data){
	    			$("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Header and User Images Couldn't get Copied !</div>");
	    		}
	    	}).done(function(){
	    		Check1.check();
	    	});

            $.ajax({
                url: "../preview/copypeopleimages.php",
                success: function(data){
                    if(data.toLowerCase()=='right'){
                        $("#plog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> People Images were Copied Successfully !</div>");
                    }else{
                        $("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> People Images Couldn't get Copied !</div>");
                    }
                },
                failure: function(data){
                    $("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> People Images Couldn't get Copied !</div>");
                }
            }).done(function() {
            	Check1.check();
            });



            $.ajax({
                url: "../preview/copyresearchimages.php",
                success: function(data){
                    if(data.toLowerCase()=='right'){
                        $("#plog").append("<div class='alert alert-success fresh-color' ><span class='fa fa-check'></span> Research Images were Copied Successfully !</div>");
                    }else{
                        $("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Research Images Couldn't get Copied !</div>");
                    }
                },
                failure: function(data){
                    $("#plog").append("<div class='alert alert-danger fresh-color' ><span class='fa fa-close'></span> Research Images Couldn't get Copied !</div>");
                }
            }).done(function() {
            	Check1.check();
            });





		</script>
        
</body>

</html>
