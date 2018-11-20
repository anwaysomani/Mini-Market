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
    </head>
    
    <body>
        
        <table class="table table-hover">
            A--
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
				String sql = "SELECT * FROM product";
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
                                <td><a href="<td><a href="deleteProduct.jsp?p_id=<%=resultSet.getString("p_id") %>">Delete</a></td>
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
                <br><br>
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
                                <td><%=resultSet.getString("p_price") %></td>
                                <td><%=resultSet.getString("manufacture_date") %></td>
                                <td><%=resultSet.getString("expiry_date") %></td>
                                <td><%=resultSet.getString("p_discount") %></td>
                                <td><a href="<td><a href="deleteProduct.jsp?p_id=<%=resultSet.getString("p_id") %>">Delete</a></td>
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
            </table>
    </body>
</html>
