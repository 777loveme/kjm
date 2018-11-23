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
$(document).ready(function() {
$.getJSON('http://localhost:8080/json', function(data) { 

  console.log("11data   : " + data.responseData); 
	var html = [];
	 console.log("222222221data   : " + data);
	 console.log( data);
	 console.log("convertedPair  : " + data.BCH_BTC.bitfinex.convertedPair);
	 console.log("exchange  : " + data.BCH_BTC.bitfinex.exchange);
	 console.log("exchange  : " + data.BCH_BTC.bitfinex.high);
	console.log("askask  : " + data.BCH_BTC.bitfinex.raw.ask);
	$.each(data, function(i, coin) {
		html.push('<div >');
		html.push('<h3 >' + coin.BCH_BTC + '</h3>');
		html.push('<div >' + coin.BCH_BTC + '</div>');
		html.push('</div >');

	 });
		$('#ajaxValue').html(html.join(''));
	 });
	 
	 }); 
</script>


<input type="button" id="btn" value="ask">
<div id="ajaxValue"></div>