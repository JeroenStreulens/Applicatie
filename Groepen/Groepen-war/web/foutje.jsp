<%-- 
    Document   : foutje
    Created on : Nov 3, 2009, 3:12:09 PM
    Author     : joost
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fout</title>
    </head>
    <body>
        <form action=<c:url value="ctrl.do" /> method="post">
            Naam of paswoord niet gevonden, probeer het nog eens.
            <input type="submit" value="Aanmelden" />
            <input type="hidden" name="komvan" value="fout" />
        </form>
    </body>
</html>
