$(document).ready(function(e) {
    
$('#rdiv').mouseout(function(){
	$('#rdiv1').hide();
	});
$('#rdiv').mouseover(function(){
	$('#rdiv1').show();
	});


});
// if ($('body').width() > 900) {
//	$('<link rel="stylesheet" href="wide.css" type="text/css" />')
//	.appendTo('head');
//	} else {
//	$('link[href=wide.css]').remove();
//	}