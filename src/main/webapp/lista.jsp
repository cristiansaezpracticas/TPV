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
        <title>Listado de productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Listado de productos</h1>
        <% 
            List<Productos> listaProductos = ( List<Productos> ) request.getAttribute("listado");
            String mensaje = ( String ) request.getAttribute("mensaje");
        %>
        <h3><%=mensaje%></h3>
        <table class="table">
            <% for (Productos p: listaProductos) { %>
            <tr>
                <td><%=p.getNombre() %></td>
                <td><%=p.getCategoria() %></td>
                <td><%=p.getPrecio() %></td>
                <td><a href="Servlet?op=actualizar&id=<%=p.getId() %>">Actualizar</a></td>
                <td><a href="Servlet?op=borrar&id=<%=p.getId() %>" onclick="return Confirmacion()">Borrar</a></td>
            </tr>
            <%}%>
        </table>
        <script type="text/javascript">
            function Confirmacion() {
                if(confirm("¿Está seguro de que quiere eliminar el producto?")){
                    alert("El producto se eliminará");
                    return true;
                } else {
                    return false;
                }
            }
        </script>
    </body>
</html>