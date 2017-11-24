<%-- 
    Document   : index
    Created on : 21-nov-2017, 9:35:06
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
    </head>
    <body>
        <h1>Welkom!</h1>
        <form action=<c:url value="ctrl.do" /> method="post" >
           Klik op onderstaande knop om u aan te melden. 
           <input type="submit" value="Aanmelden" />
           <input type="hidden" name="komvan" value="index" />
        </form>
    </body>
</html>
