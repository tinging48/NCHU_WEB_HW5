<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>履歷表資訊</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div {
      background-color:rgb(250, 230, 280);

      padding-top:20px;
      padding-left:50px;
      padding-right:5%;
      padding-bottom:50px;
      text-align:center;
    }
  </style>
</head>

<body>
<div>
  <%
  request.setCharacterEncoding("utf8");

  out.print("姓名："+ request.getParameter("username") +"<br><br>");
  out.print("生日："+ request.getParameter("birthday") +"<br><br>");
  out.print("性別："+request.getParameter("sex")+"<br><br>");
  out.print("年級："+request.getParameter("grade")+"<br><br>");
  out.print("興趣：");
  if (request.getParameterValues("hobby")==null){
    out.println("none");
  }else{
    String[] hob = request.getParameterValues("hobby");
    for(int i=0;i<hob.length;i++){
      out.println(hob[i]);
      if(i<hob.length-1){
        out.println("; ");
      }
    }
  }
  out.print("<br><br>");

  out.print("喜歡吃： ");
  if (request.getParameterValues("food")==null){
  	out.println("none");
  }else{
    String[] eat = request.getParameterValues("food");
    for(int i=0;i<eat.length;i++){
    	out.print(eat[i]);
    	if(i<eat.length-1){
    		out.println("; ");
    	}
    }
  }
  out.print("<br><br>");

  out.print("自傳:  "+request.getParameter("note")+"<br><br>");
  %>

</div>
</body>
</html>
