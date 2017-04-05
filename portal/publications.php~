<?php
    $page_id="publications";
    include("../webservices/everypage_technical_header.php");
    /* A-Checks if user is logged in
    B- Fetches websiteno & profile_pic_add*/

?>
<!DOCTYPE html>
<html>

<head>
    <title>IASBS Personal Page Publisher</title>
    
    <?php require_once("../websiteelements/html_head.html"); /* all CSS libraries Neccessary for this page*/ ?>

    <link rel="stylesheet" type="text/css" href="../lib/plugins/tagsinput/bootstrap-tagsinput.css">

</head>

<body class="flat-red">
    <div class="app-container">
        <div class="row content-container">
            
            <?php /* the Top Panel */
                $title="Publications";
                $act_deact=true;
                $page_id="publications";
                /*Values Used in toppanel.php*/
                require_once("../websiteelements/toppanel.php");
            ?>

            <?php /* the Left-side Menu */
                $page="publications.php";//already done in the above section tho just a safety net
                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
                require_once("../websiteelements/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
            ?>
            
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">
                            <div  id ='PageTitle'></div>
                        </span>
                        <div class="description">This is the Page Title appearing on the Menu</div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Page Content</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="SavePageHeadingBtn" title="Change Profile Pic" class="btn btn-default">Save</button>
                                        </div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <div class="sub-title">Page Heading Text:</div>
                                            <div>
                                                <input id="PageHeading" type="text" class="form-control" placeholder="enter a Heading for the page"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <div class="sub-title">Page Sub-Heading (appears smaller than heading):</div>
                                            <div>
                                                <input id="PageSubHeading" type="text" class="form-control" placeholder="enter a Sub-Heading for the page" value="<?php echo $page_data['subheading']; ?>"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Categories</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button id="CategoriesSaveBtn" title="Change Profile Pic" class="btn btn-default">Save</button>
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



        <!-- Javascript Libs -->
        <?php require_once("../websiteelements/scripts.html"); ?>
        
        <script src="../lib/plugins/tagsinput/bootstrap-tagsinput.js"></script>
        <script src="../lib/plugins/burgundyinput/burgundyinput.js"></script>
        <script src="../lib/plugins/burgundystep/burgundystep.js"></script>
        <!-- Javascript -->
        <script>tinymce.init({ selector:'textarea' });</script>
        <script type="text/javascript">



        	$("#PageHeading").val(HTMLDecode("<?php echo $page_data['heading']; ?>"));
        	$("#PageSubHeading").val(HTMLDecode("<?php echo $page_data['subheading']; ?>"));

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



        	var CategoriesToDelete=[];
        	var SubCategoriesToDelete=[];
        	var PubsToDelete=[];


            $("#CategoryStep").BurgundyStep({
                title: "Category",
                stepcontent: "\
                        <div class='row'>\
                            <div class='col-lg-3 col-md-3 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Category Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='sub-title'>Title:</div>\
                                        <div class='text-indent'>\
                                            <input type='text' class='form-control CategoryTitle' onchange='CategoryNameChanged(this);' placeholder='enter Category Title' />\
                                        </div>\
                                        <div class='sub-title'>Sub-Categories</div>\
                                        <div class='text-indent'>\
                                            <input type='text' value='' class='form-control' onchange='SubCategoriesChanged(this);' data-role='tagsinput' placeholder='enter Sub-Categories'/>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                            <div class='col-lg-9 col-md-9 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Publications List:</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body'>\
                                        <div class='inputlist_nocateg'></div>\
                                        <div class='AllPanels'></div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>",
                addcallback: function(){


                    $("input[data-role=tagsinput]").tagsinput({
                    	ConfirmRemove: true,
                    	addcallback:function(el,title){
                    		$.data( el.parent().closest('div[role=tabpanel]').find('.AllPanels .inputlist:last')[0], 'sub-category-title', title );
                    	}
                    });//to make TagsInput happen

                    $(".inputlist_nocateg").BurgundyInput({
                    		title: "Under No Sub-Category",
                    		color:"default",
                    		fields: ['Title','Download Link'],
                    		draganddropcallback: function(row1,row2){
			                    var t=null;
			                    if($.data(row1[0], 'pub-no'))
			                        t=$.data(row1[0],'pub-no');
			                    if($.data(row2[0],'pub-no'))
			                        $.data(row1[0],'pub-no', $.data(row2[0],'pub-no'));
			                    else
			                        $.data(row1[0],'pub-no', null);

			                    $.data(row2[0],'pub-no',t);
			                },
                    		removecallback: function(row){
                    			if($.data(row[0],'pub-no'))
                    				PubsToDelete.push($.data(row[0],'pub-no'));
                    		}
                    	});
                },
                removecallback: function(tab){
                	if($.data( tab[0], 'category-no'))
                		CategoriesToDelete.push($.data( tab[0], 'category-no'));
                }
            });
            
            function CategoryNameChanged(p){
                var str= $(p).val();
                if(str.length>20) str= str.substring(0,20) + "...";
                $('#'+$(p).closest("div[role=tabpanel]").attr('id')+"-tab").find("div.title").html(str);
            }

            function SubCategoriesChanged(p){
                var CatList=$(p).val().split(',');
                $(p).closest(".tab-pane").find(".AllPanels").children(".inputlist").each(function(){
                    var i=CatList.indexOf($.data(this,"plugin_BurgundyInput").options.title);
                    if(i==-1){
                    	if($.data( $(this)[0], 'sub-category-no' ))
                    		SubCategoriesToDelete.push($.data( $(this)[0], 'sub-category-no' ));
                        $(this).remove();
                    }
                    else
                        CatList.splice(i,1);
                });
                // if catlist is not empty then
                CatList.forEach(function(me){
                    if(me=='')return;//when the CatList array is empty, there's an empty string in the first array slot => we're trying to avoid that
                    var NewCat="<div class='inputlist' style='display:none;' ></div>";
                    $(p).closest(".tab-pane").find(".AllPanels").append(NewCat);
                    $(p).closest(".tab-pane").find(".AllPanels .inputlist:last").fadeIn();
                    $(".inputlist").BurgundyInput({
                    		title: me,
                    		color:"success",
                    		fields: ['Title','Download Link'],
                    		draganddropcallback: function(row1,row2){
			                    var t=null;
			                    if($.data(row1[0], 'pub-no'))
			                        t=$.data(row1[0],'pub-no');
			                    if($.data(row2[0],'pub-no'))
			                        $.data(row1[0],'pub-no', $.data(row2[0],'pub-no'));
			                    else
			                        $.data(row1[0],'pub-no', null);

			                    $.data(row2[0],'pub-no',t);
			                },
                    		removecallback: function(row){
                    			if($.data(row[0],'pub-no'))
                    				PubsToDelete.push($.data(row[0],'pub-no'));
                    		}
                    	});
                });
            }

            function isArray(element) {
                return element.constructor == Array;
            }

            function isObject(element) {
                return element.constructor == Object;
            }
            
            function isIterable(element) {
                return isArray(element) || isObject(element);
            }

            '<?php require_once("../webservices/getpublications.json.php"); ?>';
            
            var data= $.parseJSON('<?php echo $webservice_output; ?>') ;

            for ( var categ in data){
                var categno=categ;
                var categtitle= HTMLDecode(data[categ]['title']);
                var categcontent= data[categ]['content'];
                var categ_nosub_pub= data[categ]['undernosubcategory'];

                var options={
                    title: categtitle.length >20 ? categtitle.substring(0,20)+'...' : categtitle ,
                    stepcontent: "\
                        <div class='row'>\
                            <div class='col-lg-3 col-md-3 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title'>Category Info</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body' style='padding-top:0px;'>\
                                        <div class='sub-title'>Title:</div>\
                                        <div class='text-indent'>\
                                            <input type='text' class='form-control CategoryTitle' onchange='CategoryNameChanged(this);' placeholder='enter Category Title' />\
                                        </div>\
                                        <div class='sub-title'>Sub-Categories</div>\
                                        <div class='text-indent'>\
                                            <input type='text' value='' class='form-control CURRENT' onchange='SubCategoriesChanged(this);' data-role='tagsinput' placeholder='enter Sub-Categories' value='' />\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                            <div class='col-lg-9 col-md-9 col-sm-12 col-xs-12'>\
                                <div class='card'>\
                                    <div class='card-header'>\
                                        <div class='card-title'>\
                                            <div class='title hadi'>Publications List:</div>\
                                        </div>\
                                    </div>\
                                    <div class='card-body'>\
                                        <div class='inputlist_nocateg'></div>\
                                        <div class='AllPanels'></div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>"
                };
                $("#CategoryStep").BurgundyStep("add", options);

                $thisTab=$("#CategoryStep div[role=tabpanel]:last");

                $("#CategoryStep div[role=tabpanel]:last .CategoryTitle").val(categtitle);

                $.data($thisTab[0] , "category-no", categno );



                if(isIterable(categ_nosub_pub)){
                    for( var pub in categ_nosub_pub ){
                        var pubno=pub;
                        var pubtitle= HTMLDecode(categ_nosub_pub[pub]['title']);
                        var publink= HTMLDecode(categ_nosub_pub[pub]['link']);

                        var thisPub=$thisTab.find(".inputlist_nocateg").BurgundyInput("add",{values: [ pubtitle ,publink]});

                        var Row=thisPub.find("tbody tr:last");
                        $.data( Row[0] , 'pub-no', pubno);
                    }
                }

                var subcateglist="";
                var subcategnolist=[];
                if(isIterable(categcontent)){
                    for( var subcateg in categcontent){
                        var subcategno=subcateg;
                        var subcategtitle= HTMLDecode(categcontent[subcateg]['title']);
                        var subcategcontent= categcontent[subcateg]['content'];

                        $thisTab.find("input[data-role=tagsinput]").tagsinput('add',subcategtitle);

                        var thisSubCateg=$thisTab.find(".AllPanels div.inputlist:last");
                        $.data( thisSubCateg[0] , "sub-category-no", subcategno );
                        $.data( thisSubCateg[0] , 'sub-category-title', subcategtitle);

                        subcateglist+=subcategtitle+",";
                        subcategnolist.push(subcategno);
                        if(isIterable(subcategcontent)){
                            for( var pub in subcategcontent){
                                var pubno=pub;
                                var pubtitle= HTMLDecode(subcategcontent[pub]['title']);
                                var publink = HTMLDecode(subcategcontent[pub]['link']);
                                
                                thisSubCateg.BurgundyInput("add",{values: [ pubtitle ,publink]});
                                var thisPub=thisSubCateg.find("tr:last");

                                $.data( thisPub[0] , 'pub-no', pubno);
                            }
                        }
                    }
                }
            }



            $("#SavePageHeadingBtn").click(function(){
                var pageid="<?php echo $page_id; ?>";
                var heading=HTMLCode($("#PageHeading").val());
                var subheading=HTMLCode($("#PageSubHeading").val());

                $.ajax({
                    url: "../webservices/savepageheading.php",
                    data: {
                    	"pageid": pageid,
                    	"heading": heading,
                    	"subheading": subheading
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase()=='right'){
                            Success("Page Heading Info was Successfully Saved !");
                        }else{
                            Failure(data);
                        }
                    }
                });
            });

            $("#CategoriesSaveBtn").click(function(){
                var Output=[];
                $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){
                    var Category=new Object();

                    /******* Category Info [BEGIN] *******/
                    Category.category_no=-1;
                    if($.data( $(this)[0], 'category-no' )) Category.category_no=$.data( $(this)[0], 'category-no' );
                    Category.title=HTMLCode($(this).find("input[type=text].CategoryTitle").val());
                    /******* Category Info [ END ] *******/

                    /******* Category UnderNoSubCategories Papers [BEGIN] *******/
                    Category.undernosubcategory=[];
                    $(this).find(".inputlist_nocateg tbody tr").each(function(){
                        var Pub=new Object();
                        Pub.pubno=-1;
                        if( $.data( $(this)[0],'pub-no' ) ) Pub.pubno=$.data( $(this)[0],'pub-no' );
                        Pub.title=HTMLCode($(this).find("input[type=text]:first").val());
                        Pub.link=HTMLCode($(this).find("input[type=text]:last").val());

                        Category.undernosubcategory.push(Pub);
                    });
                    /******* Category UnderNoSubCategories Papers [ END ] *******/

                    Category.subcategories=[];
                    /******* Category Sub-Categories [BEGIN] *******/
                    $(this).find(".AllPanels .inputlist").each(function(){
                        var SubCategory=new Object();
                        SubCategory.subcategoryno=-1;
                        if( $.data( $(this)[0], 'sub-category-no' ) ) SubCategory.subcategoryno=$.data( $(this)[0], 'sub-category-no' );
                        SubCategory.title=HTMLCode($.data( $(this)[0] , 'sub-category-title'));
                        SubCategory.pubs=[];
                        
                        /******* Category Sub-Categories [BEGIN] *******/
                        $(this).find("tbody tr").each(function(){
                            var Pub=new Object();
                            Pub.pubno=-1;
                            if( $.data( $(this)[0],'pub-no' ) ) Pub.pubno=$.data( $(this)[0],'pub-no' );
                            Pub.title=HTMLCode($(this).find("input[type=text]:first").val());
                            Pub.link=HTMLCode($(this).find("input[type=text]:last").val());

                            SubCategory.pubs.push(Pub);
                        });
                        /******* Category Sub-Categories [ END ] *******/
                        Category.subcategories.push(SubCategory);
                    });
                    /******* Category Sub-Categories [ END ] *******/

                    Output.push(Category);
                });

                var a=JSON.stringify(Output);
                var b=JSON.stringify(CategoriesToDelete);
                var c=JSON.stringify(SubCategoriesToDelete);
                var d=JSON.stringify(PubsToDelete);

                $.ajax({
                    url: "../webservices/savepublications.php",
                    data:{
                        json: a,
                        categoriestodelete: b,
                        subcategoriestodelete: c,
                        pubstodelete: d
                    },
                    method: "POST",
                    success: function(data){
                        if(data.toLowerCase().substring(0,5)=='right'){
                            Success("Publications Successfully Saved !");

                            var json= $.parseJSON(data.substring(5));

                            var category_numbers=json['newcategory_numbers'];
                            var subcategory_numbers=json['newsubcategory_numbers'];
                            var pub_numbers=json['newpub_numbers'];

                            var i=0;
                            var j=0;
                            var k=0;

                            $("#CategoryStep .tab-content div[role=tabpanel]").each(function(){

                                if(!$.data($(this)[0], 'category-no')){
                                    $.data($(this)[0], 'category-no', category_numbers[i++]);
                                }
                                
                                $(this).find(".inputlist_nocateg tbody tr").each(function(){
                                    if( !$.data( $(this)[0],'pub-no' ) ){
                                        $.data( $(this)[0],'pub-no', pub_numbers[k++] );
                                    }
                                });

                                $(this).find(".AllPanels .inputlist").each(function(){

                                    if( !$.data( $(this)[0], 'sub-category-no' ) ){
                                        $.data( $(this)[0], 'sub-category-no', subcategory_numbers[j++] );
                                    }

                                    $(this).find("tbody tr").each(function(){
                                        if( !$.data( $(this)[0],'pub-no' ) ){
                                            $.data( $(this)[0],'pub-no', pub_numbers[k++] );
                                        }
                                    });
                                });
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

