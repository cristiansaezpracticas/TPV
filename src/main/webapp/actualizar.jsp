<%-- 
    Document   : actualizar
    Created on : 22-nov-2021, 17:42:59
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Producto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Actualizar Producto</h1>
        <% 
            String mensaje = ( String ) request.getAttribute("mensaje");
        %>
        <h3><%=mensaje%></h3>
        <form action="Servlet">
            <input type="hidden" value="actualizardatos" name="op">
            <p>ID: <input type="text" value="${producto.id}" name="id" readonly></p>
            <p>Nombre: <input type="text" value="${producto.nombre}" name="nombre"></p>
            <p>Imagen: <input type="text" value="${producto.imagen}" name="imagen"></p>
            <p>Catalogo: <input type="text" value="${producto.categoria}" name="categoria"></p>
            <p>Precio: <input type="text" value="${producto.precio}" name="precio"></p>
            
            <input type="submit" value="Actualizar Producto">
        </form>
    </body>
</html>
