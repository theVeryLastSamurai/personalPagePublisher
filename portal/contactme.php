<?php
    $page_id="contactme";
    include("../webservices/everypage_technical_header.php");
    /* A-Checks if user is logged in
    B- Fetches websiteno & profile_pic_add*/
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
                $title="Contact Me";
                $act_deact=true;
                $page_id="contactme";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="contactme.php";//already done in the above section tho just a safety net
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
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Contact Info:</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveContactInfoBtn" title="Profile Pic Caption" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div class="sub-title">Email:*<small>(All Letters Will Be submitted to this address)</small>:</div>
                                    <input id="emailadd" type='text' class="form-control" placeholder="enter E-Mail to Recieve Visitors' Feedback" />
                                    <div class="sub-title">Tel:<small>(Optional)</small>:</div>
                                    <input id="tel" type='text' class="form-control" />
                                    <div class="sub-title">Cell:<small>(Optional)</small>:</div>
                                    <input id="cell" type='text' class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
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
                                            <textarea id='PageContentText' ></textarea>
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
                                <input class="form-control" type="file" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-warning">Upload</button>
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
                                <input class="form-control" type="file" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-warning">Upload</button>
                    </div>
                </div>
            </div>
        </div>

        <!--end Modal-->

        <!-- Javascript Libs -->
        <?php require_once("../websiteelements/scripts.html"); ?>
        
        <!-- Javascript -->
        <script>tinymce.init({ selector:'textarea' });</script>
        <script type="text/javascript">

            $("#emailadd").val( HTMLDecode("<?php echo $page_data['email']; ?>") );
            $("#tel").val( HTMLDecode("<?php echo $page_data['tel']; ?>") );
            $("#cell").val( HTMLDecode("<?php echo $page_data['cell']; ?>") );

            $("#PageContentText").val( HTMLDecode("<?php echo $page_data['page_content']; ?>") );

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

        

            $("#SaveContactInfoBtn").click(function(){
                var pageid="<?php echo $page_id; ?>";
                var email= HTMLCode( $("#emailadd").val() );
                var tel= HTMLCode( $("#tel").val() );
                var cell= HTMLCode( $("#cell").val() );

                $.ajax({
                    url: "../webservices/savecontactinfo.php",
                    data: {
                        "pageid": pageid,
                        "email": email,
                        "tel": tel,
                        "cell": cell
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase()=='right'){
                            Success("Page Title Successfully Saved !");
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

            $("#SavePageContentBtn").click(function(){
                
                var pageid="<?php echo $page_id; ?>";

                tinymce.triggerSave();
                var html= HTMLCode( $("#PageContentText").val() );

                $.ajax({
                    url: "../webservices/savepagecontent.php",
                    data: {
                        "pageid": pageid,
                        "html": html
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase()=='right'){
                            Success("Page Content Was Successfully Save d!");
                        }else{
                            Failure(data);
                        }
                    }
                });
            });


        </script>
</body>

</html>
