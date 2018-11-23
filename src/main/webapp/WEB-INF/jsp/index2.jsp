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
            $("#btn").click(function() {
                var result = document.getElementById('ajaxValue');
                $.ajax({
                    url : "http://localhost:8080/json", // test.jsp 에서 받아옴
                    dataType :"json", // 데이터타입을 json 으로 받아옴
                    success : function(data) {
                       // console.log(result.innerHTML = data.study.ajax);
                    },
                    error : function(e) {
                        console.log(e.responseText);
                    }
                });
            });
    });
</script>


<input type="button" id="btn" value="gggggserdtf">
<div id="ajaxValue"></div>