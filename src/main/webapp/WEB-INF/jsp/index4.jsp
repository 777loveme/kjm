<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- jQuery  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <!-- bootstrap JS -->
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    
    <!-- bootstrap CSS -->
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    
 
 
</head>
 

<script>
$(document).ready(function() 
{
	$.getJSON('http://localhost:8080/json', function(data)
	{ 

		var j =0;
		var coinAry = new Array();
		var trData;
		
		for( var key in data ) 
		{
		  console.log( key + '======= ========>' + data[key] );
		  coinAry[j] = key.toString() ;
		  j++;
		// console.log( "for key coinAry   : "  +  coinAry[j] + "   " +  key.toString()  + ",   "  + j );
 
		
		
		 $("#coin_table").append("<tr>"+
                            "<td>"+ key.toString() +"</td></tr>");//treeData.append  
         }
         
         

         
         
          console.log( key + '======= ========>' + coinAry[0] );
		
		
		

	});
});



</script>

<body>

<table id="coin_table"  border="11">


</table>

</body>


</html>