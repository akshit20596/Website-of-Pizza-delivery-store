<html>
    
    <head>
       
        <title> MENU PAGE </title>
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
             function add()
         {
            alert("Item has been added");
          
         }
        </script>
        <style type="text/css">
            #menupic{
                width:200px;
                height:200px;
               animation: mymove 3s;
                animation-timing-function: ease;
                position: relative;
            }
            #menupic1{
                width:300px;
                height:300px;
                 
            }
           

           #menucell{
                width: 200px;
                height: 200px;
           }
        
.np{
    background-color:transparent;
    color: white;
    font-weight: bold;
    font-size:18px;
    font-family: cooper black;
    border:0px;

} 
td{
    text-align:center; 
}
        </style>
    </head>
   
    <body style="background-image:url(bg1.jpg);font-family: cooper black; color:white;">
          <div id="ani"></div>
        <div id="header1" style=" font-size:40px; color:yellow;" class="ani">
            <img src="logo.jpg" width="100" height="80" alt="logo loading">
         Pizza Point....
        </div>
        <div id="header1" style=" font-size:20px;" >
             &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" onmouseover="over(this);" onmouseout="out(this);">MENU</a>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="cart.jsp" onmouseover="over(this);" onmouseout="out(this);">CART</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="logout.jsp" onmouseover="over(this);" onmouseout="out(this);">LOGOUT</a>
             
              <p style="text-transform: uppercase"><small><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          Logged in as <%= session.getAttribute("name")%></em></small></p>
        </div>
        <div id="log" style="width:12%;height: 600%;padding-top: 10px; float:left; line-height:4; border-right:solid; margin-top: 30px;">
            <div style="position:fixed ; "> <ul type="circle" style="font-size:25px;">
                <li> <a href="#pizza" onmouseover="over(this);" onmouseout="out(this);">Pizza </a></li>
                <li> <a href="#sides" onmouseover="over(this);" onmouseout="out(this);">Sides</a> </li>
                <li><a href="#mania" onmouseover="over(this);" onmouseout="out(this);"> Mania </a></li>
                <li> <a href="#beverage" onmouseover="over(this);" onmouseout="out(this);">Beverages </a></li>
                <li><a href="#specials" onmouseover="over(this);" onmouseout="out(this);"> Specials </a></li>
            </ul>
                </div>
        </div>
        <div id="log" style="width:80%; height:100%; float:left;">
            <a name="pizza"></a>
            <h1>Select Your Pizza</h1><hr width="50%" align="left" >
            <table border="0" cellspacing="10px">
                <tr>
                    <td id="menucell" align="center"><img src="p1.png" id="menupic" alt="margherita">
                         <form method="post" action="add.jsp"> 
                             <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="MARGHERITA" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="60" readonly id="textbox" class="np" style="width:80px;">
                               <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="p2.jpg" id="menupic" alt="country special">
                         <form  method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="COUNTRY SPECIAL" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="90" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox"name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="p3.jpg" id="menupic" alt="farm house">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="FARM HOUSE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="95" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="p4.jpg" id="menupic" alt="mexican wave">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="MEXICAN WAVE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="p5.jpg" id="menupic" alt="peppy paneer">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="PEPPY PANEER" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
                 <tr>
                    <td id="menucell" align="center"><img src="p6.jpg" id="menupic" alt="deluxe veggie">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="DELUXE VEGGIE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="p7.png" id="menupic" alt="5 pepper">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="5 PEPPER" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="p8.jpg" id="menupic" alt="veggie paradise">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="VEGGIE PARADISE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="110" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="p9.jpg" id="menupic" alt="BARBEQUE CHICKEN">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="BARBEQUE CHICKEN" readonly class="np" style="width:220px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="130" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="p10.jpg" id="menupic" alt="chicken salami">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="CHICKEN SALAMI" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="120" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
                 <tr>
                    <td id="menucell" align="center"><img src="p11.jpeg" id="menupic" alt="chicken mexicana">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="CHICKEN MEXICANA" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="150" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="p12.jpg" id="menupic" alt="Golden chicken">
                        <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="GOLDEN CHICKEN" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="130" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="p13.jpg" id="menupic" alt="NV supereme">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="NON-VEG SUPREME" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="170" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="p14.jpg" id="menupic" alt="chicken dominator">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="CHICKEN-DOMINATOR" readonly class="np" style="width:220px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="150" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="p15.jpg" id="menupic" alt="chefs chicken">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="pizza">
                               <input type="text" name="name" value="CHEF'S CHICKEN" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="130" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
            </table>
            <br><br>
            <a name="sides"></a>
            <h1>Add on to your taste by Side Orders</h1><hr width="50%" align="left">
            <table border="0" cellspacing="10px">
                <tr>
                    <td id="menucell" align="center"><img src="s1.jpg" id="menupic" alt="s1">
                        <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="GARLIC BREAD" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="60" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="s2.jpg" id="menupic" alt="s2">
                      <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="TACO MEXICANA" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="40" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="s3.jpg" id="menupic" alt="s3">
                     <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="CHICKEN PARCEL" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="30" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="s4.jpg" id="menupic" alt="s4">
                           <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="MOUSSE CAKE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="40" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="s5.jpg" id="menupic" alt="s5">
                        <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="CHEESY DIP" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="20" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
                 <tr>
                    <td id="menucell" align="center"><img src="s6.jpg" id="menupic" alt="s6">
                        <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="STUFFED BREAD" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="50" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="s7.jpg" id="menupic" alt="s7">
                      <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="sides">
                               <input type="text" name="name" value="PASTA ITALIANO" readonly class="np" style="width:220px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="60" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                 </tr>
            </table>
            <a name="mania"></a>
            <h1>Mind blowing taste of Pizza Mania</h1><hr width="50%" align="left">
            <table border="0" cellspacing="10px">
                <tr>
                    <td id="menucell" align="center"><img src="m1.jpg" id="menupic" alt="m1">
                        <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="mania">
                               <input type="text" name="name" value="VEG SPICY" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="70" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="m2.png" id="menupic" alt="m2">
                       <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="mania">
                               <input type="text" name="name" value="CHEESE CHICKEN" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="m3.jpg" id="menupic" alt="m3">
                      <form   method="post" action="add.jsp">
                        <input type="hidden" name="path" value="mania"> 
                               <input type="text" name="name" value="CHICKEN DELIGHT" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="m4.jpg" id="menupic" alt="m4">
                            <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="mania">
                               <input type="text" name="name" value="CAPSICUM" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="80" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="m5.jpg" id="menupic" alt="m5">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="mania">
                               <input type="text" name="name" value="ONION PANEER" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="100" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
                 <tr>
                    <td id="menucell" align="center"><img src="m6.jpg" id="menupic" alt="m6">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="mania">
                               <input type="text" name="name" value="CHEESY" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="90" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="m7.jpg" id="menupic" alt="m7">
                      <form   method="post" action="add.jsp">
                        <input type="hidden" name="path" value="mania"> 
                               <input type="text" name="name" value="VEG DELIGHT" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="90" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                 </tr>
            </table>
             <a name="beverage"></a>
            <h1>Quench your thirst by our Beverages</h1><hr width="50%" align="left">
            <table border="0" cellspacing="10px">
                <tr>
                    <td id="menucell" align="center"><img src="b1.jpg" id="menupic" alt="b1">
                       <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="beverage">
                               <input type="text" name="name" value="COKE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="40" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="b2.jpg" id="menupic" alt="b2">
                       <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="beverage">
                               <input type="text" name="name" value="SLICE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="30" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      <td id="menucell" align="center"><img src="b3.jpg" id="menupic" alt="b3">
                      <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="beverage">
                               <input type="text" name="name" value="SPRITE" readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="40" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                       <td id="menucell" align="center"><img src="b4.jpg" id="menupic" alt="b4">
                           <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="beverage">
                               <input type="text" name="name" value="COLD COFFEE " readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="60" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                        <td id="menucell" align="center"><img src="b5.jpg" id="menupic" alt="b5">
                         <form   method="post" action="add.jsp">
                         <input type="hidden" name="path" value="beverage">
                               <input type="text" name="name" value="ICE TEA " readonly class="np" style="width:200px;text-align: center;">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="40" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                </tr>
            </table>
             <a name="specials"></a>
            <h1>Try Our Pizza Point Specials</h1><hr width="50%" align="left">
            <table border="0" cellspacing="30px">
                <tr>
                    <td id="menucell" align="center"><img src="sp1.gif" id="menupic1" alt="sp1">
                      
                      <form   method="post" action="add.jsp">
                          <input type="hidden" name="path" value="specials">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="text" name="name" value=" CHOCO LAVA CAKE" readonly class="np" id="textbox">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="60" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                     <td id="menucell" align="center"><img src="sp2.gif" id="menupic1" alt="sp2">
                      
                       <form   method="post" action="add.jsp">
                           <input type="hidden" name="path" value="specials"> 
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="text" name="name" value="SPECIAL SUNDAE" readonly class="np" id="textbox">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="50" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                
                      <td id="menucell" align="center"><img src="sp3.gif" id="menupic1" alt="sp3">
                   
                        <form   method="post" action="add.jsp">
                            <input type="hidden" name="path" value="specials">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="text" name="name" value="  COFFEE IN A CAKE" readonly class="np" id="textbox">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="80" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form></td>
                      </tr>
                <tr>
                       <td id="menucell" align="center"><img src="sp4.gif" id="menupic1" alt="sp4">
                           
                           <form   method="post" action="add.jsp">
                               <input type="hidden" name="path" value="specials">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <input type="text" name="name" value="SPECIAL ROLLED PIZZA" readonly class="np" id="textbox">
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                               Rs. <input type="number" name="price" value="200" readonly id="textbox" class="np" style="width:80px;">
                     <br> <input type="number" id="textbox" max="10" min="0" id="textbox" name="quant">
                     
                     <input type="submit" id="textbox" value="ADD TO CART" onclick="add()">
                           </form>
                       </td> </tr>   
                        
        </div>
      
    </body>
</html>
