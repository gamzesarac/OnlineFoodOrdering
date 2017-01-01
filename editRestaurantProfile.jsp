<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="resources/css/NavigationBar.css" />
<title>Edit RestaurantProfile</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/sangFood"
     user="root"  password="1234"/>

<sql:query dataSource="${snapshot}" var="editRestprofile">
select * from restaurants t1 where owner_id = ? 
<sql:param value="${sessionScope.currentSessionUser}"/>
</sql:query>
<c:forEach var="row" items="${editRestprofile.rows}">
<ul>
  <li><a href="RestaurantOwnerLogged.jsp">Home</a></li>
  
</ul>

<form action="EditRestaurantProfileServlet">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><h1>Enter Information Here</h1></th>
                    </tr>
                </thead>
                <tbody>
                   <tr>
                        <td><h1>Restaurant Name</h1></td>
                        <td><input type="text" name="restname" value="${row.rest_name}" readonly/></td>
                    </tr>
                    
            
                        <td><h1>Restaurant Address</h1></td>
                        <td><input type="text" name="NewAddress" value="${row.rest_address}"/></td>
                    </tr>
                    
                  
                    <tr>
                        <td><h1>Phone Number</h1></td>
                        <td><input type="tel" name="NewTel" value="${row.rest_phone}"></td>
                    </tr>
                  <tr>
                        <td><h1>Restaurant Information</h1></td>
                        <td><input type="text" name="newinfo" value="${row.rest_info}"></td>
                    </tr>
                  
                    <tr>
                        <td><input type="submit" value="Apply Changes" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
        </c:forEach>

</body>
</html>
