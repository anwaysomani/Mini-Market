<%-- 
    Document   : deleteProduct
    Created on : 19 Nov, 2018, 5:32:53 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
    </head>
    <body>
        <%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>--%>
        <%@page import="java.sql.*,java.util.*"%>
        <%
        String id=request.getParameter("p_id");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
            Statement st = conn.createStatement();
            int i = st.executeUpdate("DELETE FROM product WHERE p_id=" + id);
            
            String redirectURL = "http://localhost:8080/MiniMarketBill/delProduct.jsp";
            response.sendRedirect(redirectURL);
                out.println("Inserted data successfully");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>
    </body>
</html>
