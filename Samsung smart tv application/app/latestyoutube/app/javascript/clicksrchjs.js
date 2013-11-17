// JavaScript Document

function loadVideo(playerUrl, autoplay) { 
  swfobject.embedSWF( playerUrl + '&rel=1&border=1&fs=1&autoplay=' + (autoplay?1:0), 'player', '350px', '150px', '9.0.0', false,    false, {allowfullscreen: 'true'});    
}
 var x=1;
 function mostpp(){	     
 var xxs ='https://gdata.youtube.com/feeds/api/standardfeeds/IN/most_popular?time=today&alt=json-in-script&callback=showMyVideos2&start-index='+x+'&max-results=30';
vid(xxs)
	 }	 
	 
	 function vid(xxs){
		 var sttr=xxs;
		 alert("i am in vid");
		 document.getElementById("videos2").innerHTML = 'Loading YouTube videos ...';
            //create a JavaScript element that returns our JSON data.
            var script = document.createElement('script');
            script.setAttribute('id', 'jsonScript');
            script.setAttribute('type', 'text/javascript');
            script.setAttribute('src',sttr );
            document.documentElement.firstChild.appendChild(script);       
		 }
	 
 function mostrct(){     
 var xxs= 'https://gdata.youtube.com/feeds/api/standardfeeds/IN/most_recent&alt=json-in-script&callback=showMyVideos2&max-results=30';
 vid(xxs);
	 }
	 
	 
 function toprat(){	     
 var xxs='https://gdata.youtube.com/feeds/api/standardfeeds/IN/top_rated?time=today&alt=json-in-script&callback=showMyVideos2&max-results=30';
 vid(xxs);        
	 }
	 
	 
 function topfav(){
	     var xxs='https://gdata.youtube.com/feeds/api/standardfeeds/in/top_favorites?&alt=json-in-script&callback=showMyVideos2&max-results=7';
vid(xxs);        
	 }


        function searchClicked()
		
        {
			  var str =document.getElementById("t1").value;
			document.getElementById("videos2").innerHTML = 'Loading YouTube videos ...';
            //create a JavaScript element that returns our JSON data.
			
            var script = document.createElement('script');
            script.setAttribute('id', 'jsonScript');
            script.setAttribute('type', 'text/javascript');
            script.setAttribute('src', 'http://gdata.youtube.com/feeds/' + 
                   'videos?vq='+str+'&key=AI39si7F82k6jLh_BTOZzFeL9O7tzgxKvYLgqg_uFBCUJuolHSkQpnHMwARDQBVIIUWW71in1BvnmwpCfyVKDnEh5sikNyOyJw'+'&max-results=30&' + 
                   'alt=json-in-script&callback=showMyVideos2&' + 
                   'orderby=relevance&sortorder=descending&format=5&fmt=18');

            document.documentElement.firstChild.appendChild(script);
        }

        function showMyVideos(data)
        {

            var feed = data.feed;
            var entries = feed.entry || [];

			var x= entries.length;

            var html = ['<ul>'];
            for (var i = 0; i < x; i++)
            {
				 var entry = entries[i];
//	alert(entry);
    var title = entry.title.$t.substr(0, 30);
	

    var thumbnailUrl = entries[i].media$group.media$thumbnail[0].url;
	

var cate =	'<b>Category :</b>'+entries[i].media$group.media$category[0].$t+'<br/>';


    var playerUrl = entries[i].media$group.media$content[0].url+'<br/>';
	

	var s= '<b>Title :</b> ' + entry.title.$t + '<br/>';
	
	
var dur ='<b>Duration :</b> ' + '(' + entry.media$group.yt$duration.seconds + ' seconds)<br/>';

	
    html.push('<li onclick="loadVideo(\'', playerUrl, '\', true)">'
	
   + '<br>'+'<span class="titlec">',s,cate,dur,'...</span><br /><img src="',thumbnailUrl, '" width="50" height="50"/>', '</span></li>'); 		
   
            }
			 html.push('</ul><br style="clear: left;position:absolute;"/>');
			 
  document.getElementById('videos2').innerHTML = html.join('');
  
  if (entries.length > 0) {
	  
    loadVideo(entries[0].media$group.media$content[0].url, false);
	
	document.write("<br><br>");
	
        }}