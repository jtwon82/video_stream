<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 </head>
 <body>

	<div class='video'>
	</div>
	<div class='list'>
	</div>
	
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type: 'POST',
		url: '/movie/fileList',
		data: {  },
		dataType:"json",
		success: function(req) {
			var html= '';
			$(".list").append("<table>");
			$(req.list).each(function(id){
				$(".list").append('<tr><td ><a href="#" onclick="change(\''+encodeURIComponent(this)+'\')">'+this+'</a></td></tr>');
			});
			$(".list").append("</table>");
		}
	});
});
function change(src){
	console.log( src );
	var html='';
	html+='<video width="640" height="344" controls autoplay="autoplay">';
	html+='	<source src="/movie/fileName?fileName='+src+'" type="video/mp4"/>';
	html+='</video>	';
	$(".video").empty().append(html);
}
</script>
 </body>
</html>
