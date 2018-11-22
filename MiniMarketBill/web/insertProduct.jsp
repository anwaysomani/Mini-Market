<%-- 
    Document   : insertProduct
    Created on : 19 Nov, 2018, 3:27:20 AM
    Author     : Anway
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting Product</title>
    </head>
    <body>
        <% 
            String p_name = request.getParameter("p_name");
            String p_company = request.getParameter("p_company");
            String p_price = request.getParameter("p_price");
            String p_category = request.getParameter("p_category");
            String manufacture_date = request.getParameter("manufacture_date");
            String expiry_date = request.getParameter("expiry_date");
            String p_discount = request.getParameter("p_discount");
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                Statement st = con.createStatement();
                
                st.executeUpdate("INSERT INTO product(p_name, p_company, p_price, p_category, manufacture_date, expiry_date, p_discount) VALUES('"+p_name+"', '"+p_company+"', '"+p_price+"', '"+p_category+"', '"+manufacture_date+"', '"+expiry_date+"', '"+p_discount+"')");
                
                
                String redirectURL = "http://localhost:8080/MiniMarketBill/insProduct.jsp";                    
                response.sendRedirect(redirectURL);
        %>
            <style>
                html {
                    background-color: green;
                }
            </style>
                
        <%
                out.println("Inserted data successfully");
                
            }
            catch(Exception e) {   
                out.println(e);
            }
        %>
            
    </body>
</html>
