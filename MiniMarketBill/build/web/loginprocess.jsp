<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Process</title>
    </head>

<body> 
        <%
            //String email = request.getParameter("email");
            //String password = request.getParameter("password");
            //String driver = "com.mysql.jdbc.Driver";
            Connection theConnection = null;
            PreparedStatement theStatement = null;


                try{  
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing_system", "Anway", "anway123");
                    theStatement = con.prepareStatement("SELECT * FROM user WHERE email=? and password=?");
                    theStatement.setString(1, request.getParameter("email"));
                    theStatement.setString(2, request.getParameter("password"));
                    ResultSet theResult = theStatement.executeQuery();
                    

                    if(theResult.next()) {
                        //user.setLoggedIn(true);
                        //user.session.setAttribute("userLoggedIn");
                        String redirectURL = "index.html";                    
                        response.sendRedirect(redirectURL);
                    }
                    else {
                        String redirectURL = "login.jsp";
                        response.sendRedirect(redirectURL);
                    }
                }catch(Exception e){
                    System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }  
        %>
</body>

</html>