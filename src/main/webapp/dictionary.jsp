<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/9/2021
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%
    Map<String, String> dictionary = new HashMap<>();

    dictionary.put("Lo Nhu Chi", "Ly Nhu Cho");

    String search = request.getParameter("search");

    String result = dictionary.get(search);
    if (result != null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Khong co trong tu dien");
    }
%>

</body>
</html>
