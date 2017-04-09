<?php
    $page_id="homepage";/*an argument to pass to "everypage_techinal_header.php"*/
    include("../webservices/everypage_technical_header.php");
    /* A-Checks if user is logged in
    B- Fetches websiteno & profile_pic_add*/
    
    $homepage_header=NULL;
    $query='SELECT `homepage_header_address`,`homepage_header_caption`,`homepage_header_caption_bool`,`homepage_header_status` FROM website WHERE websiteno=\''.$websiteno.'\' ;';
    $result = $conn->query($query);
    if( $result->num_rows > 0){
        $row = $result->fetch_assoc();
        if($row['homepage_header_address']){
            $homepage_header="../app_data/img/homepageheader/".$row['homepage_header_address'];
        }else{
            $homepage_header="../app_data/img/homepageheader/default.jpg";
        }

	$homepage_header_caption=$row['homepage_header_caption'];
	$homepage_header_caption_bool=$row['homepage_header_caption_bool'];
    $HomePageHeaderImageStatus=$row['homepage_header_status'];
        
    }else{
        $homepage_header="../app_data/img/homepageheader/default.jpg";
    }

?>
<!DOCTYPE html>
<html>

<head>
    <title>IASBS Personal Page Publisher</title>
    
    <?php require_once("../websiteelements/html_head.html"); /* all CSS libraries Neccessary for this page*/ ?>
    
    <style type="text/css">
        div.step >ul >li:not(active) >a >i{
            cursor: no-drop;
        }
        div.step >ul >li.active >a >i{
            cursor: pointer;
        }
        div.step >ul >li.active >a >i:hover{
            color: red;
        }

    </style>
</head>

<body class="flat-red">
    <div class="app-container">
        <div class="row content-container">
            
            <?php /* the Top Panel */
                $title="Home Page";
                $act_deact=false;
                $page_id="homepage";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="homepage.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>
            
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">
                            <div id ='PageTitle' ></div>
                        </span>
                        <div class="description">This is the Page Title appearing on the Menu</div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Your Full Name:</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button id="SaveFullInfoBtn" class="btn btn-default">Save</button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
                                        <div class="sub-title">Full Name<small>(appearing as page title)</small>:</div>
                                        <input id="FullName" type='text' class="form-control" />
                                        <div class="sub-title">Academic Specifications <small>(e.g. Assistant Prof.)</small>:</div>
                                        <input id="AcademicSpecs" type='text' class="form-control" />
                                        <div class="sub-title">Department: <small></small>:</div>
                                        <input id="Department" type='text' class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Homepage Header ( of Aspect Ratio 2:1 or 4:1 )</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <input type="checkbox" id="HomePageHeaderImageCheckbox" <?php if($HomePageHeaderImageStatus) echo "checked"; ?> />
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button title="Change Profile Pic" class="btn btn-warning" data-toggle="modal" data-target="#ModalUploadHeader">
                                                    <i class="glyphicon glyphicon-edit"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
                                        <img id='HomePageHeaderImage' class="img-responsive" src="<?php echo $homepage_header; ?>" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Profile Pic:</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button title="Change Profile Pic" class="btn btn-warning" data-toggle="modal" data-target="#ModalUploadProfilePic">
                                                    <i class="glyphicon glyphicon-edit"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
                                        <img id='ProfilePicImage' class="img-responsive" src="<?php echo $profile_pic_add; ?>" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Profile Pic Caption:</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button id="ProfilePicCaptionSaveBtn" title="Profile Pic Caption" class="btn btn-default">Save</button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
                                        <textarea id="ProfilePicCaptionText"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Homepage Header Caption:</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button id="HeaderPicCaptionSaveBtn" title="Header Pic Caption" class="btn btn-default">Save</button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
					<div class="well">
						Enable/Disable Caption:</span>
						<input id="homepage_header_caption_bool_checkbox" type="checkbox" <?php if($homepage_header_caption_bool)echo "checked"?> />
					</div>
                                        <textarea id="HeaderPicCaptionText"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="card card-success">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Page Content:</div>
                                        </div>
                                        <div class="pull-right card-action">
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button id="SavePageContentBtn" title="Change Profile Pic" class="btn btn-default">Save</button>
                                            </div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <textarea id="PageContentText" ></textarea>
                                            </div>
                                        </div>
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

        <!-- Modal Upload Profile Pic -->
        <div class="modal fade modal-warning" id="ModalUploadProfilePic" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change Profile Pic</h4>
                    </div>
                    <div class="modal-body">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">Upload a New Pic (of Aspect Ratio 1:1)</div>
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="../webservices/profilepicupload.php" data-callback="RefreshProfilePic">
                                    <input class="form-control" type="file" />
                                </form>
                            </div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                    <span class="sr-only"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-warning ModalUploadImageSubmitBtn">Upload</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Upload Header -->
        <div class="modal fade modal-warning" id="ModalUploadHeader" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change Homepage Header</h4>
                    </div>
                    <div class="modal-body">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">Upload a New Pic (of Aspect Ratio 2:1 or 4:1)</div>
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="../webservices/homepageheaderupload.php" data-callback="RefreshHomepageHeaderImage">
                                    <input class="form-control" type="file" />
                                </form>
                            </div>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                                    <span class="sr-only"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-warning ModalUploadImageSubmitBtn">Upload</button>
                    </div>
                </div>
            </div>
        </div>

        <!--end Modal-->

        <!-- Javascript Libs -->
        <?php require_once("../websiteelements/scripts.html"); ?>
        <!-- Javascript -->
        <script>tinymce.init({ selector:'textarea'});</script>
        <script type="text/javascript">

	        $("#FullName").val(HTMLDecode("<?php echo $page_data['fullname']; ?>"));
	        $("#AcademicSpecs").val(HTMLDecode("<?php echo $page_data['academic_specs']; ?>"));
	        $("#Department").val(HTMLDecode("<?php echo $page_data['department']; ?>"));

	        $("#ProfilePicCaptionText").html(HTMLDecode("<?php echo $profile_pic_caption; ?>"));
	        $("#HeaderPicCaptionText").html(HTMLDecode("<?php echo $homepage_header_caption; ?>"));

	        $("#PageContentText").html(HTMLDecode("<?php echo $page_data['page_content']; ?>"));

            
            ChangeableTextOptions={
                placeholder: "enter Page Title",
                DataEmptyAllowed: false,
                DataChangedCallback: function(){
                    var pageid="<?php echo $page_id; ?>";
                    $.ajax({
                        url: "../webservices/savepagetitle.php",
                        data:{
                            "pageid": pageid,
                            "title": HTMLCode($("#PageTitle").attr('data-value'))
                        },
                        method: "POST",
                        success: function(data){
                            if(data.toLowerCase()=='right'){
                                Success("Page Title Successfully Saved !");
                            }else{
                                Failure(data);
                                $("#PageTitle").attr('data-value', HTMLDecode("<?php echo $page_title; ?>") );
                                $("#PageTitle label").html( HTMLDecode("<?php echo $page_title; ?>") );
                            }
                        }
                    });
                }
            };
            $("#PageTitle").ChangeableText(ChangeableTextOptions, HTMLDecode("<?php echo $page_title; ?>") );




            function RefreshHomepageHeaderImage(){
                $.ajax({
                    url: "../webservices/gethomepageheader.php",
                    success: function(data){
                        var d= new Date();
                        var prev_image_path=$("#HomePageHeaderImage").attr('src');
                        var new_image_path= prev_image_path.substring(0, prev_image_path.lastIndexOf('/')+1) + data + '?' + d.getTime();
                        $("#HomePageHeaderImage").attr('src', new_image_path );
                    }
                });
            }

            function RefreshProfilePic(){
                $.ajax({
                    url: "../webservices/getprofilepic.php",
                    success: function(data){
                        var d= new Date();
                        var prev_image_path=$("#ProfilePicImage").attr('src');
                        var new_image_path= prev_image_path.substring(0, prev_image_path.lastIndexOf('/')+1) + data + '?' + d.getTime();
                        $("#ProfilePicImage").attr('src', new_image_path );
                    }
                });
            }


            $("#SaveFullInfoBtn").click(function(){
            	var pageid="<?php echo $page_id; ?>";
            	var Fullname=HTMLCode($("#FullName").val());
            	var AcademicSpecs=HTMLCode($("#AcademicSpecs").val());
            	var Department=HTMLCode($("#Department").val());

            	$.ajax({
            		url: "../webservices/savefullinfo.php",
            		data: {
            			"pageid": pageid,
            			"fullname": Fullname,
            			"academicspecs": AcademicSpecs,
            			"department": Department
            		},
            		method: "POST",
            		success: function(data){
            			if(data.toLowerCase()=='right'){
            				Success("Full Info was Successfully Saved !");
            			}else{
            				Failure(data);
            			}
            		}
            	});
            });


            $("#ProfilePicCaptionSaveBtn").click(function(){
            	var pageid="<?php echo $page_id; ?>";
            	
            	tinymce.triggerSave();
            	var html=HTMLCode($('#ProfilePicCaptionText').val());

            	$.ajax({
            		url: "../webservices/saveprofilepiccaption.php",
            		data: {
            			"pageid": pageid,
            			"html": html
            		},
            		method: "POST",
            		success: function(data){
            			if(data.toLowerCase()=='right'){
            				Success("Profile Pic Caption Was Successfully Saved!");
            			}else{
            				Failure(data);
            			}
            		}
            	});
            });

            $("#HeaderPicCaptionSaveBtn").click(function(){
            	var pageid="<?php echo $page_id; ?>";
            	
            	tinymce.triggerSave();
            	var html=HTMLCode($('#HeaderPicCaptionText').val());

            	$.ajax({
            		url: "../webservices/saveheaderpiccaption.php",
            		data: {
            			"pageid": pageid,
            			"html": html,
				"bool": $("#homepage_header_caption_bool_checkbox").is(":checked")?'true':'false'
            		},
            		method: "POST",
            		success: function(data){
            			if(data.toLowerCase()=='right'){
            				Success("Header Pic Caption Was Successfully Saved!");
            			}else{
            				Failure(data);
            			}
            		}
            	});
            });


            $("#SavePageContentBtn").click(function(){
            	var pageid="<?php echo $page_id; ?>";

            	tinymce.triggerSave();
            	var html= HTMLCode($("#PageContentText").val());

            	$.ajax({
            		url: "../webservices/savepagecontent.php",
            		data: {
            			"pageid": pageid,
            			"html": html
            		},
            		method: "POST",
            		success: function(data){
            			if(data.toLowerCase()=='right'){
            				Success("Page Content Was Successfully Saved!");
            			}else{
            				Failure(data);
            			}
            		}
            	});
            });

            $("#homepage_header_caption_bool_checkbox").bootstrapSwitch({
                onSwitchChange: function(){
                    if($(this).is(":checked")){
                        $(this).closest("tr").attr("data-check",'on');
                        $(this).closest("tr").find("span.icon").removeClass("disabled");
                        $(this).closest("tr").find("input[type=text]").removeAttr("disabled");
                    }else{
                        $(this).closest("tr").attr("data-check",'off');
                        $(this).closest("tr").find("span.icon").addClass("disabled");
                        $(this).closest("tr").find("input[type=text]").prop("disabled",'true');
                    }
                },onInit:function(){
                    if($(this).is(":checked")){
                        $(this).closest("tr").attr("data-check",'on');
                        $(this).closest("tr").find("span.icon").removeClass("disabled");
                        $(this).closest("tr").find("input[type=text]").removeAttr("disabled");
                    }else{
                        $(this).closest("tr").attr("data-check",'off');
                        $(this).closest("tr").find("span.icon").addClass("disabled");
                        $(this).closest("tr").find("input[type=text]").prop("disabled",'true');
                    }
                }
            });

            $("#HomePageHeaderImageCheckbox").bootstrapSwitch({
                onSwitchChange: function(){
                    if($(this).is(":checked")){
                        $(this).closest("tr").attr("data-check",'on');
                        $(this).closest("tr").find("span.icon").removeClass("disabled");
                        $(this).closest("tr").find("input[type=text]").removeAttr("disabled");

                        $.ajax({
                            url: "../webservices/savehomepagestatus.php",
                            data: {"status": 1},
                            method: "POST",
                            success: function(data){
                                if(data.toLowerCase()=='right'){
                                    Success("Status Saved [ ON ]!");
                                }else{
                                    Failure(data);
                                }
                            }
                        });

                    }else{
                        $(this).closest("tr").attr("data-check",'off');
                        $(this).closest("tr").find("span.icon").addClass("disabled");
                        $(this).closest("tr").find("input[type=text]").prop("disabled",'true');
                        
                        $.ajax({
                            url: "../webservices/savehomepagestatus.php",
                            data: {"status": 0},
                            method: "POST",
                            success: function(data){
                                if(data.toLowerCase()=='right'){
                                    Success("Status Saved [ OFF ]!");
                                }else{
                                    Failure(data);
                                }
                            }
                        });
                    }
                },onInit:function(){
                    if($(this).is(":checked")){
                        $(this).closest("tr").attr("data-check",'on');
                        $(this).closest("tr").find("span.icon").removeClass("disabled");
                        $(this).closest("tr").find("input[type=text]").removeAttr("disabled");
                    }else{
                        $(this).closest("tr").attr("data-check",'off');
                        $(this).closest("tr").find("span.icon").addClass("disabled");
                        $(this).closest("tr").find("input[type=text]").prop("disabled",'true');
                    }
                }
            });

        </script>
</body>

</html>
