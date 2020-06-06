

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo producto</h1>
        <form action="Inicio" method="post">
            <input type="hidden" name="id" value= "${producto.id}">
            <table>
            <tr>
                <td>Descripcion</td>
                <td><input type="text" name="descripcion" value="${producto.descripcion}"></td>
            </tr>
            <tr>
                <td>Stock</td>
                <td><textarea name="stock" cols="20" rows="4">${producto.stock}</textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Enviar"></td>
            </tr>
            </table>
        </form>
    </body>
</html>