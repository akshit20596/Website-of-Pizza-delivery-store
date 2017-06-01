<html>
    
    <head>
       
        <title> BILL </title>
        <link rel="icon" href="myicon.ico" />
        <link rel="stylesheet" type="text/css" href="css1.css">
        <script type="text/javascript">
            function over(element)
            {
                element.style.color="#ff0099";
                
            }
            function out(element)
            {
                element.style.color="white";
                
            }
             </script>
             <style type="text/css">
                 .np{
    background-color:transparent;
    color: white;
    font-weight: bold;
    font-size:20px;
    font-family: cooper black;
    border:0px;

} 
td{
    text-align:center; }
th{
    font-size:24px;
    color:lightsalmon;
}
             </style>
             
    <body style="background-image:url(bg1.jpg);font-family: cooper black; color:white;">
          <div id="ani"></div>
        <div id="header1" style=" font-size:40px; color:yellow;" class="ani">
            <img src="logo.jpg" width="100" height="80" alt="logo loading">
         Pizza Point....
        </div>
        <div id="header1" style=" font-size:20px;" >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="menu.jsp" onmouseover="over(this);" onmouseout="out(this);">MENU</a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="cart.jsp" onmouseover="over(this);" onmouseout="out(this);">CART</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="logout.jsp" onmouseover="over(this);" onmouseout="out(this);">LOGOUT</a>
             
              <p style="text-transform: uppercase"><small><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          Logged in as <%= session.getAttribute("name")%></em></small></p>
        </div>
        <div id="log" style="width:70%;height:80%;padding-top:40px;" align="center">
            <table border="0">
                <tr><td colspan="3" align="center" style="font-size: 40px; color:greenyellow; ">Bill...</td></tr>
                <th align="left">ITEM</th><TH>QUANTITY</TH><TH>PRICE</TH>
                  <%
     int sum=0;    
  try{
  Class.forName("com.mysql.jdbc.Driver");
  com.mysql.jdbc.Connection c=(com.mysql.jdbc.Connection)
  java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","akshittyagi");
  com.mysql.jdbc.Statement st=(com.mysql.jdbc.Statement)c.createStatement();
  
  String item,phone,quant,price;
  phone=(String)session.getAttribute("phone");
   java.sql.ResultSet rs;
    rs = st.executeQuery("Select * from orderdb where phone='"+phone+"';");
    while(rs.next())
{  
    item=rs.getString("item");
    quant=rs.getString("quant");
    price=rs.getString("price");
    out.print("<form>");
    out.print("<tr>");
    out.print("<td><input type=\"text\" name=\"name\" value=\""+item+"\" readonly class=\"np\" style=\"width:250px;text-align: left;\">");
out.print("</td><td><input type=\"text\" name=\"quant\" value=\""+quant+"\" readonly class=\"np\" style=\"width:200px;text-align: center;\">");
out.print("</td><td><input type=\"text\" name=\"price\" value=\""+price+"\" readonly class=\"np\" style=\"width:200px;text-align: center;\">");
out.print("</td></tr></form>");
 sum+=java.lang.Integer.parseInt(price);
}
    st.close();
  c.close();    }
  catch(java.lang.Exception e)
  {
     out.print("error");
   
  }
  out.print("<tr><td colspan=2><input type=\"text\" name=\"price\" value=\"Total\" readonly class=\"np\" style=\"width:200px;text-align: right;\">");
  out.print("</td><td><input type=\"text\" name=\"price\" value=\"Rs. "+sum+"\" readonly class=\"np\" style=\"width:200px;text-align:center;\"></td></tr>");                
                  %>
                  
            </table>
            </form>
            <br><br><br>
            <form action="end.jsp">
                <input type="submit" value="Check Out" id="textbox" style="width:300px;border:0px; background-color: orange; color: darkred; font-family: cooper black; font-size: 20px; border-radius: 20px; font-weight: lighter;">
            </form>
        </div>
