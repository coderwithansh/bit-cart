<?php @session_start(); ?>
<html>
<head>
   
  <link href="css/style.css" type="text/css" rel="stylesheet">
  
    
</head>
<body>
    

 <div id="main">
     
   <div id="header"><a href="index.php">
       <div id="leftLogo"> 
       <a href="index.php"><img src="images/logo2.jpeg"></a>
       </div><!--end of leftLogo-->

       <div id="title">
       <h1><a href="index.php" style="color:yellow; text-decoration: none"> BIT-CART </a></h1>
         <h3> A Trusted Company with quality product</h3>
         <?php 
          if(isset($_SESSION["uname"]))
          {
            echo("<div id='WelcomeUser'>");
            $usr=$_SESSION["uname"];
            echo("Welcome : " . $_SESSION["uname"] ." , ");
            echo("<a href='logout.php'> Logout </a>");
            if($_SESSION["utype"]="user")
            {
              echo("&nbsp;<a href='displaycartfororder.php'><img src='images/logo1.jpeg' width='20' height='20' align='top'style=color:yellow;>");
              include("dbconnect.php");
              $rscart=mysqli_query($con,"select count(*) from cart_info where user_name='$usr'") or die ("qurey error");
              $row=mysqli_fetch_array($rscart);
              $cnt=$row[0];
              echo("{$cnt}");
              echo("</a>");
            }
            echo("</div>");
          }
         ?>
       </div><!--end of title-->
      
       <div id="rightLogo">
       <img src="images/logo4.jpeg">
       </div><!--end of rightLogo-->
    <div id="searchBar">
      <div class="searchbar">
      <form action="SearchBar.php" method="get" >
        <div class="form-load">
<input type="text" name="txtsearch" placeholder="Search here">
<input type="submit" value="Search">
</div>
      </form>
      </div><!--end of .searchBar--> 
    </div>   <!--end of #searchBar--> 

   </div><!--end of header--> 
  