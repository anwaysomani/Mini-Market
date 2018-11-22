<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	String id = request.getParameter("api_list");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "billing_system";
	String userid = "Anway";
	String password = "anway123";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Market_Bill</title>
        
        
        <!-- BootStrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <!-- Local CSS File -->
        <link rel="stylesheet" type="text/css" href="Static/css/insProduct.css">
    </head>
    
    <body>
        <h1>Market</h1>
        <div class="container">
            <form class="form-horizontal" action="insertProduct.jsp">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="p_name">Product Name</label>
                    <div class="col-sm-10">
                        <input type='text' class="form-control" name='p_name' placeholder="Product Name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="p_company">Brand</label>
                    <div class="col-sm-10">
                        <input type='text' class="form-control" name='p_company' placeholder="Brand">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="p_price">Price</label>
                    <div class="col-sm-10">
                        <input type='number' class="form-control" name='p_price' placeholder="Price">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="p_category">Category</label>
                    <div class="col-sm-10">
                        <input type='text' class="form-control" name='p_category' placeholder="Category">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="manufacture_date">Manufacturing Year</label>
                    <div class="col-sm-10">
                        <input type='year' class="form-control" name='manufacture_date' placeholder="Year">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="expiry_date">Expiry Year</label>
                    <div class="col-sm-10">
                        <input type='year' class="form-control" name='expiry_date' placeholder="Year">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="p_discount">Discount</label>
                    <div class="col-sm-10">
                        <input type='number' class="form-control" name='p_discount' placeholder="Discount(%)">
                    </div>
                </div>

                <div class="form-group"> 
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>

            </form>
        </div>
        
         <a href="index.html">
            <div class="return">
                <img src="Static/img/return.png" />Return 
            </div>
        </a>
        
    </body>
</html>
