<!DOCTYPE html>
<html>

<head>
    <title>IASBS Personal Page Publisher</title>
    
    <?php
    	require_once("adminwebservices/technical_header.php");
    	require_once("../websiteelements/html_head.html"); /* all CSS libraries Neccessary for this page*/

    	$title="Administrator - Manage <strong>Administrators</strong>";
		$SuperUserFlag=(isset($_SESSION['IsSuperUser']) && $_SESSION['IsSuperUser'])? true : false;

    ?>
    
</head>

<body class="flat-red">
    <div class="app-container">
        <div class="row content-container">
			<nav class='navbar navbar-default navbar-fixed-top navbar-top'>
		        <div class='container-fluid'>
		            <div class='navbar-header'>
		                <button type='button' class="navbar-expand-toggle">
		                    <i class='fa fa-bars icon'></i>
		                </button>
		                <ol class='breadcrumb navbar-breadcrumb'>
		                    <li class='active'><?php echo $title; ?></li>
		                </ol>
		                <button type='button' class='navbar-right-expand-toggle pull-right visible-xs'>
		                    <i class='fa fa-th icon'></i>
		                </button>
		            </div>
		            <ul class='nav navbar-nav navbar-right'>
		                <button type='button' class='navbar-right-expand-toggle pull-right visible-xs'>
		                    <i class='fa fa-times icon'></i>
		                </button>
		                <li class='dropdown profile'>
		                    <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false'><?php echo $_SESSION['AdminLoggedIn']; ?><span class='caret'></span></a>
		                    <ul class='dropdown-menu animated fadeInDown'>
		                        <li>
		                            <div class='profile-info'>
		                                <h4 class='username'><?php echo $_SESSION['AdminLoggedIn']; ?></h4>
		                                <p><?php echo $_SESSION['AdminLoggedIn']; ?>@iasbs.ac.ir</p>
		                                <div class='btn-group margin-bottom-2x' role='group'>
		                                    <button type='button' class='btn btn-default' data-toggle='modal' data-target='#modallogout' ><i class='fa fa-sign-out'></i> Logout</button>
		                                </div>
		                            </div>
		                        </li>
		                    </ul>
		                </li>
		            </ul>
		        </div>
		        <div id='SuccessAlert' class='alert alert-success' role='alert' style='margin-bottom:0;display:none;'>
		            <button type='button' class='close' aria-label='Close' onclick='CloseAlert(this);'><span aria-hidden='true'>&times;</span></button>
		            <span class='content'></span>
		        </div>
		        <div id='FailureAlert' class='alert alert-danger' role='alert' style='margin-bottom:0;display:none;'>
		            <button type='button' class='close' aria-label='Close' onclick='CloseAlert(this);'><span aria-hidden='true'>&times;</span></button>
		            <span class='content'></span>
		        </div>
		    </nav>

            <?php /* the Left-side Menu */
            	if($SuperUserFlag){
	                $page="admin2.php";//already done in the above section tho just a safety net
	                /* Possible Values for $page : { index.php, homepage.php, research.php, publications.php, teachings.php, people.php, contactme.php } */
	                require_once("adminwebservices/menu.php");/* Also Creates the LogOut Modal alongside its javascript script ,alongside the Activation/Deactivation Plugin */
	            }else{
                    return;//access denied
	            	echo "
	            		<style>
	            			.app-container .content-container .navbar,
					        .app-container.expanded .content-container .navbar{
					        	padding-left: 0;
					        }
					        
					        .app-container .content-container .side-body,
					        .app-container.expanded .content-container .side-body{
					        	margin-left: 0;
					        }
	            		</style>
	            	";
	            }
            ?>

            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body padding-top">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">All Admins ( <strong>Excluding</strong> SuperAdmins)</div>
                                    </div>
                                    <div class="pull-right card-action">

                                        <button title="Delete Selected Admin(s)" class="btn btn-danger disabled GroupBtn" disabled data-toggle="modal" data-target="#ModalDeleteUser" onclick="RefreshList();">
                                            <i class="glyphicon glyphicon-minus"></i>
                                        </button>

                                        <button title="Add an Admin" class="btn btn-success" data-toggle='modal' data-target="#ModalAddUser" onclick="RefreshList();">
                                            <i class="glyphicon glyphicon-plus"></i>
                                        </button>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body">
                                    <table id="Table" class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Select</th>
                                                <th>Username</th>                                                
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Select</th>
                                                <th>Username</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                        <?php
                                        	$query="SELECT * FROM `admin` WHERE `admin`.`issuper` = 0 ;";
											$result=$conn->query($query);

											for($i=0; $i<$result->num_rows ;$i++){
												$row=$result->fetch_assoc();
												echo "
													<tr>
														<td><input type='checkbox' class='form-control UserCheckbox' data-username='".$row['username']."' /></td>
														<td class='Username' >".$row['username']."</td>
													</tr>
													";

											}
										?>
                                        </tbody>
                                    </table>
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


        <!-- Add Modal -->
        <div class='modal fade modal-success' id='ModalAddUser' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class='modal-header'>
                        <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                        <h4 class='modal-title' id='myModalLabel'>Add New Admin<small class="ErrorBox" style="color:red;margin-left: 10px;"></small></h4>
                    </div>
                    <div class='modal-body'>
                        <div class='sub-title'>Enter Admin Info:</div>
                        <br/>
                        <input type="text" class="username form-control" placeholder="Username:" />
                        <input type="password" class="password form-control" placeholder="Password:" />
                        <input type="password" class="password2 form-control" placeholder="Repeat Password:" />
                    </div>
                    <div class='modal-footer'>
                        <button type='button' class='btn btn-default' data-dismiss='modal'>Cancel</button>
                        <a id='AddUser' href='#' type='button' class='btn btn-success'  >Add</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Delete Modal -->
        <div class='modal fade modal-danger' id='ModalDeleteUser' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class='modal-header'>
                        <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                        <h4 class='modal-title' id='myModalLabel'>Delete Admin<small class="ErrorBox" style="color:red;margin-left: 10px;"></small></h4>
                    </div>
                    <div class='modal-body'>
                        Are You Sure You Want to Delete below Admin(s) ?
                        <table class="table table-striped">
                        	<thead>
                        		<td><strong>Username</strong></td>
                        	</thead>
                        	<tbody class="GroupList" >
                        	</tbody>
                        </table>
                    </div>
                    <div class='modal-footer'>
                        <button type='button' class='btn btn-default' data-dismiss='modal'>Cancel</button>
                        <a href='#' id='DeleteUser' type='button' class='btn btn-danger' >Delete</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- Log Out Modal -->
        <div class='modal fade modal-danger' id='modallogout' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class='modal-header'>
                        <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                        <h4 class='modal-title' id='myModalLabel'>Logout</h4>
                    </div>
                    <div class='modal-body'>
                        Are You Sure You Want to Log Out ?
                    </div>
                    <div class='modal-footer'>
                        <button type='button' class='btn btn-default' data-dismiss='modal'>Cancel</button>
                        <a href='#' onclick='LogOut();' type='button' class='btn btn-danger' >Log Out</a>
                    </div>
                </div>
            </div>
        </div>

        

        <script type='text/javascript'>

        	function Success(str){
        		$('.alert').hide();
        		$('#SuccessAlert .content').html('<strong>SUCCESS !</strong> '+str);
                $('#SuccessAlert').show();
        	}

        	function Failure(str){
        		$('.alert').hide();
        		$('#FailureAlert .content').html('<strong>FAILURE !</strong> '+str);
                $('#FailureAlert').show();
        	}

        	function CloseAlert(button){
        		$(button).closest('.alert').hide();
        	}
        	
        	function LogOut(){
                $.post( 'adminwebservices/logout.php' ,function(data){
                    if(data=='RIGHT'){
                        window.location.replace('index.html');
                    }
                    else{
                        alert('Logout Did not happen');
                    }
                });
            }

        </script>



        <script type="text/javascript" src="../lib/js/jquery.min.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/colorpicker.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/eye.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/utils.js"></script>
        <script type="text/javascript" src="../lib/js/colorpicker/layout.js.php?color0=<?php echo $color[0]; ?>&color1=<?php echo $color[1]; ?>"></script>

		<?php require_once("../websiteelements/scripts.html"); ?>
        

		<script type="text/javascript" src="../lib/js/font-awesome-list.js"></script>
        <script type="text/javascript">

        	function CounterObj(){
        		this.val=0;
        		this.CountUp=function(){
        			this.val++;
        			this.CountCallback();
        		};
        		this.CountDown=function(){
        			this.val--;
        			this.CountCallback();
        		};
        		this.CountCallback=function(){
        			if(this.val==0){
        				$("Button.GroupBtn").attr('disabled',true);
        				$("Button.GroupBtn").addClass('disabled');
        			}else{
        				$("Button.GroupBtn").attr('disabled',false);
        				$("Button.GroupBtn").removeClass('disabled');
        			}
        		};
        	}
        	Counter=new CounterObj();

        	function Enable_Disable(el){
        		if($(el).is(":checked"))
        			Counter.CountUp();
        		else
        			Counter.CountDown();
        	}

        	$("input[type=checkbox].UserCheckbox").change(function(){ Enable_Disable(this); });

            
        	$("#AddUser").click(function(){
        		

        		var AvailableFlag=false;
        		var FailFlag=false;
        		var SignupFlag=false;

				var el=this;				
				var username=$(this).closest(".modal").find(".username").val();
				var password=$(this).closest(".modal").find(".password").val();
				var password2=$(this).closest(".modal").find(".password2").val();

				if(username=="" || password=="" || password2==""){
					$(this).closest(".modal").find(".ErrorBox").html("* Don't leave a Field Empty");
        			return;
				}

        		if(password!=password2){
        			$(this).closest(".modal").find(".ErrorBox").html("* Passwords Don't Match")
        			return;
        		}

        		$.ajax({
        			url: "adminwebservices/isadminusernameavailable.php",
        			data: {
        				"username" : username
        			},
        			success: function(data){
        				if(data.toLowerCase()=='right'){
        					AvailableFlag=true;
        				}else{
        					AvailableFlag=false;
        				}
        			}
        		}).done(function(){
        			if(!AvailableFlag){
        				$(el).closest(".modal").find(".ErrorBox").html("* Username already Taken !");
        			}else{

        				$.ajax({
        					url: "adminwebservices/adminsignup.php",
        					data: {
        						"username": username,
        						"password": password
        					},
        					method: "POST",
        					success: function(data){
        						if(data.toLowerCase()=='right'){
        							SignupFlag=true;
        						}else{
        							SignupFlag=false;
        						}
        					}
        				}).done(function(){
        					if(!SignupFlag){
        						$(el).closest(".modal").find(".ErrorBox").html("* Unknown Error ! Try Again..");
        					}else{


        						var row="<tr>";
        						row+="<td><input type='checkbox' class='form-control UserCheckbox' data-username='"+username+"' /></td>";
        						row+="<td class='Username' >"+username+"</td>";
        						row+="</tr>";

        						$("#Table tbody").append(row);

        						$("input[type=checkbox].UserCheckbox").change(function(){ Enable_Disable(this); });

        						$(el).closest(".modal").find("input").val("");
    							$(el).closest(".modal").modal('toggle');
    							Success("Admin \""+username+"\" Successfully Signed Up !");
        					}
        				});
    				}
        		});
        	});

        	function RefreshList(){
                $(".ErrorBox").html("");
        		var str="";
        		$('.UserCheckbox:checked').each(function(){
        			str+="<tr>";
        			str+="<td>"+$(this).attr('data-username')+"</td>";
        			str+="</tr>";
        		});
        		$('.GroupList').html(str);
        	}


        	$("#DeleteUser").click(function(){
        		var el=this;
        		var users=[];
        		$('.UserCheckbox:checked').each(function(){
        			users.push($(this).attr('data-username'));
        		});

        		var json=JSON.stringify(users);

        		var Flag=false;
        		$.ajax({
        			url: "adminwebservices/admindelete.php",
        			data: {
        				"json": json
        			},
        			success: function(data){
        				if(data.toLowerCase()=='right')
        					Flag=true;
        				else
        					Flag=false;
        			}
        		}).done(function(){
        			if(!Flag){
						$(el).closest(".modal").find(".ErrorBox").html("* Unknown Error ! Try Again..");
					}else{

						$('.UserCheckbox:checked').closest('tr').remove();

						$(el).closest(".modal").modal('toggle');
						Success("Admin(s) Successfully Deleted !");
					}
        		});

        	});

        </script>
        
</body>

</html>
