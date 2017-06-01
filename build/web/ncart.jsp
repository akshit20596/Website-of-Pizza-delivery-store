<html>
    
    <head>
       
        <title> CART </title>
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
            <a href="menu.jsp" onmouseover="over(this);" onmouseout="out(this);">MENU</a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" onmouseover="over(this);" onmouseout="out(this);">CART</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="logout.jsp" onmouseover="over(this);" onmouseout="out(this);">LOGOUT</a>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
              <a href="#" onmouseover="over(this);" onmouseout="out(this);">HELP</a> 
              <p style="text-transform: uppercase"><small><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          Logged in as <%= session.getAttribute("name")%></em></small></p>
        </div>
        <div id="log" style="width:70%;height:80%;padding-top:40px;" align="center">
            
            <h1>Your last order found....</h1>
            <form action="cart.jsp">
                 <input type="submit" value="Retrieve Previous Order" id="textbox" style="width:300px;border:0px; background-color: chartreuse; color: black; font-family: cooper black; font-size: 20px; border-radius: 20px; font-weight: lighter;">   
            </form>
             <form action="clear.jsp">
                <input type="submit" value="Clear Previous Order" id="textbox" style="width:300px;border:0px; background-color: red; color: white; font-family: cooper black; font-size: 20px; border-radius: 20px; font-weight: lighter;">
            </form>