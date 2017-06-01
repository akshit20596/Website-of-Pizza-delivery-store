
        <%
         
  try{
  Class.forName("com.mysql.jdbc.Driver");
  com.mysql.jdbc.Connection c=(com.mysql.jdbc.Connection)
  java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","akshittyagi");
  com.mysql.jdbc.Statement st=(com.mysql.jdbc.Statement)c.createStatement();
  String n,p,pass;
  n=request.getParameter("name");
  p=request.getParameter("phone");
  pass=request.getParameter("pass");
  st.executeUpdate("insert into details values ('"+n+"','"+p+"','"+pass+"');");
   
  st.close();
  c.close();    }
  catch(java.lang.Exception e)
  {
     out.print("error");
   
  }
  response.sendRedirect("index.html");
            %>
  