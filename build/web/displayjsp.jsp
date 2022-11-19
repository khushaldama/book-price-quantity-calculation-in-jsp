<%-- 
    Document   : displayjsp
    Created on : 13 Nov, 2022, 2:46:56 PM
    Author     : admin
--%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Page</title>
    </head>
    <body>
    <center>
        <h1>Display All Record</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr style="text-align: center"><b>
                <th scope="col">Book Id &nbsp;&nbsp;</th>
                <th scope="col">Book Name &nbsp;&nbsp;</th>
                <th scope="col">Book Price &nbsp;&nbsp;</th>
                <th scope="col">Purchase Link &nbsp;&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            int qty=Integer.parseInt(request.getParameter("qty"));
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/052", "root", "");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from book");
                             
                            while (rs.next()) {

                                /*out.print("<h3>" + rs.getInt("id") + "</h3");
                    out.print("<h3>" + rs.getString("name") + "</h3>");
                    out.print("<h3>" + rs.getInt("fuel") + "</h3>");
                    out.print("<h3>" + rs.getInt("milage") + "</h3>");
                                 */%>
                    <tr style="text-align: center">
                        <th scope="row"><b><% out.println(rs.getInt("id")); %></b></th>
                        <td scope="row"><b><% out.println(rs.getString("name")); %></b></td>
                        <td scope="row"><b><% out.println(rs.getInt("price")); %></b></td>
                        
                        <td scope="row"><a href="purchasejsp.jsp?id=<%=rs.getInt("id")%>&p=<%=rs.getInt("price")%>&qt=<%=qty%>">Click here to Purchase Book</a></td>
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
