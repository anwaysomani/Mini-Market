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
    try {
//        int p_quantity = Integer.getInteger(request.getParameter("p_quantity")).intValue();
//        int p_price = Integer.getInteger(request.getParameter("p_price")).intValue();
//        int var = Integer.getInteger(request.getParameter("var")).intValue();
//        for(int i=0; i < p_quantity; i++) {
//            var = var + p_price;
//        }

        //String redirectURL = "http://localhost:8080/MiniMarketBill/createBill.jsp";
        //response.sendRedirect(redirectURL);
        
        String p_id = request.getParameter("p_id");
        out.println(p_id);
    }
    catch(Exception e) {
            out.println(e);
    }
%>
