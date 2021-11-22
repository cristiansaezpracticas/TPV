<%-- 
    Document   : lista
    Created on : 15-nov-2021, 17:36:47
    Author     : Cristian
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de productos</h1>
        <% List<Productos> listaProductos = ( List<Productos> ) request.getAttribute("listado"); %>
        <table>
            <% for (Productos p: listaProductos) { %>
            <tr>
                <td><%=p.getNombre() %></td>
                <td><%=p.getCategoria() %></td>
                <td><%=p.getPrecio() %></td>
                <td><a href="Servlet?op=borrar&id=<%=p.getId() %>">Borrar</a></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>