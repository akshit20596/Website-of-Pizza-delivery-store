<%
    int flag=0;
try{
  Class.forName("com.mysql.jdbc.Driver");
  com.mysql.jdbc.Connection c=(com.mysql.jdbc.Connection)
  java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","akshittyagi");
  com.mysql.jdbc.Statement st=(com.mysql.jdbc.Statement)c.createStatement();
  String phone;
  phone=(String)session.getAttribute("phone");
   java.sql.ResultSet rs;
    rs = st.executeQuery("Select * from orderdb where phone='"+phone+"';");
    while(rs.next())
{ 
    flag++;
} 
}
    catch(java.lang.Exception e)
  {
     out.print("error");
   
  }
if(flag!=0)
{
    response.sendRedirect("ncart.jsp");
}
else
{
    response.sendRedirect("menu.jsp");
}
    %>