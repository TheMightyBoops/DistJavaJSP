<%@ page import="studentdata.Students" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="studentdata.Individual" %>
<%@ page import="studentdata.FindColumns" %>
<%@ page import="javax.swing.plaf.synth.SynthTextAreaUI" %>
<%@ page import="javax.persistence.criteria.CriteriaBuilder" %><%--
  Created by IntelliJ IDEA.
  User: lucas
  Date: 9/12/18
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
<%
    Students students = new Students();
    ArrayList<Individual> individualsFound;
    individualsFound = students.findStudents(FindColumns.valueOf(request.getParameter("column")),
            request.getParameter("value"));

    for(Individual i :individualsFound) {
        out.println("<li>" + i.getAccountNumber() + " " + i.getLname() + " " + i.getFname() + "</li>");
    }
%>
</ul>
</body>
</html>
