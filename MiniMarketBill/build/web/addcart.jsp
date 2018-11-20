<%-- 
    Document   : insertProduct
    Created on : 19 Nov, 2018, 3:27:20 AM
    Author     : Anway
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%      
        Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
        
        
        <% 
            String p_id = request.getParameter("p_id");
            String p_name = request.getParameter("p_name");
            String p_company = request.getParameter("p_company");
            String p_price = request.getParameter("p_price");
            String p_discount = request.getParameter("p_discount");
            String p_quantity = request.getParameter("p_quantity");
            String  manufacture_date = request.getParameter("manufacture_date");
            String expiry_date = request.getParameter("expiry_date");

            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                Statement st = con.createStatement();
                
                st.executeUpdate("INSERT INTO cart(p_id, p_name, p_company, p_price, p_discount, p_quantity, manufacture_date, expiry_date) VALUES('"+p_id+"', '"+p_name+"', '"+p_company+"', '"+p_price+"', '"+p_discount+"', '"+p_quantity+"', '"+manufacture_date+"', '"+expiry_date+"')");                
                
                String redirectURL = "http://localhost:8080/MiniMarketBill/createBill.jsp";
                response.sendRedirect(redirectURL);
            }
            catch(Exception e) {   
                out.println(e);
            }
        %>
            
    </body>
</html>
