<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="Static/css/viewpartner.css"/>
    </head>
    <body>
        <div class="market-title">
            Market Title
            <a href="http://localhost:8080/MiniMarketBill/">
                <div class="returnPrev">
                    <--Return
                </div>
            </a>
        </div>
        
        <br><br><br>
        
        <div class="partner-title">
            Partner Organizations    
        </div>
        
        <table>
            <thead>
                <th>Partners</th>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT DISTINCT(p_company) FROM product";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>
                                <td><%=resultSet.getString("p_company") %></td>
                              </tr>                            
                <%
                        i++;
                        }
                        connection.close();
                        } catch (Exception e) {
                                e.printStackTrace();
                        }
                %>
            </tbody>
    </body>
</html>
