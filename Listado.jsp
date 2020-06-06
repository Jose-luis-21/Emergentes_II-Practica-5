
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <h1>PRACTICA N° 5</h1>
        <h1>Patron de Diseño DAO</h1>
        <table border="1">
            <tr>
                <td>Ingenieria de Sistemas</td>
                
            </tr>
            <tr>
                <td>Tecnologías Emergentes II</td>
            </tr>
            <tr>
                <td>Univ.: CONDORI QUISPE JOSE LUIS</td>
            </tr>
            <tr>
                <td>C.I. 6874110</td>
            </tr>
            
        </table>
        </center>
        
        <h1>Productos</h1>
        <p><a href="Inicio?action=add">Nuevo producto</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Stock</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${producto}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.stock}</td>
                    <td> <a href="Inicio?action=edit&id=${item.id}">Editar</a> </td>
                    <td> <a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta Seguro?'))">Eliminar</a> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
