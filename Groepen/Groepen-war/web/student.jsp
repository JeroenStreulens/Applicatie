<%-- 
    Document   : student
    Created on : 21-nov-2017, 10:21:37
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welkom student</title>
    </head>
    <body>
        <h1>Welkom student</h1>
        <h2>Selecteer hieronder of u al dan niet met een bepaalde student in de groep wil zitten</h2>
        <form method="post" action="<c:url value='ctrl.do' />">
        <table>
            <tr>
                <td>Student</td>
                <td>Wil je deze student wel of niet in jouw groep?</td>
            </tr>
            <tr>
                <td>
                    <select name="vriendofvijand">
                        <c:forEach var="student" items="${sessionScope.student}">
                            <option value="<c:out value='${student.getSnaam()}' />" ><c:out value='${plaatsen.getLnaam()}' /></option>
                        </c:forEach>                
                    </select>
                </td>
            
                <td>
                    <select name="">
                    <c:forEach var="wagens" items="${sessionScope.wagens}">
                        <option value="<c:out value='${wagens.getWnaam()}' />" ><c:out value='${wagens.getWnaam()}' /></option>
                    </c:forEach>
                <!--
                    ArrayList<String> wagens = (ArrayList)sessie.getAttribute("wagens");
                    Iterator it2 = wagens.iterator();
                    while (it2.hasNext())
                    {
                        String s = (String)it2.next();
                        out.print("<option value='"+s+"'>"+s+"</option>");
                    }
                    -->
                   </select>
            </td>
            
            <td>
                <select name="dropoff">
                    <c:forEach var="plaatsen" items="${sessionScope.plaatsen}">
                        <option value="<c:out value='${plaatsen.getLnaam()}' />" ><c:out value='${plaatsen.getLnaam()}' /></option>
                    </c:forEach>
                    <!--
                    Iterator it3 = plaatsen.iterator();
                    while (it3.hasNext())
                    {
                        String s = (String)it3.next();
                        c:out("<option value='"+s+"'>"+s+"</option>");
                    }
                    -->
                
                </select>
            </td>
            
                <td>
                    <input type="textfield" name='Datum' />
                </td>
            
                <td>
                    <input type="textfield" name='Dagen' />
                </td>
                <td>
                    <input type="hidden" name="status" value="gereserveerd">
                    <input type="submit" value="Reserveer"/>
                </td>
            </tr>
        </table>
        </form>
    </body>
</html>
