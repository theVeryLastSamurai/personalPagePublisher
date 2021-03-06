<?php
    $page_id="beyondscience";
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
                $title="Beyond Science";
                $act_deact=true;
                $page_id="beyondscience";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="beyondscience.php";//already done in the above section tho just a safety net
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
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Topics</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveResearchBtn" title="Change Profile Pic" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div id="CategoryStep"></div>
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

        <?php require_once("../websiteelements/scripts.html"); ?>
        
        <script src="../lib/plugins/burgundystep/burgundystep.js"></script>
        <!-- Javascript -->
        <script>tinymce.init({ selector:'textarea' });</script>
        <script type="text/javascript">



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
           

            var ResearchToDelete=[];

            $("#CategoryStep").BurgundyStep({
                title: "Topic",
                stepcontent: "\
                        <div class='row'>\
                            <div class='card col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card-header'>\
                                    <div class='card-title'>\
                                        <div class='title'>Beyond Science Topic Info</div>\
                                    </div>\
                                </div>\
                                <div class='card-body' style='padding-top:0px;'>\
                                    <div class='row'>\
                                        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                            <div class='sub-title'>Title:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control ResearchTitle' onchange='TopicTitleChanged(this);' placeholder='enter Title' />\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class='row'>\
                                        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                            <div class='sub-title'>Description</div>\
                                            <textarea class='ResearchDescription TempTinyMCE' ></textarea>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>",
                addcallback: function(){
                	tinymce.init({ selector:'.TempTinyMCE' }); // to turn the Newly-appended textarea to a 'tinymce' plugin
                    $("div[role=tabpanel]:last .TempTinyMCE").removeClass('TempTinyMCE'); // so as to NOT initialize the same textarea any more than once

            	},
                removecallback: function(element){
                    if(element[0].hasAttribute('data-topic-no')){
                        ResearchToDelete.push(element.attr('data-topic-no'));
                    }
                }
            });

            function TopicTitleChanged(p){
                var str= $(p).val();
                if(str.length>20) str= str.substring(0,20) + "...";
                $('#'+$(p).closest("div[role=tabpanel]").attr('id')+"-tab").find("div.title").html(str);
            }
            
            '<?php require_once("../webservices/getbeyondtopics.json.php"); ?>';

            var data= $.parseJSON('<?php echo $webservice_output; ?>') ;

            for ( var item in data ){
                var topic=data[item];

                topic['title']=HTMLDecode(topic['title']);
                topic['description']=HTMLDecode(topic['description']);

                options={
                    title: topic['title'].length >20 ? topic['title'].substring(0,20)+'...' : topic['title'] ,
                    stepcontent: "\
                            <div class='row'>\
	                            <div class='card col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
	                                <div class='card-header'>\
	                                    <div class='card-title'>\
	                                        <div class='title'>Beyond Science Topic Info</div>\
	                                    </div>\
	                                </div>\
	                                <div class='card-body' style='padding-top:0px;'>\
	                                    <div class='row'>\
	                                        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
	                                            <div class='sub-title'>Title:</div>\
	                                            <div class='text-indent'>\
	                                                <input type='text' class='form-control ResearchTitle' onchange='TopicTitleChanged(this);' placeholder='enter Title' />\
	                                            </div>\
	                                        </div>\
	                                    </div>\
	                                    <div class='row'>\
	                                        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
	                                            <div class='sub-title'>Description</div>\
	                                            <textarea class='ResearchDescription TempTinyMCE' ></textarea>\
	                                        </div>\
	                                    </div>\
	                                </div>\
	                            </div>"
                };
                $("#CategoryStep").BurgundyStep("add",options);

                $("#CategoryStep .tab-content div[role=tabpanel]:last").attr("data-topic-no",item);
                $("#CategoryStep .tab-content div[role=tabpanel]:last .ResearchTitle").val(topic['title']);
                $("#CategoryStep .tab-content div[role=tabpanel]:last .ResearchDescription").val(topic['description']);
            }

            $("#SaveResearchBtn").click(function(){
                var jsonObj=[];
                tinymce.triggerSave();
                $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                    var title= HTMLCode($(this).find(".ResearchTitle").val());
                    var description=HTMLCode($(this).find("textarea.ResearchDescription").val());

                    var Obj=new Object();

                    Obj.topicno=$(this)[0].hasAttribute('data-topic-no')?$(this).attr('data-topic-no'):-1;
                    Obj.title=title;
                    Obj.description=description;

                    jsonObj.push(Obj);
                });

                var json=JSON.stringify(jsonObj);
                var deletejson=JSON.stringify(ResearchToDelete);

                $.ajax({
                    url: "../webservices/savebeyondtopic.php",
                    data: {
                        beyondjson: json,
                        deletejson: deletejson
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Topics Successfully Saved !");
                            var TopicNumbers=$.parseJSON( data.substring(5) );
                            var i=0;
                            $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                                if(!$(this)[0].hasAttribute('data-topic-no')){
                                    $(this).attr('data-topic-no',TopicNumbers[i++]);
                                }
                            });
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

        </script>

</body>

</html>
