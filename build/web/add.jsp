  <%!int sum;
     int q,p,ct;
      String order,final_order="",price,quant,path,phone,c,f;%>  
<%
               order=request.getParameter("name");
                price=request.getParameter("price");
                quant=request.getParameter("quant");
                p=java.lang.Integer.parseInt(price);
                q=java.lang.Integer.parseInt(quant);
               path=request.getParameter("path");
               phone=(String)session.getAttribute("phone");
               sum=p*q;
               try{
  Class.forName("com.mysql.jdbc.Driver");
  com.mysql.jdbc.Connection c=(com.mysql.jdbc.Connection)
  java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","akshittyagi");
  com.mysql.jdbc.Statement st=(com.mysql.jdbc.Statement)c.createStatement();
  st.executeUpdate("insert into orderdb values ('"+phone+"','"+order+"','"+quant+"','"+sum+"');");
   
  st.close();
  c.close();    }
  catch(java.lang.Exception e)
  {
     out.print("error");
   
  }    String fp="menu.jsp#"+path;
              response.sendRedirect(fp);
                %>