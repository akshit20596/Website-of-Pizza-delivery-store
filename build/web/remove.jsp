<%
    String name,phone;
    phone=(String)session.getAttribute("phone");
    name=request.getParameter("name");
     try{
  Class.forName("com.mysql.jdbc.Driver");
  com.mysql.jdbc.Connection c=(com.mysql.jdbc.Connection)
  java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","akshittyagi");
  com.mysql.jdbc.Statement st=(com.mysql.jdbc.Statement)c.createStatement();
  st.executeUpdate("delete from orderdb where phone='"+phone+"'and item='"+name+"';");
   
  st.close();
  c.close();    }
  catch(java.lang.Exception e)
  {
     out.print("error");
   
  }   
     response.sendRedirect("cart.jsp");
    %>