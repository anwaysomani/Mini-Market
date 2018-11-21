<!--Author: Anway-->

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%      
        Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Counter</title>
        
        <!-- BootStrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="Static/css/createBill.css"/>
        
    </head>
    <body>
        <div class="bill-title">
            Billing Section
        </div>
        
        <a href="index.html">
            <div class="return">
                <img src="Static/img/return.png" />Return 
            </div>
        </a>
        
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col" class="id">#</th>
                <th scope="col" class="product">Product</th>
                <th scope="col" class="company">Company</th>
                <th scope="col" class="price">Price</th>
                <th scope="col"class="discount">Discount</th>
                <th class="quantity">Quantity</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %>/-</td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                <td><input type='number' class="form-control" name='p_quantity' placeholder="Quantity..."></td>
                                <td><a href="addcart.jsp"><div class="add">Add+</div></a></td>
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
            <br>
        </table>
        
        <br>
        
    </body>
</html>
