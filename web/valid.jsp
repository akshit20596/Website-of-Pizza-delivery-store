
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
  java.sql.ResultSet rs;
    rs = st.executeQuery("Select * from details");
    String ph,ps;
    int flag=0;
    while(rs.next())
{
  ph=rs.getString("p");
  ps=rs.getString("pass");
  if(p.equals(ph))
  if(pass.equals(ps))
  { flag++;
  break;
  }
}
    if(flag==0)
    {
        out.print("<p>Incorrect Phone Number/Password<br>If you are not Automatically redirected......<a href='index.html'>Click Here!</a></p>");
    }
   if(flag==1)
   {
       session.setAttribute("name",n);
       session.setAttribute("phone",p);
       session.setAttribute("count","0");
       session.setAttribute("bill","0");
       response.sendRedirect("check.jsp");
   }
  st.close();
  c.close();    }
  catch(java.lang.Exception e)
  {
     out.print("error");
   
  }
  
            %>
  