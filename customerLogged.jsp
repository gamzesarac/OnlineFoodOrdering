<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="resources/css/NavigationBar.css" />
  
<title>Customer Page</title>
</head>
<body>
<%
   int usertype = (Integer) session.getAttribute("usertype");
    if(((session.getAttribute("currentSessionUser")== null ) || (session.getAttribute("currentSessionUser")== ""))
    		&& (session.getAttribute("usertype")==null) || (usertype!=1)){
    		    %><jsp:forward page="invalidLogin.jsp" /><%
    		  }
   %>  
<div id='div1'>
<nav>
	<header id="header" class="clear">

            <div id="hgroup">

                <h1><img src="resources/images/logo.jpg"  style="width:150px;height:150px;">
             </nav>   </div>
                
 <div id='div2'>  
 <form action="LogoutServlet">
  <select>
  <option value=places">Kadikoy</option>
  <option value="places">Bostanci</option>
  <option value="places">Maltepe</option>
  <option value="places">Suadiye</option>

 <input type="text" name="search" placeholder="Search..">
    <input type="submit" value="Logout" > 
                                              
</select>
                     </h1>
                     
	</form>
	</div>
	<div id='div3'>


      <a href="changePassword.jsp"><button type="button">Change Password</button></a>

	</div>
	<div id='div4' >
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="EditProfile.jsp">Edit Profile</a></li>
  <li><a href="CustomerOrders.jsp">My Orders</a></li>

 
 
</ul>
</div>


	 <div id='div5' >
	 <h3>Sang Food House</h3>
                           <a href="RestMenu.jsp?restid=2"><img src="resources/images/food-menu.jpg" alt="Sang Food house" title="Sang Food house"></a>
                    <div style="width:500%" class="rests">
                    &nbsp;&nbsp;
                    <div >
	 <h3>Burger House</h3>
                           <a href="RestMenu.jsp?restid=3"><img src="resources/images/burgerr.jpg" alt="Burger House" title="Burger house"></a>  
       <div >
	 <h3>Trend 216</h3>
                           <a href="RestMenu.jsp?restid=4"><img src="resources/images/Trend216.jpg" alt="Trend 216" title="Trend 216"></a>                            
                                 
                        </div>
                        </div>
	

</body>
</html>