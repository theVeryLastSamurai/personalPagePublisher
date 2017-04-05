<?php
    /* variable $page_id MUST NOT be passed to "everypage_technical_header.php" here because this AIN'T a page */
    include("../webservices/everypage_technical_header.php");
    /* A-Checks if user is logged in
    B- Fetches websiteno & profile_pic_add*/

    $query='SELECT `default_header_address` FROM website WHERE websiteno=\''.$websiteno.'\' ;';
    $result = $conn->query($query);
    $def_header="";
    if( $result->num_rows > 0){
        $row = $result->fetch_assoc();
        if($row['default_header_address'])
            $def_header="../app_data/img/defaultheader/".$row['default_header_address'];
        else
            $def_header="../app_data/img/defaultheader/default.jpg";
    }else{
        $def_header="../app_data/img/defaultheader/default.jpg";
    }

    $social_link['researchgate']=
    $social_link['facebook']=
    $social_link['twitter']=
    $social_link['instagram']=
    $social_link['linkedin']=
    $social_link['googleplus']=NULL;

    $social_check['researchgate']=
    $social_check['facebook']=
    $social_check['twitter']=
    $social_check['instagram']=
    $social_check['linkedin']=
    $social_check['googleplus']=NULL;

    $query='SELECT * FROM social_link WHERE websiteno=\''.$websiteno.'\' ;';
    $result = $conn->query($query);
    if( $result->num_rows > 0)
        for($i=0;$i<$result->num_rows;$i++){
            $row = $result->fetch_assoc();
            $social_link[$row['type']]=$row['link_address'];
            $social_check[$row['type']]=$row['activity_status'];
        }


    $color[0]=$color[1]=NULL;
    $query='SELECT * FROM `color` WHERE websiteno='.$websiteno.' ;';
    $result = $conn->query($query);
    if( $result->num_rows > 0)
        for($i=0;$i<$result->num_rows;$i++){
            $row = $result->fetch_assoc();
            $color[$row['role']]=$row['hex'];
        }

    $fonticon[0]=$fonticon[1]=NULL;
    $query='SELECT * FROM footer_link WHERE websiteno=\''.$websiteno.'\' ;';
    $result = $conn->query($query);
    if( $result->num_rows > 0)
        for($i=0;$i<$result->num_rows;$i++){
            $row = $result->fetch_assoc();
            $fonticon[$row['role']]=$row['font_icon'];
            $fonticon[$row['role']]=$row['font_icon'];
            $linktitle[$row['role']]=$row['title'];
            $linkdescription[$row['role']]=$row['description'];
            $link_activity_status[$row['role']]=$row['activity_status'];
            $link_label[$row['role']]=$row['link_label'];
            $link_address[$row['role']]=$row['link_address'];
        }

?>

<!DOCTYPE html>
<html>

<head>
    <title>IASBS Personal Page Publisher</title>
    
    <?php require_once("../websiteelements/html_head.html"); /* all CSS libraries Neccessary for this page*/ ?>
    
    <link rel="stylesheet" type="text/css" href="../lib/css/colorpicker/colorpicker.css">
    <link rel="stylesheet" media="screen" type="text/css" href="../lib/css/colorpicker/layout.css">

    <style type="text/css">
        .step.tabs-left .nav-tabs > li {
            min-width: 50px;
            width: 50px;
        }
    </style>
    
</head>

<body class="flat-red">
    <div class="app-container">
        <div class="row content-container">
            <?php /* the Top Panel */
                $title="Website Review";
                $act_deact=false;
                $page_id="websitereview";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="index.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>

            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body padding-top">
                    <div class="row">
                        <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Default Header ( of Aspect Ratio 2:1 or 4:1 )</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button title="Change Profile Pic" class="btn btn-warning" data-toggle="modal" data-target="#ModalUploadHeader">
                                                <i class="glyphicon glyphicon-edit"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <img id='DefaultHeaderImage' class="img-responsive" src="<?php echo $def_header; ?>" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-5 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"><i class="fa fa-user"></i> Social Info</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SocialInfoSaveBtn" title="Save" class="btn btn-default" >
                                                Save
                                            </button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body no-padding">
                                    <table class="table">
                                        <tr data-type='researchgate' >
                                            <td>
                                                <input type="checkbox" class="SocialCheckbox" <?php if($social_check['researchgate'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa icon-ResearchGate fa-3x"></span>
                                            </td>
                                            <td>
                                                <input id="SocialTextboxResearchGate" type="text" class="form-control link" placeholder="http://researchgate.net/yourID" />
                                            </td>
                                        </tr>

                                        <tr data-type='facebook' >
                                            <td>
                                                <input type="checkbox" class="SocialCheckbox" <?php if($social_check['facebook'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa fa-facebook-official fa-3x"></span>
                                            </td>
                                            <td>
                                                <input id="SocialTextboxFacebook" type="text" class="form-control link" placeholder="http://facebook.com/yourID" />
                                            </td>
                                        </tr>
                                        <tr data-type='twitter' >
                                            <td>
                                                <input type="checkbox" class="SocialCheckbox" <?php if($social_check['twitter'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa fa-twitter fa-3x"></span>
                                            </td>
                                            <td>
                                                <input id="SocialTextboxTwitter"  type="text" class="form-control link" placeholder="http://twitter.com/yourID" />
                                            </td>
                                        </tr>
                                        <tr data-type='instagram' >
                                            <td>
                                                <input type="checkbox" class="SocialCheckbox" <?php if($social_check['instagram'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa fa-instagram fa-3x"></span>
                                            </td>
                                            <td>
                                                <input  id="SocialTextboxInstagram" type="text" class="form-control link" placeholder="http://instagram.com/yourID" />
                                            </td>
                                        </tr>
                                        <tr data-type='linkedin' >
                                            <td>
                                                <input  type="checkbox" class="SocialCheckbox" <?php if($social_check['linkedin'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa fa-linkedin-square fa-3x"></span>
                                            </td>
                                            <td>
                                                <input  id="SocialTextboxLinkedin" type="text" class="form-control link" placeholder="http://linkedin.com/yourID" />
                                            </td>
                                        </tr>
                                        <tr data-type='googleplus' >
                                            <td>
                                                <input  type="checkbox" class="SocialCheckbox" <?php if($social_check['googleplus'])echo "checked" ?> />
                                            </td>
                                            <td>
                                                <span class="icon fa fa-google-plus fa-3x"></span>
                                            </td>
                                            <td>
                                                <input  id="SocialTextboxGoogleplus" type="text" class="form-control link" placeholder="http://plus.google.com/yourID"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-7 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="card card-success">
                                        <div class="card-header">
                                            <div class="card-title">
                                                <div class="title">Theme Colors</div>
                                            </div>
                                            <div class="pull-right card-action">
                                                <div class="btn-group" role="group" aria-label="...">
                                                    <button id="ColorSaveBtn" title="Save" class="btn btn-default" >
                                                        Save
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="clear-both"></div>
                                        </div>
                                        <div class="card-body">
                                            <div class="step tabs-left card-no-padding">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li role="step" class="active">
                                                        <a href="#stepv1" id="step1-vtab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
                                                            <div class="icon fa fa-paint-brush" style="color:#952828;"></div>
                                                            <div class="step-title">
                                                                <div class="title">Color#1</div>
                                                                <div class="description">Customize</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li role="step">
                                                        <a href="#stepv2" role="tab" id="step2-vtab" data-toggle="tab" aria-controls="profile">
                                                            <div class="icon fa fa-paint-brush" style="color:#969594;"></div>
                                                            <div class="step-title">
                                                                <div class="title">Color#2</div>
                                                                <div class="description">Customize</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane fade in active" id="stepv1" aria-labelledby="home-tab" >
                                                        <div id="customWidget">
                                                            <div id="colorSelector1"><div style="background-color: #<?php echo $color[0]; ?>;"></div></div>
                                                            <div id="colorpickerHolder1"></div>
                                                        </div>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane fade" id="stepv2" aria-labelledby="profile-tab">
                                                        <div id="customWidget">
                                                            <div id="colorSelector2"><div style="background-color: #<?php echo $color[1]; ?>;"></div></div>
                                                            <div id="colorpickerHolder2"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-12 col-xs-12 col-md-12 col-sm-12">
                                    <div class="card card-success">
                                        <div class="card-header">
                                            <div class="card-title">
                                                <div class="title">Footer Links</div>
                                            </div>
                                            <div class="pull-right card-action">
                                                <div class="btn-group" role="group" aria-label="...">
                                                    <button id="SaveFooterLinkBtn" title="Save" class="btn btn-default" >
                                                        Save
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="clear-both"></div>
                                        </div>
                                        <div class="card-body">                                          
                                            <div class="step tabs-left card-no-padding">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li role="step" class="active">
                                                        <a href="#stepvv1" id="step1-vvtab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
                                                            <div class="glyphicon glyphicon-link" style="color: #952828;"></div>
                                                            <div class="step-title">
                                                                <div class="title">Link#1</div>
                                                                <div class="description">Edit</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li role="step">
                                                        <a href="#stepvv2" role="tab" id="step2-vvtab" data-toggle="tab" aria-controls="profile">
                                                            <div class="glyphicon glyphicon-link" style="color: #969594;"></div>
                                                            <div class="step-title">
                                                                <div class="title">Link#2</div>
                                                                <div class="description">Edit</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane fade in active" id="stepvv1" aria-labelledby="home-tab">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12" style="text-align:center;">
                                                                <button title='Icon (click to Change)' type="button" style="margin-top:0;" class="btn btn-default FontIcon" data-toggle="modal" data-target="#SelectFontIcon0Modal"><span id='fonticon0' class="fa-2x icon icon-iasbs"></span></button>
                                                            </div>
                                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-12">
                                                                <input id="Footer1Title" type="text" class="form-control LinkTitle" placeholder="Title" value="<?php echo $linktitle[0]; ?>">
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <textarea id="Footer1Description" class="form-control" rows="3" placeholder="Description"><?php echo $linkdescription[0]; ?></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-1">
                                                                <label style="margin-top:6px;">Link</label>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <input type="checkbox" class="FooterCheckbox" <?php if($link_activity_status[0]){echo'checked';} ?>>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <input id="Footer1LinkLabel" type="text" class="form-control FooterLinkLinkTitle" placeholder="Label" value="<?php echo $link_label[0];?>">
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <input id="Footer1LinkAddress" type="text" class="form-control FooterLinkLinkAddress" placeholder="Address" value="<?php echo $link_address[0]; ?>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane fade" id="stepvv2" aria-labelledby="profile-tab">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
                                                                <button title='Icon (click to Change)' type="button" style="margin-top:0;" class="btn btn-default FontIcon" data-toggle="modal" data-target="#SelectFontIcon1Modal"><span id='fonticon1' class="fa-2x icon icon-atom"></span></button>
                                                            </div>
                                                            <div class="col-lg-10 col-md-10 col-sm-8 col-xs-12">
                                                                <input id="Footer2Title" type="text" class="form-control LinkTitle" placeholder="Title" value="<?php echo $linktitle[1]; ?>">
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <textarea id="Footer2Description" class="form-control" rows="3" placeholder="Description"><?php echo $linkdescription[1]; ?></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xs-1">
                                                                <label style="margin-top:6px;">Link</label>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <input type="checkbox" class="FooterCheckbox" name="my-checkbox" <?php if($link_activity_status[1]){echo'checked';} ?>>
                                                            </div>
                                                            <div class="col-xs-4">
                                                                <input id="Footer2LinkLabel" type="text" class="form-control FooterLinkLinkTitle" placeholder="Label" value="<?php echo $link_label[1];?>">
                                                            </div>
                                                            <div class="col-xs-4">
                                                                <input id="Footer2LinkAddress" type="text" class="form-control FooterLinkLinkAddress" placeholder="Address" value="<?php echo $link_address[1]; ?>">
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
                        
                    </div>
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right"><a href="#"><i class="fa fa-long-arrow-up"></i></a></span>
            </div>
        </footer>

        <div id="SelectFontIcon0Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">
                        	Select an Icon<br/>
                        	<input type="text" class="form-control" placeholder="Search..." style="margin-top:20px;" onkeyup="Search(this);" />
                        </h4>
                    </div>
                    <div class="modal-body" style="max-height:600px;overflow-y:auto;">
                        <table class="table SelectableList">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th>Icon</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div id="SelectFontIcon1Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">
                        	Select an Icon<br/>
                        	<input type="text" class="form-control" placeholder="Search..." style="margin-top:20px;" onkeyup="Search(this);" />
                        </h4>
                    </div>
                    <div class="modal-body" style="max-height:600px;overflow-y:auto;">
                        <table class="table SelectableList">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Title</th>
                                    <th>Icon</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Upload Profile Pic -->
        <div class="modal fade modal-warning" id="ModalUploadHeader" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change Default Header</h4>
                    </div>
                    <div class="modal-body">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">
                                        Upload a New Pic (of Aspect Ratio 2:1 or 4:1)
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <form action="../webservices/defaultheaderupload.php" data-callback="RefreshDefaultHeaderImage">
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
                        <button type="button" class="btn btn-warning ModalUploadImageSubmitBtn" >Upload</button>
                    </div>
                </div>
            </div>
        </div>



        <!--end Modal-->
        
        <!-- Javascript Libs -->
        
        <script type="text/javascript" src="../lib/js/jquery.min.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/colorpicker.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/eye.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/utils.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/layout.js.php?color0=<?php echo $color[0]; ?> & color1=<?php echo $color[1]; ?>"></script>

		<?php require_once("../websiteelements/scripts.html"); ?>
        

		<script type="text/javascript" src="../lib/js/font-awesome-list.js"></script>
        <script type="text/javascript">
            

            $("#SocialTextboxResearchGate").val(HTMLDecode("<?php echo $social_link['researchgate']; ?>"));
            $("#SocialTextboxFacebook").val(HTMLDecode("<?php echo $social_link['facebook']; ?>"));
            $("#SocialTextboxTwitter").val(HTMLDecode("<?php echo $social_link['twitter']; ?>"));
            $("#SocialTextboxInstagram").val(HTMLDecode("<?php echo $social_link['instagram']; ?>"));
            $("#SocialTextboxGoogleplus").val(HTMLDecode("<?php echo $social_link['googleplus']; ?>"));
            $("#SocialTextboxLinkedin").val(HTMLDecode("<?php echo $social_link['linkedin']; ?>"));

            
            $("#Footer1Title").val(HTMLDecode( "<?php echo $linktitle[0]; ?>" ));
            $("#Footer1Description").val(HTMLDecode( "<?php echo $linkdescription[0]; ?>" ));
            $("#Footer1LinkLabel").val(HTMLDecode( "<?php echo $link_label[0];?>" ));
            $("#Footer1LinkAddress").val(HTMLDecode( "<?php echo $link_address[0]; ?>" ));

            $("#Footer2Title").val(HTMLDecode( "<?php echo $linktitle[1]; ?>" ));
            $("#Footer2Description").val(HTMLDecode( "<?php echo $linkdescription[1]; ?>" ));
            $("#Footer2LinkLabel").val(HTMLDecode( "<?php echo $link_label[1];?>" ));
            $("#Footer2LinkAddress").val(HTMLDecode( "<?php echo $link_address[1]; ?>" ));






            function RefreshDefaultHeaderImage(){
                $.ajax({
                    url: "../webservices/getdefaultheader.php",
                    success: function(data){
                        var d= new Date();
                        var prev_image_path=$("#DefaultHeaderImage").attr('src');
                        var new_image_path= prev_image_path.substring(0, prev_image_path.lastIndexOf('/')+1) + data + '?' + d.getTime();
                        $("#DefaultHeaderImage").attr('src', new_image_path );
                    }
                });
            }


        	$("head").append("<style>table.SelectableList tbody tr:hover{cursor: pointer;}</style>");

        	var i=0;
        	$.each(fontawesome,function(key,value){
        		i++;
        		NewRow="\
					<tr data-dismiss='modal' data-custom='"+(value=="custom"?"true":"false")+"' >\
                        <th scope='row'>"+i+"</th>\
                        <td data-value='"+key+"'>"+key+"</td>\
                        <td><span class='fa fa-2x "+(value=="custom"?"icon-":"fa-")+key+"' ></span></td>\
                    </tr>\
        		";
        		$("#SelectFontIcon0Modal tbody").append(NewRow);
        		$("#SelectFontIcon1Modal tbody").append(NewRow);
        	});


        	$('#SelectFontIcon0Modal tbody td[data-value="<?php echo $fonticon[0]; ?>"]').closest("tr").addClass("success");
        	$('#SelectFontIcon1Modal tbody td[data-value="<?php echo $fonticon[1]; ?>"]').closest("tr").addClass("success");

	    $("#fonticon0").attr('class', 'fa '+ (fontawesome["<?php echo $fonticon[0]; ?>"]=="custom"? "icon-": "fa-")+"<?php echo $fonticon[0]; ?>" );
            $("#fonticon0").attr('data-value',"<?php echo $fonticon[0]; ?>");
	    $("#fonticon1").attr('class', 'fa '+ (fontawesome["<?php echo $fonticon[1]; ?>"]=="custom"? "icon-": "fa-")+"<?php echo $fonticon[1]; ?>" );
            $("#fonticon1").attr('data-value',"<?php echo $fonticon[1]; ?>");

            $("table.SelectableList tbody tr").hover(function(){
            	$(this).addClass("active");
            });
            $("table.SelectableList tbody tr").mouseleave(function(){
            	$(this).removeClass("active");
            });

            $("table.SelectableList tbody tr").click(function(){
            	$(this).closest("table").find("tr.success").removeClass("success");
            	$(this).addClass("success");
            });

            $("#SelectFontIcon0Modal table.SelectableList tbody tr").click(function(){
            	$("#fonticon0").attr("class",'fa '+( $(this).attr("data-custom")=="true" ?"icon-":"fa-")+$(this).find("td[data-value]").html());
                $("#fonticon0").attr('data-value', $(this).find("td[data-value]").html() );
            });

            $("#SelectFontIcon1Modal table.SelectableList tbody tr").click(function(){
            	$("#fonticon1").attr("class",'fa '+( $(this).attr("data-custom")=="true" ?"icon-":"fa-")+$(this).find("td[data-value]").html());
                $("#fonticon1").attr('data-value', $(this).find("td[data-value]").html() );
            });

			
			function Search(elem){
				var InputText=$(elem).val();
				$(elem).closest(".modal").find("tbody tr").each(function(){
					var RowText=$(this).find("td").html();

					if(InputText.trim()=="" || InputText.indexOf(RowText)>=0 ||  RowText.indexOf(InputText)>=0 )
						$(this).show();
					else
						$(this).hide();
				});
			}
            

			$("head").append("<style>.disabled{color:grey;}</style>");

            $(".SocialCheckbox").bootstrapSwitch({
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

			$(".FooterCheckbox").bootstrapSwitch({
                onSwitchChange: function(){
                    if($(this).is(":checked")){
                        $(this).closest(".row").attr("data-check",'on');
                        $(this).closest(".row").find("input[type=text]").removeAttr("disabled");
                    }else{
                        $(this).closest(".row").attr("data-check",'off');
                        $(this).closest(".row").find("input[type=text]").prop("disabled",'true');
                    }
                },onInit:function(){
                    if($(this).is(":checked")){
                        $(this).closest(".row").attr("data-check",'on');
                        $(this).closest(".row").find("input[type=text]").removeAttr("disabled");
                    }else{
                        $(this).closest(".row").attr("data-check",'off');
                        $(this).closest(".row").find("input[type=text]").prop("disabled",'true');
                    }
                }
            });


            $("#SocialInfoSaveBtn").click(function(){
                var table=$(this).closest('.card').find("table");

                var TableInfo=[];
                table.find('tr').each(function(){
                    var CheckboxVal=$(this).find('input[type=checkbox]').is(':checked');
                    var LinkVal=$(this).find('input[type=text]').val();

                    var RowObject=new Object();
                    RowObject.Type=$(this).attr('data-type');
                    RowObject.CheckboxVal=CheckboxVal;
                    RowObject.LinkVal=HTMLCode(LinkVal);

                    TableInfo.push(RowObject);
                });
                var socialinfojson=JSON.stringify(TableInfo);

                $.ajax({
                    url: "../webservices/savesocialinfo.php",
                    data: {"socialinfojson": socialinfojson },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase()=='right'){
                            Success('Social Info Successfully Saved !');
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

            $("#ColorSaveBtn").click(function(){
                var Color1=$("#colorpickerHolder1 .colorpicker_hex input[type=text]").val();
                var Color2=$("#colorpickerHolder2 .colorpicker_hex input[type=text]").val();

                $.ajax({
                    url: "../webservices/savethemecolor.php?color1="+Color1+"&color2="+Color2,
                    method: "POST",
                    success: function (data) {
                        if(data.toLowerCase()=='right'){
                            Success('Theme Colors Successfully Saved !');
                        }else{
                            Failure(data);
                        }
                    }
                });
            });
            
            $("#SaveFooterLinkBtn").click(function () {
                var jsonObj=[];
                $(this).closest('.card').find('div[role=tabpanel]').each(function(){

                    var Obj=new Object();
                    Obj.fonticon=$(this).find('.FontIcon > span').attr('data-value');
                    Obj.title= HTMLCode( $(this).find('input[type=text].LinkTitle').val() );
                    Obj.description= HTMLCode( $(this).find('textarea').val() );
                    Obj.LinkCheck=  $(this).find('input[type=checkbox]').is(":checked")? 1 : 0;
                    Obj.FooterLinkLinkTitle= HTMLCode( $(this).find('input[type=text].FooterLinkLinkTitle').val() );
                    Obj.FooterLinkLinkAddress= HTMLCode( $(this).find('input[type=text].FooterLinkLinkAddress').val() );
                    
                    jsonObj.push(Obj);
                });
                var json=JSON.stringify(jsonObj);
                $.ajax({
                    type: 'POST',
                    // make sure you respect the same origin policy with this url:
                    // http://en.wikipedia.org/wiki/Same_origin_policy
                    url: '../webservices/savefooterlink.php',
                    method: "POST",
                    data: { 'footerlinkjson': json },
                    success: function(data){
                        if(data.toLowerCase()=='right')
                            Success('Footer Links Info Successfully Saved !');
                        else
                            Failure(data);
                    }
                });
            });

        </script>
        
</body>

</html>
