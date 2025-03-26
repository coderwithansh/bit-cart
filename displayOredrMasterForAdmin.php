<?php @session_start();
  if(isset($_SESSION["uname"]) && $_SESSION["utype"]='admin')
{
  include("header.php");
?>
<div id="content">

<div id="leftSide">
<?php
  include("adminMenu.php");
?>
</div><!--end of leftSide-->
<div id="rightSide">
<?php
include("dbconnect.php");

$Order=mysqli_query($con,"select * from order_master order by order_id desc") or die("error");
echo("<div id='mylist'>");
echo("<table border='1'>");
echo("<tr>");
echo("<th>Sl. NO.</th>");
echo("<th>Customer Name</th>");
echo("<th>Order Date</th>");
echo("<th>Total Amount</th>");
echo("<th>Current Status</th>");
echo("<th>status</th>");
echo("</tr>");
$cnt=0;
while($row=mysqli_fetch_array($Order))
{
  $cnt++;
  $id=$row["order_id"];
  echo("<tr>");
  echo("<td>");
  echo($cnt);
  echo("</td>");

  echo("<td>");
  echo($row["user_name"]);
  echo("</td>");

  echo("<td>");
  echo($row["order_date"]);
  echo("</td>");

  echo("<td>");
  echo($row["total_amnt"]);
  echo("</td>");

  echo("<td>");
  echo($row["order_status"]);
  echo("</td>");

  echo("<td>");
  echo("<a href='displayOredrDetailForAdmin.php?id=$id'>Detail</a>");
  echo("</td>");

  

  echo("<tr>");
}
echo("</table>");
echo("</div>");;
?>
</div><!--end of rightSide-->


</div><!--end of content-->

<?php
  include("footer.php");

}
else
{
  header("location:loginForm.php");
}
?>