<%-- 
    Document   : index
    Created on : 13 Nov, 2022, 2:37:15 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
    <center>
        <form action="bookServlet" method="post" style="border: 2px solid black; margin-top: 150px;width: 30%;">
            <h2><label>Books Data</label></h2>
            <label hidden="">Book Id:</label>
            <input hidden type="text" placeholder="Enter Book Id" name="id">
            <br><br>
            <label>Book Name:</label>
            <input type="text" placeholder="Enter Book Name" name="nm">
            <br><br>
            <label>Price:</label>
            <input type="text" placeholder="Enter Book Price" name="pr">
            <br><br>
            <label>Quantity:</label>
            <input type="text" placeholder="Enter Book Quantity" name="qty">
            <br><br>
            <input type="submit" value="Submit" name="btns">
            <br><br>
        </form>
    </center>
</body>
</html>
