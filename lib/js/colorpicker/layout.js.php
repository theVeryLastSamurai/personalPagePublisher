<?php
	$color=array();
	$color[0]=$_REQUEST['color0'];
	$color[1]=$_REQUEST['color1'];

echo "
(function($){
	var initLayout = function() {
		
		var widt1 = false;
		$('#colorpickerHolder1').ColorPicker({
			flat: true,
			color: '#".$color[0]."',
			onSubmit: function(hsb, hex, rgb) {
				$('#colorSelector1 div').css('backgroundColor', '#' + hex);
				$('#colorpickerHolder1').fadeOut(500);
				widt1=!widt1;
			}
		});
		$('#colorpickerHolder1>div').css('position', 'absolute');
		
		$('#colorSelector1').bind('click', function() {
			if(widt1)$('#colorpickerHolder1').stop().fadeOut(500);//added by hadi
			else {
				$('#colorpickerHolder1').stop().css({height:173});//added by hadi
				$('#colorpickerHolder1').stop().fadeIn(500);//added by hadi
			}
			//$('#colorpickerHolder1').stop().animate({height: widt1 ? 0 : 173}, 500);//removed by hadi
			widt1 = !widt1;
		});

		//*******************************

		var widt2 = false;
		$('#colorpickerHolder2').ColorPicker({
			flat: true,
			color: '#".$color[1]."',
			onSubmit: function(hsb, hex, rgb) {
				$('#colorSelector2 div').css('backgroundColor', '#' + hex);
				$('#colorpickerHolder2').fadeOut(500);
				widt2=!widt2;
			}
		});
		$('#colorpickerHolder2>div').css('position', 'absolute');
		
		$('#colorSelector2').bind('click', function() {
			if(widt2)$('#colorpickerHolder2').stop().fadeOut(500);//added by hadi
			else {
				$('#colorpickerHolder2').stop().css({height:173});//added by hadi
				$('#colorpickerHolder2').stop().fadeIn(500);//added by hadi
			}
			//$('#colorpickerHolder2').stop().animate({height: widt2 ? 0 : 173}, 500);//removed by hadi
			widt2 = !widt2;
		});
	};
	
	EYE.register(initLayout, 'init');
})(jQuery)";

?>