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
        <title>Delete Product</title>
        
        <!-- BootStrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <!--Local CSS File-->
        <link rel="stylesheet" href="Static/css/delProduct.css"/>
    </head>
    
    <body>

        <a href="index.html">
            <div class="return">
                <img src="Static/img/return.png" />Return 
            </div>
        </a>
        
        <!--A-->
        <div class="alphabet">
            A
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'A%'";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                  
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
            
        <hr><hr>
                
        <!--B-->
        <div class="alphabet">
            B
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'B%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
                
        <hr><hr>
            
        <!--C-->
        <div class="alphabet">
            C
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'C%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>
            
        <!--D-->
        <div class="alphabet">
            D
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'D%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>
                
        <!--E-->
        <div class="alphabet">
            E
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'E%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>

        <!--F-->
        <div class="alphabet">
            F
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'F%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--G-->
        <div class="alphabet">
            G
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'G%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
                
        <hr><hr>
                
        <!--H-->
        <div class="alphabet">
            H
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'H%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
                
        <hr><hr>
            
        <!--I-->
        <div class="alphabet">
            I
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'I%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
                
        <hr><hr>
            
        <!--J-->
        <div class="alphabet">
            J
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'J%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--K-->
        <div class="alphabet">
            K
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'K%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--L-->
        <div class="alphabet">
            L
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'L%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>

        <!--M-->
        <div class="alphabet">
            M
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'M%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>

        <!--N-->
        <div class="alphabet">
            N
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'N%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--O-->
        <div class="alphabet">
            O
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'O%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--P-->
        <div class="alphabet">
            P
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'P%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--Q-->
        <div class="alphabet">
            Q
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'Q%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--R-->
        <div class="alphabet">
            R
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'R%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--S-->
        <div class="alphabet">
            S
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'S%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--T-->
        <div class="alphabet">
            T
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'T%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
        
        <!--U-->
        <div class="alphabet">
            U
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'U%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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
            
        <hr><hr>

        <!--V-->
        <div class="alphabet">
            V
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'V%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        
        <hr><hr>
            
        <!--W-->
        <div class="alphabet">
            W
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'W%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--X-->
        <div class="alphabet">
            X
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'X%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--Y-->
        <div class="alphabet">
            Y
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'Y%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

        <hr><hr>
            
        <!--Z-->
        <div class="alphabet">
            Z
        </div>
        <table class="table table-hover">
            <thead class="thead-light">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Company</th>
                <th scope="col">Price</th>
                <th scope="col">Manufacturing Year</th>
                <th scope="col">Expiry Year</th>
                <th scope="col">Discount</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
                <%
                        try{
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                                statement = con.createStatement();
                                String sql = "SELECT * FROM product WHERE p_name LIKE 'Z%' ";
                                resultSet = statement.executeQuery(sql);
                                int i=0;
                                while(resultSet.next()){
                %>      
                              <tr>

                                <th scope="row"><%=resultSet.getString("p_id") %></th>
                                <td><%=resultSet.getString("p_name") %></td>
                                <td><%=resultSet.getString("p_company") %></td>
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                 
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

    </body>
</html>