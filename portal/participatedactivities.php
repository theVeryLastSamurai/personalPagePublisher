<?php
    $page_id="participatedactivities";
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
                $title="Participated Activities";
                $act_deact=true;
                $page_id="participatedactivities";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="participatedactivities.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>

            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">
                            <div  id ='PageTitle' ></div>
                        </span>
                        <div class="description">This is the Page Title appearing on the Menu</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"><small>Categories</small></div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SaveCategoriesBtn" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div id='categories' ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Activities</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SavePeopleBtn" class="btn btn-default">Save</button>
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

        <!--end Modal-->

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
        	var PeopleToDelete=[];
            
            $("#categories").BurgundyInput({
            	title: "Categories ( i.e. 2016, 2015 , ... )",
            	color:"default",
            	fields: ['Title'],
            	draganddropcallback: function(row1,row2){
                    var t=null;
                    if($.data(row1[0], 'pa-category-no'))
                        t=$.data(row1[0],'pa-category-no');
                    if($.data(row2[0],'pa-category-no'))
                        $.data(row1[0],'pa-category-no', $.data(row2[0],'pa-category-no'));
                    else
                        $.data(row1[0],'pa-category-no', null);

                    $.data(row2[0],'pa-category-no',t);
                },
                removecallback: function(row){
                    if(!$.data(row[0], 'pa-category-no'))
                        return;
                    ToDelete.push($.data(row[0], 'pa-category-no'));
                }
            });

            var Categories; //exploited way Below

            '<?php require_once("../webservices/getpacategories.json.php"); ?>';

            var data= $.parseJSON('<?php echo $webservice_output; ?>');
            
            Categories=data;
            for ( var categ in data ){
                var title=HTMLDecode(data[categ]);
                $("#categories").BurgundyInput("add", {values:[ title ]});
                $.data($("#categories tbody tr:last")[0], "pa-category-no" , categ);
            }
            

            $("#CategoryStep").BurgundyStep({
                title: "Activity",
                stepcontent: "\
                        <div class='row'>\
                            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Profile Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='col-xs-6'>\
                                            <div class='sub-title'>Title:</div>\
                                            <div class='text-indent'>\
                                                <input type='text' class='form-control PersonName' onchange='PersonNameChanged(this);' placeholder='enter Name' />\
                                            </div>\
                                        </div>\
                                        <div class='col-xs-6'>\
                                            <div class='sub-title'>Category:</div>\
                                            <div class='text-indent'>\
                                                <select class='form-control PersonCategory'>\
                                                </select>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Description:</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body'>\
                                        <textarea class='PersonDescription TempTinyMCE' ></textarea>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>",
                addcallback: function(){
                	tinymce.init({ selector:'.TempTinyMCE' }); // to turn the Newly-appended textarea to a 'tinymce' plugin
					$("#CategoryStep div[role=tabpanel]:last .TempTinyMCE").removeClass("TempTinyMCE");

                    for( var item in Categories){
                        $("#CategoryStep div[role=tabpanel]:last select").append("<option value='"+item+"' >"+Categories[item]+"</option>");
                    }
            	},
            	removecallback: function(tab){
                    if($.data(tab[0],'pa-no'))
                        PeopleToDelete.push($.data(tab[0],'pa-no'));
                }
            });

            function PersonNameChanged(p){
                var str= $(p).val();
                if(str.length>20) str= str.substring(0,20) + "...";
                $('#'+$(p).closest("div[role=tabpanel]").attr('id')+"-tab").find("div.title").html(str);
            }


            $.getJSON( "../webservices/getpa.json.php", function( data ) { /* Get JSON data of all publications & their categories & subcategories*/

                for ( var item in data ){
                    var person=data[item];

                    person['title']=HTMLDecode(person['title']);
                    person['pa_category_no']=HTMLDecode(person['pa_category_no']);
                    person['description']=HTMLDecode(person['description']);

                    options={
                        title: person['title'].length >20 ? person['title'].substring(0,20)+'...' : person['title'] ,
                        stepcontent: "\
                                <div class='row'>\
                                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                        <div class='card'>\
                                            <div class='card-header'>\
                                                <div class='card-title'>\
                                                    <div class='title'>Profile Info</div>\
                                                </div>\
                                            </div>\
                                            <div class='card-body' style='padding-top:0px;'>\
                                                <div class='col-xs-6'>\
                                                    <div class='sub-title'>Title:</div>\
                                                    <div class='text-indent'>\
                                                        <input type='text' class='form-control PersonName' onchange='PersonNameChanged(this);' placeholder='enter Title' />\
                                                    </div>\
                                                </div>\
                                                <div class='col-xs-6'>\
                                                    <div class='sub-title'>Category:</div>\
                                                    <div class='text-indent'>\
                                                        <select class='form-control PersonCategory'>\
                                                        </select>\
                                                    </div>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>\
                                        <div class='card'>\
                                            <div class='card-header'>\
                                                <div class='card-title'>\
                                                    <div class='title'>Description:</div>\
                                                </div>\
                                            </div>\
                                            <div class='card-body'>\
                                                <textarea class='PersonDescription TempTinyMCE' ></textarea>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                                ",
                        addcallback: function(){

                            tinymce.init({ selector:'.TempTinyMCE' }); // to turn the Newly-appended textarea to a 'tinymce' plugin
                            $("#CategoryStep div[role=tabpanel]:last .TempTinyMCE").removeClass("TempTinyMCE");

                            for( var citem in Categories){
                                $("#CategoryStep div[role=tabpanel]:last select").append("<option value='"+citem+"' >"+HTMLDecode(Categories[citem])+"</option>");
                            }

                            $.data($("#CategoryStep div[role=tabpanel]:last")[0], 'pa-no', item );
                        }
                    };

                    $("#CategoryStep").BurgundyStep("add",options);

                    $("#CategoryStep div[role=tabpanel]:last select option").each(function(){
                        if($(this).val()==person['pa_category_no']) $(this).prop("selected","true");
                    });

                    $("#CategoryStep div[role=tabpanel]:last .PersonName").val(person['title']);
                    $("#CategoryStep div[role=tabpanel]:last .PersonDescription").val(person['description']);

                }
            });


			$("#SaveCategoriesBtn").click(function(){
                var list=[];
                $("#categories tbody tr").each(function(){
                    var RowObj=new Object();
                    RowObj.pacategoryno=-1;
                    if($.data($(this)[0], "pa-category-no")){
                        RowObj.pacategoryno=$.data($(this)[0], "pa-category-no");
                    }
                    RowObj.title= HTMLCode($(this).find("input[type=text]").val());

                    list.push(RowObj);
                });
                
                $.ajax({
                    url: "../webservices/savepacategory.php",
                    data: {
                        categoryjson: JSON.stringify(list),
                        deletejson: JSON.stringify(ToDelete)
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Activities Categories Successfully Saved !");
                            var CategoryNumbers=$.parseJSON( data.substring(5) );
                            var i=0;
                            $("#categories tbody tr").each(function(){
                            	if(!$.data($(this)[0], 'pa-category-no')){
                            		$.data($(this)[0], 'pa-category-no', CategoryNumbers[i++]);
                            	}
                            });
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

            $("#SavePeopleBtn").click(function(){
                var jsonObj=[];
                tinymce.triggerSave();
                $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){

                    var Obj=new Object();

                    Obj.personno= $.data($(this)[0], 'pa-no')? $.data($(this)[0], 'pa-no') : -1;

                    Obj.name= HTMLCode($(this).find(".PersonName").val());
                    Obj.category= HTMLCode($(this).find(".PersonCategory").val());
                    Obj.description= HTMLCode($(this).find("textarea.PersonDescription").val());

                    jsonObj.push(Obj);
                });

                var json=JSON.stringify(jsonObj);

                var deletejson=JSON.stringify(PeopleToDelete);
                
                $.ajax({
                    url: "../webservices/savepa.php",
                    data: {
                        pajson: json,
                        deletejson: deletejson
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Activities Saved Successfully Saved !");

                        }else{
                            Failure(data);
                        }
                    }
                });
            });

        </script>

</body>

</html>
