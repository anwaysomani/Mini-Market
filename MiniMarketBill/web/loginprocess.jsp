
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

    <%
        boolean status=LoginDao.validate(obj);
        if(status){
            out.println("You are successfully logged in");
            session.setAttribute("session","TRUE");
    %>
            
    <%      
        }
        else {
            out.print("Sorry, email or password error");
        }
    %>
    <jsp:include page="index.html"></jsp:include>