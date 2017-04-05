<?php
	session_start();
	echo "
	<script type='text/javascript'>
		var PAGE='".$_REQUEST['redirect']."';
	</script>";
?>
<script type="text/javascript" src="../lib/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
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

      	Check1=new CheckObj(3);


	$.ajax({
		url: '../preview/style.css.php',
		success: function(src){
		$.ajax({
			url: '../preview/compilestyle.php',
			data: {'src': src},
			method: 'POST',
			success: function(res){
				if(res.toLowerCase()=='right'){
					console.log('style compiled successfully');
				}
				else
					console.log('style did NOT compile');
	    		},
			failure: function(d){
					console.log('style did NOT compile [ ajax error ]');
			}
		});
		},
		failure: function(d){
					console.log('style did NOT compile [ ajax error #2 ]');
		}
	}).done(function() {
		//Check1.check();
		console.log('style compilation done');
	});


	$.ajax({
		url: '../preview/copyimages.php',
		success: function(data){
			if(data.toLowerCase()=='right'){
				console.log('header and user images copied successfully');
			}else{
				console.log('header and user images did not copy');
			}
		},
		failure: function(data){
			console.log('header and user images did not copy [ ajax error ]');
		}
	}).done(function(){
		console.log('done copying header and user images');
	});

	$.ajax({
		url: '../preview/copypeopleimages.php',
		success: function(data){
			if(data.toLowerCase()=='right'){
				console.log('people images copied successfully');
			}else{
				console.log('people images did not copy');
			}
		},
		failure: function(data){
				console.log('people images did not copy [ ajax error]');
		}
	}).done(function() {
		//Check1.check();
		console.log('done copying people images');
	});

	$.ajax({
                url: "../preview/copyresearchimages.php",
                success: function(data){
                    if(data.toLowerCase()=='right'){
		                console.log("Research images copied successfully");
                    }else{
		                console.log("Research images did not copy");
                    }
                },
                failure: function(data){
	                console.log("Research images did not copy [ ajax error ]");
                }
            }).done(function() {
            	//Check1.check();
		console.log("Done copying Research images");
            });



	window.location='../preview/'+PAGE;
});
</script>
