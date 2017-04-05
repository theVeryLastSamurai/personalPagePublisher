<?php
    $page_id="research";
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
                $title="Research";
                $act_deact=true;
                $page_id="research";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="research.php";//already done in the above section tho just a safety net
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
                                        <div class="title">Research Topics</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveResearchBtn" title="Change Profile Pic" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div class="well">
                                        Click the <i class='fa fa-check-circle' ></i> Button to simply set <stron>that Research Item</stron> as <strong>HEADER</strong>
                                        <br/>
                                        Click the <i class='fa fa-times-circle' ></i> Button to Undo it
                                        </div>
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
                specialbutton: true,
                specialbuttoncallback: function(tab){
                    $("div[data-heading=true]").attr('data-heading','false');
                    $(tab.find("a").attr('href')).attr('data-heading','true');
                },
                unspecialbuttoncallback: function(tab){
                    $(tab.find("a").attr('href')).attr('data-heading','false');
                },
                stepcontent: "\
                        <div class='row'>\
                            <div class='card col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card-header'>\
                                    <div class='card-title'>\
                                        <div class='title'>Research Info</div>\
                                    </div>\
                                </div>\
                                <div class='card-body' style='padding-top:0px;'>\
                                    <div class='row'>\
                                        <div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='well'>\
                                                Enable/Disable Pic: \
                                                <input type='checkbox' class='ResearchPicCheckbox' />\
                                            </div>\
                                            <div class='card'>\
                                                <div class='card-header'>\
                                                    <div class='card-title'>\
                                                        <div class='title'>Research Pic:</div>\
                                                    </div>\
                                                    <div class='pull-right card-action'>\
                                                        <div class='btn-group' role='group' aria-label='...'>\
                                                            <button title='First click Save & then Chang Research Pic' class='btn btn-warning disabled UploadNewResearchPicBtn' data-toggle='modal' >\
                                                                <i class='glyphicon glyphicon-edit'></i>\
                                                            </button>\
                                                        </div>\
                                                    </div>\
                                                    <div class='clear-both'></div>\
                                                </div>\
                                                <div class='card-body'>\
                                                    <img class='img-responsive' src='../app_data/img/researchpic/default.jpg' />\
                                                </div>\
                                            </div>\
                                        </div>\
                                        <div class='col-lg-8 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='sub-title'>Link address:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control ResearchLink' placeholder='http://' />\
                                            </div>\
                                            <div class='sub-title'>Title:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control ResearchTitle' onchange='TopicTitleChanged(this);' placeholder='enter Name' />\
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

                    var i=0;
                    $("div[role=tabpanel]").each(function(){ i++; });

                    var NewName='ModalUploadProfilePic'+i;
                    $("#ModalUploadProfilePic").attr('id', NewName );
                    $("div[role=tabpanel]:last button[data-target=#ModalUploadProfilePic]").attr('data-target', '#'+NewName );

                    $("#CategoryStep .tab-content div[role=tabpanel]:last input[type=checkbox].ResearchPicCheckbox").prop("checked",true);
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
            
            '<?php require_once("../webservices/getresearchtopics.json.php"); ?>';

            var data= $.parseJSON('<?php echo $webservice_output; ?>') ;
            var i=0;
            for ( var item in data ){
                var topic=data[item];

                topic['title']=HTMLDecode(topic['title']);
                topic['link']=HTMLDecode(topic['link']);
                topic['description']=HTMLDecode(topic['description']);
                topic['pic_address']=topic['pic_address']?topic['pic_address']:"default.jpg";

                options={
                    title: topic['title'].length >20 ? topic['title'].substring(0,20)+'...' : topic['title'] ,
                    stepcontent: "\
                            <div class='row'>\
                                <div class='card col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Research Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='row'>\
                                            <div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'>\
                                                <div class='well'>\
                                                    Enable/Disable Pic: \
                                                    <input class='ResearchPicCheckbox' type='checkbox' />\
                                                </div>\
                                                <div class='card'>\
                                                    <div class='card-header'>\
                                                        <div class='card-title'>\
                                                            <div class='title'>Research Pic:</div>\
                                                        </div>\
                                                        <div class='pull-right card-action'>\
                                                            <div class='btn-group' role='group' aria-label='...'>\
                                                                <button title='Upload a new pic' class='btn btn-warning UploadNewResearchPicBtn' data-toggle='modal' data-target='#ModalUploadResearchPic"+i+"' >\
                                                                    <i class='glyphicon glyphicon-edit'></i>\
                                                                </button>\
                                                            </div>\
                                                        </div>\
                                                        <div class='clear-both'></div>\
                                                    </div>\
                                                    <div class='card-body'>\
                                                        <img id='ResearchPic"+item+"' class='img-responsive' src='../app_data/img/researchpic/"+topic['pic_address']+"' />\
                                                    </div>\
                                                </div>\
                                            </div>\
                                            <div class='col-lg-8 col-md-6 col-sm-12 col-xs-12'>\
                                                <div class='sub-title'>Link address:</div>\
                                                <div class='text-indent'>\
                                                    <input type='text' class='form-control ResearchLink' placeholder='http://'/>\
                                                </div>\
                                                <div class='sub-title'>Title:</div>\
                                                <div class='text-indent'>\
                                                    <input type='text' class='form-control ResearchTitle' onchange='TopicTitleChanged(this);' placeholder='enter Name'/>\
                                                </div>\
                                            </div>\
                                        </div>\
                                        <div class='row'>\
                                            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                                <div class='sub-title'>Description</div>\
                                                <textarea class='ResearchDescription' ></textarea>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                                <div class='modal fade modal-warning' id='ModalUploadResearchPic"+i+"' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>\
                                    <div class='modal-dialog'>\
                                        <div class='modal-content'>\
                                            <div class='modal-header'>\
                                                <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>\
                                                <h4 class='modal-title' id='myModalLabel'>Change Research Pic</h4>\
                                            </div>\
                                            <div class='modal-body'>\
                                                <div class='card'>\
                                                    <div class='card-header'>\
                                                        <div class='card-title'>\
                                                            <div class='title'>Upload a New Pic (of Aspect Ratio 1:1)</div>\
                                                        </div>\
                                                    </div>\
                                                    <div class='card-body'>\
                                                        <form action='../webservices/researchpicupload.php?topicno="+item+"' data-callback='RefreshResearchPic"+item+"' >\
                                                            <input class='form-control' type='file' />\
                                                        </form>\
                                                    </div>\
                                                    <div class='progress'>\
                                                        <div class='progress-bar progress-bar-success progress-bar-striped active' role='progressbar' aria-valuenow=' aria-valuemin='0' aria-valuemax='100' style='width: 0%'>\
                                                            <span class='sr-only'></span>\
                                                        </div>\
                                                    </div>\
                                                </div>\
                                            </div>\
                                            <div class='modal-footer'>\
                                                <button type='button' class='btn btn-default' data-dismiss='modal'>Cancel</button>\
                                                <button type='button' class='btn btn-warning ModalUploadImageSubmitBtn' >Upload</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>"
                };
                $("#CategoryStep").BurgundyStep("add",options);

                $("#CategoryStep .tab-content div[role=tabpanel]:last").attr("data-topic-no",item);
                $("#CategoryStep .tab-content div[role=tabpanel]:last .ResearchTitle").val(topic['title']);
                $("#CategoryStep .tab-content div[role=tabpanel]:last .ResearchLink").val(topic['link']);
                $("#CategoryStep .tab-content div[role=tabpanel]:last .ResearchDescription").val(topic['description']);

                if(topic['header_bool'])
                    $("#CategoryStep li[role=step]").each(function(){
                        if($(this).find("a").attr('href')=='#'+$("#CategoryStep .tab-content div[role=tabpanel]:last").attr('id')){
                            $(this).find("i.HeadingStep")[0].click();//important to do this two times
                            $(this).find("i.HeadingStep")[0].click();
                        }
                    });
                
                $("#CategoryStep .tab-content div[role=tabpanel]:last input[type=checkbox].ResearchPicCheckbox").prop('checked',topic['pic_bool']);

                $(".ModalUploadImageSubmitBtn").click(ModalUploadImageSubmitBtn_ClickFunc);

                var RefreshFunc="\
                    $.ajax({\
                        url: '../webservices/getresearchpic.php?topicno="+item+"',\
                        success: function(data){\
                            var d= new Date();\
                            var prev_image_path=$('#ResearchPic"+item+"').attr('src');\
                            var new_image_path= prev_image_path.substring(0, prev_image_path.lastIndexOf('/')+1) + data + '?' + d.getTime();\
                            $('#ResearchPic"+item+"').attr('src', new_image_path );\
                        }\
                    });\
                ";

                var FuncName='RefreshResearchPic'+item;
                window[FuncName]=new Function(FuncName,RefreshFunc);


                i++;
            }

            $("#SaveResearchBtn").click(function(){
                var jsonObj=[];
                tinymce.triggerSave();
                $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                    var title= HTMLCode($(this).find(".ResearchTitle").val());
                    var link= HTMLCode($(this).find(".ResearchLink").val());
                    var description=HTMLCode($(this).find("textarea.ResearchDescription").val());
                    var pic_bool=$(this).find("input[type=checkbox].ResearchPicCheckbox").is(":checked");
                    var heading=(this.hasAttribute('data-heading') && $(this).attr('data-heading')=='true')?true:false;
                    
                    var Obj=new Object();

                    Obj.topicno=$(this)[0].hasAttribute('data-topic-no')?$(this).attr('data-topic-no'):-1;
                    Obj.title=title;
                    Obj.link=link;
                    Obj.description=description;
                    Obj.pic_bool= pic_bool? 1 : 0;
                    Obj.heading=heading?1:0;

                    jsonObj.push(Obj);
                });

                var json=JSON.stringify(jsonObj);
                var deletejson=JSON.stringify(ResearchToDelete);

                $.ajax({
                    url: "../webservices/saveresearch.php",
                    data: {
                        researchjson: json,
                        deletejson: deletejson
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Researches Successfully Saved !");
                            var TopicNumbers=$.parseJSON( data.substring(5) );
                            var i=0;


                            var j=0;
                            $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                                j++;
                            });


                            $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                                if(!$(this)[0].hasAttribute('data-topic-no')){
                                    $(this).attr('data-topic-no',TopicNumbers[i]);

                                    $(this).find(".UploadNewResearchPicBtn").removeClass("disabled").attr('data-target','#ModalUploadResearchPic'+TopicNumbers[i]);
                                    $(this).parent().append("\
                                        <div class='modal fade modal-warning' id='ModalUploadResearchPic"+TopicNumbers[i]+"' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>\
                                            <div class='modal-dialog'>\
                                                <div class='modal-content'>\
                                                    <div class='modal-header'>\
                                                        <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>\
                                                        <h4 class='modal-title' id='myModalLabel'>Change Research Pic</h4>\
                                                    </div>\
                                                    <div class='modal-body'>\
                                                        <div class='card'>\
                                                            <div class='card-header'>\
                                                                <div class='card-title'>\
                                                                    <div class='title'>Upload a New Pic (of Aspect Ratio 1:1)</div>\
                                                                </div>\
                                                            </div>\
                                                            <div class='card-body'>\
                                                                <form action='../webservices/researchpicupload.php?topicno="+TopicNumbers[i]+"' data-callback='RefreshResearchPic"+TopicNumbers[i]+"' >\
                                                                    <input class='form-control' type='file' />\
                                                                </form>\
                                                            </div>\
                                                            <div class='progress'>\
                                                                <div class='progress-bar progress-bar-success progress-bar-striped active' role='progressbar' aria-valuenow=' aria-valuemin='0' aria-valuemax='100' style='width: 0%'>\
                                                                    <span class='sr-only'></span>\
                                                                </div>\
                                                            </div>\
                                                        </div>\
                                                    </div>\
                                                    <div class='modal-footer'>\
                                                        <button type='button' class='btn btn-default' data-dismiss='modal'>Cancel</button>\
                                                        <button type='button' class='btn btn-warning ModalUploadImageSubmitBtn' >Upload</button>\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>");

                                    $(this).parent().find('.ModalUploadImageSubmitBtn').click(ModalUploadImageSubmitBtn_ClickFunc);

                                    $(this).find("img").attr('id','ResearchPic'+TopicNumbers[i]);

                                    var RefreshFunc="\
                                        $.ajax({\
                                            url: '../webservices/getresearchpic.php?topicno="+TopicNumbers[i]+"',\
                                            success: function(data){\
                                                var d= new Date();\
                                                var prev_image_path=$('#ResearchPic"+TopicNumbers[i]+"').attr('src');\
                                                var new_image_path= prev_image_path.substring(0, prev_image_path.lastIndexOf('/')+1) + data + '?' + d.getTime();\
                                                $('#ResearchPic"+TopicNumbers[i]+"').attr('src', new_image_path );\
                                            }\
                                        });\
                                    ";

                                    var FuncName='RefreshResearchPic'+TopicNumbers[i];
                                    window[FuncName]=new Function(FuncName,RefreshFunc);


                                    i++;
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
