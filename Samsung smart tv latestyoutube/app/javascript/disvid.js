
var videosnum=1;
var count =1;
function loadVideo(playerUrl, autoplay) {
  swfobject.embedSWF(
      playerUrl + '&rel=1&border=2&fs=1&autoplay=' + 
      (autoplay?1:0), 'player', '350', '150', '9.0.0', false, 
      false, {allowfullscreen: 'true'});
}

  var valx = new Array();
function showMyVideos2(data) {
  var feed = data.feed;
  var entries = feed.entry || [];
  var html = ['<ul class="videos">'];
  for (var i = videosnum ; i < entries.length ; i++) {
  var pp=0;
    var entry = entries[i];

    var title = entry.title.$t.substr(0, 20);
    var thumbnailUrl = entries[i].media$group.media$thumbnail[0].url;
    var playerUrl = entries[i].media$group.media$content[0].url;	
valx = data.feed.entry[i].id.$t.split('/').reverse()[0];

    html.push('<li onclick="loadVideo(\'', playerUrl, '\', true)">',
              '<center><span>', title, '</span>... <img src="', thumbnailUrl, '" width="100" height="100" id="'+valx+'" />', '<center><br><br><br></li>');

 }
  html.push('</ul><br style="clear: left;"/><br><br><br>');
  
  document.getElementById('videos2').innerHTML = html.join('');
  
  if (entries.length > 0) {

 loadVideo(entries[0].media$group.media$content[0].url, false);  

 }
  animate();
//iddd();
cll();
mus();
}

function mus(){	
$('.videos li img').mouseover( function(){ 
var xid =$('.videos li img').attr('id');
//alert(xid);
}  )
}

var idco=1;

function iddd(){
$('.videos li').each(function() {
$(this).attr('id','q'+idco);
        idco++;
    });
}

function cll(){
	
$('.videos li img').mouseover(function(){
//	alert("inside In")

		$(this).css("border-style","solid");
		$(this).css("background-color","#66F");
				$(this).css("border-color","#F00");
$(this).animate({marginLeft:'50px'},2000);	
$(this).animate({marginLeft:'-50px'},2000);	
$(this).animate({marginLeft:'0px'},2000);	
		
}); 

}





function animate() {
    $('.videos li').animate({marginLeft:'50px'},2000);	
	$('.videos li').animate({marginLeft :'-50px'},2000);
	$('.videos li').animate({marginLeft:'0px'},2000);	
	videosnum=videosnum+1;	
    
}




function searchClicked1()

        {
var y=10;
 var str =document.getElementById("t1").value;
 alert(str);
 str="honey singh";
//	document.getElementById("videoResultsDiv").innerHTML = 'Loading YouTube videos ...';
            //create a JavaScript element that returns our JSON data.
            var script = document.createElement('script');
            script.setAttribute('id', 'jsonScript');
            script.setAttribute('type', 'text/javascript');
            script.setAttribute('src', 'http://gdata.youtube.com/feeds/' + 
                   'videos?vq='+str+'&key=AI39si7F82k6jLh_BTOZzFeL9O7tzgxKvYLgqg_uFBCUJuolHSkQpnHMwARDQBVIIUWW71in1BvnmwpCfyVKDnEh5sikNyOyJw'+'&start-index='+videosnum+'&max-results=40&' + 
                   'alt=json-in-script&callback=showMyVideos2&' + 
                   'orderby=relevance&sortorder=descending&format=5&fmt=18');
            document.documentElement.firstChild.appendChild(script);
        }
var x=1;
function inc(){

x=x+10;
alert(x);
 
 
 
 
 var str =document.getElementById("t1").value;
 alert(str);
//	document.getElementById("videoResultsDiv").innerHTML = 'Loading YouTube videos ...';
            //create a JavaScript element that returns our JSON data.
            var script = document.createElement('script');
            script.setAttribute('id', 'jsonScript');
            script.setAttribute('type', 'text/javascript');
            script.setAttribute('src', 'http://gdata.youtube.com/feeds/' + 
                   'videos?vq='+str+'&key=AI39si7F82k6jLh_BTOZzFeL9O7tzgxKvYLgqg_uFBCUJuolHSkQpnHMwARDQBVIIUWW71in1BvnmwpCfyVKDnEh5sikNyOyJw'+'&start-index='+x+'&max-results=90&' + 
                   'alt=json-in-script&callback=showMyVideos2&' + 
                   'orderby=relevance&sortorder=descending&format=5&fmt=18');
            document.documentElement.firstChild.appendChild(script);
}
function callme(){
var str= document.getElementById('t1').value;
alert(str);
}