<?php
    $page_id="teachings";
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
                $title="Teachings";
                $act_deact=true;
                $page_id="teachings";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="teachings.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>
            
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">
                            <div id ='PageTitle'></div>
                        </span>
                        <div class="description">This is the Page Title appearing on the Menu</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"><small>Seasons ( Categories ):</small></div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveSeasonsBtn" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div id='seasons' ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Courses</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveCoursesBtn" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div id="CourseStep"></div>
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

        <!-- Javascript Libs -->
        <?php require_once("../websiteelements/scripts.html"); ?>

        <script src="../lib/plugins/burgundyinput/burgundyinput.js"></script>
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



            var ToDelete=[];
            var ClassToDelete=[];
            $("#seasons").BurgundyInput({
                title: "Seasons ( i.e. Spring 2016 ):",
                color:"default",
                fields: ['Title'],
                draganddropcallback: function(row1,row2){
                    var t=null;
                    if($.data(row1[0], 'season-no'))
                        t=$.data(row1[0],'season-no');
                    if($.data(row2[0],'season-no'))
                        $.data(row1[0],'season-no', $.data(row2[0],'season-no'));
                    else
                        $.data(row1[0],'season-no', null);

                    $.data(row2[0],'season-no',t);
                },
                removecallback: function(row){
                    if(!$.data(row[0], 'season-no'))
                        return;
                    ToDelete.push($.data(row[0], 'season-no'));
                }
            });

            
            '<?php require_once("../webservices/getseasons.json.php"); ?>';

            var data= $.parseJSON('<?php echo $webservice_output; ?>');
            
            var Seasons=data; //exploited way Below

            for ( var season in data ){
                var title=HTMLDecode(data[season]);
                $("#seasons").BurgundyInput("add", {values:[ title ]});
                $.data($("#seasons tbody tr:last")[0], "season-no" , season);
            }
           

            $("#CourseStep").BurgundyStep({
                title: "Course",
                stepcontent: "\
                        <div class='row'>\
                            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Course Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='sub-title'>Title:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control CourseTitle' onchange='CourseNameChanged(this);' placeholder='enter Title' />\
                                            </div>\
                                            <div class='sub-title'>Link address:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control CourseLink' placeholder='http://' />\
                                            </div>\
                                            <div class='sub-title'>Season:</div>\
                                            <div class='text-indent'>\
                                                <select class='form-control CourseSeason'>\
                                                </select>\
                                            </div>\
                                        </div>\
                                        <div class='col-lg-8 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='row'>\
                                                <div class='col-lg-6'>\
                                                    <div class='sub-title'>schedule:</div>\
                                                    <div class='text-indent'>\
                                                        <input type='text' class='form-control CourseSchedule' />\
                                                    </div>\
                                                </div>\
                                                <div class='col-lg-6'>\
                                                    <div class='sub-title'>Venue:</div>\
                                                    <div class='text-indent'>\
                                                        <input type='text' class='form-control CourseVenue' />\
                                                    </div>\
                                                </div>\
                                            </div>\
                                            <div class='row'>\
                                                <div class='col-lg-12'>\
                                                    <div class='sub-title'>Description: </div>\
                                                    <textarea class='CourseDescription' ></textarea>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>",
                addcallback: function(){
                    tinymce.init({ selector:'textarea' }); // to turn the Newly-appended textarea to a 'tinymce' plugin

                    for( var item in Seasons){
                        $("#CourseStep div[role=tabpanel]:last select").append("<option value='"+item+"' >"+HTMLDecode(Seasons[item])+"</option>");
                    }
                },
                removecallback: function(tab){
                    if($.data(tab[0],'class-no'))
                        ClassToDelete.push($.data(tab[0],'class-no'));
                }
            });

            function CourseNameChanged(p){
                var str= $(p).val();
                if(str.length>20) str= str.substring(0,20) + "...";
                $('#'+$(p).closest("div[role=tabpanel]").attr('id')+"-tab").find("div.title").html(str);
            }

            $.getJSON("../webservices/getclasses.json.php",function(data){

                for ( var item in data ){
                    var Class=data[item];

                    Class['title']=HTMLDecode(Class['title']);
                    Class['link']=HTMLDecode(Class['link']);
                    Class['schedule']=HTMLDecode(Class['schedule']);
                    Class['venue']=HTMLDecode(Class['venue']);
                    Class['description']=HTMLDecode(Class['description']);

                    options={
                        title: Class['title'].length >20 ? Class['title'].substring(0,20)+'...' : Class['title'] ,
                        stepcontent: "\
                        <div class='row'>\
                            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Course Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='col-lg-4 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='sub-title'>Title:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control CourseTitle' onchange='CourseNameChanged(this);' placeholder='enter Title'/>\
                                            </div>\
                                            <div class='sub-title'>Link address:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control CourseLink' placeholder='http://' />\
                                            </div>\
                                            <div class='sub-title'>Season:</div>\
                                            <div class='text-indent'>\
                                                <select class='form-control CourseSeason'>\
                                                </select>\
                                            </div>\
                                        </div>\
                                        <div class='col-lg-8 col-md-6 col-sm-12 col-xs-12'>\
                                            <div class='row'>\
                                                <div class='col-lg-6'>\
                                                    <div class='sub-title'>schedule:</div>\
                                                    <div class='text-indent'>\
                                                        <input type='text' class='form-control CourseSchedule' />\
                                                    </div>\
                                                </div>\
                                                <div class='col-lg-6'>\
                                                    <div class='sub-title'>Venue:</div>\
                                                    <div class='text-indent'>\
                                                        <input type='text' class='form-control CourseVenue' />\
                                                    </div>\
                                                </div>\
                                            </div>\
                                            <div class='row'>\
                                                <div class='col-lg-12'>\
                                                    <div class='sub-title'>Description: </div>\
                                                    <textarea class='CourseDescription TempTinyMCE'></textarea>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>",
                        addcallback: function(){
                            tinymce.init({ selector:'.TempTinyMCE' }); // to turn the Newly-appended textarea to a 'tinymce' plugin
                            $("div[role=tabpanel]:last .TempTinyMCE").removeClass('TempTinyMCE'); // so as to NOT initialize the same textarea any more than once

                            for( var sitem in Seasons){
                                $("#CourseStep div[role=tabpanel]:last select").append("<option value='"+sitem+"' >"+HTMLDecode(Seasons[sitem])+"</option>");
                            }

                            $.data($("#CourseStep .tab-content div[role=tabpanel]:last")[0], 'class-no', item );
                        },
                        removecallback: function(tab){
                            if($.data(tab[0],'class-no'))
                                ClassToDelete.push($.data(tab[0],'class-no'));
                        }
                    };

                    $("#CourseStep").BurgundyStep("add",options);

                    $("#CourseStep div[role=tabpanel]:last select option").each(function(){
                        if($(this).val()==Class['seasonno']) $(this).prop("selected","true");
                    });

                    $("#CourseStep div[role=tabpanel]:last .CourseTitle").val(Class['title']);
                    $("#CourseStep div[role=tabpanel]:last .CourseLink").val(Class['link']);
                    $("#CourseStep div[role=tabpanel]:last .CourseSchedule").val(Class['schedule']);
                    $("#CourseStep div[role=tabpanel]:last .CourseVenue").val(Class['venue']);
                    $("#CourseStep div[role=tabpanel]:last .CourseDescription").val( (Class['description']!=null)? Class['description'] : '' );


                }
            });
            


            $("#SaveSeasonsBtn").click(function(){
                var list=[];
                $("#seasons tbody tr").each(function(){
                    var RowObj=new Object();
                    RowObj.seasonno=-1;
                    if($.data($(this)[0], "season-no")){
                        RowObj.seasonno=$.data($(this)[0], "season-no");
                    }
                    RowObj.title=HTMLCode($(this).find("input[type=text]").val());

                    list.push(RowObj);
                });

                $.ajax({
                    url: "../webservices/saveseason.php",
                    data: {
                        seasonjson: JSON.stringify(list),
                        deletejson: JSON.stringify(ToDelete)
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Seasons Successfully Saved !");
                            var TopicNumbers=$.parseJSON( data.substring(5) );
                            var i=0;
                            $("#seasons tbody tr").each(function(){
                                if(!$.data($(this)[0], 'season-no')){
                                    $.data($(this)[0], 'season-no', TopicNumbers[i++])
                                }
                            });
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

            $("#SaveCoursesBtn").click(function(){
                var jsonObj=[];
                tinymce.triggerSave();
                $("#CourseStep .tab-content div[role=tabpanel]").each(function(){

                    var Obj=new Object();

                    Obj.classno= $.data($(this)[0], 'class-no')? $.data($(this)[0], 'class-no') : -1;

                    Obj.title= HTMLCode($(this).find(".CourseTitle").val());
                    Obj.link= HTMLCode($(this).find(".CourseLink").val());
                    Obj.season= HTMLCode($(this).find(".CourseSeason").val());
                    Obj.schedule= HTMLCode($(this).find(".CourseSchedule").val());
                    Obj.venue= HTMLCode($(this).find(".CourseVenue").val());
                    Obj.description= HTMLCode($(this).find("textarea.CourseDescription").val());

                    jsonObj.push(Obj);
                });

                var json=JSON.stringify(jsonObj);

                var deletejson=JSON.stringify(ClassToDelete);
                
                $.ajax({
                    url: "../webservices/saveclass.php",
                    data: {
                        classjson: json,
                        deletejson: deletejson
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Courses Successfully Saved !");
                            var ClassNumbers=$.parseJSON( data.substring(5) );
                            var i=0;
                            $("#CourseStep .tab-content div[role=tabpanel]").each(function(){
                                if(!$.data($(this)[0],'class-no')){
                                    $.data($(this)[0],'class-no',ClassNumbers[i++]);
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
