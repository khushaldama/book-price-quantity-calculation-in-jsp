<%-- 
    Document   : purchasejsp
    Created on : 13 Nov, 2022, 3:15:54 PM
    Author     : admin
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase Page</title>
    </head>
    <body>
    <center>
        <h1>Purchase</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr style="text-align: center"><b>

                <th scope="col">Book Name &nbsp;&nbsp;</th>
                <th scope="col">Book Price &nbsp;&nbsp;</th>
                <th scope="col">Book Total Quantity &nbsp;&nbsp;</th>
                <th scope="col">Book Total Price &nbsp;&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                
                    <%
                        try {
                            int id = Integer.parseInt(request.getParameter("id"));
                            int p = Integer.parseInt(request.getParameter("p"));
                            int qty = Integer.parseInt(request.getParameter("qt"));
                            int total=p*qty;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/052", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from book where id='" + id + "'");

                            while (rs.next()) {

                                /*out.print("<h3>" + rs.getInt("id") + "</h3");
                    out.print("<h3>" + rs.getString("name") + "</h3>");
                    out.print("<h3>" + rs.getInt("fuel") + "</h3>");
                    out.print("<h3>" + rs.getInt("milage") + "</h3>");
                                 */%>
                    <tr style="text-align: center">
                        <td scope="row"><b><% out.println(rs.getString("name")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("price")); %></b></td>
                        <td scope="row"><b><% out.println(qty); %></b></td>
                        <td scope="row"><b><% out.println(total); %></b></td>
                       </tr> 
                    <%              }
                        
                        } catch (Exception e) {
                            e.printStackTrace();
                            //out.println(e);

                        }
                    %>
                </tbody>
                
        </table>
                </center>
    </body>
</html>
