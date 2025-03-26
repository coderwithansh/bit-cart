<style>
  #orderstatus{
    width: 740px;
    margin: 10px;
    padding: 10px;
    background-color: #ffc;
  }
</style>
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
<?php
$id=$_REQUEST["id"];

?>
<div id="rightSide">
  <div id="orderstatus">
<form action="updateOrderstatus.php" method="get">
Change Order Status
<input type="hidden" name="txtOrderID" value="<?php echo($id)?>">
<select name="cmdOrdrstatus" id="">
<option>Transit</option>
<option>Dispatched</option>
<option>receive</option>
<option>Reject</option>
<option>Cancle</option>
<option>Returned</option>
</select>
<input type="submit" value="ok">
</form>
</div>

<?php
include("dbconnect.php");

$rsorder=mysqli_query($con,"select * from order_detail,item_info where order_detail.item_id=item_info.item_id and order_ref_id='$id' ") or die("error");
echo("<div id='mylist'>");
echo("<table border='1'>");
echo("<tr>");
echo("<th>Sl. NO.</th>");
echo("<th>Item Name</th>");
echo("<th>Quantity</th>");
echo("<th>Rate</th>");
echo("<th>status</th>");
echo("</tr>");
$cnt=0;
while($row=mysqli_fetch_array($rsorder))
{
  $cnt++;
  $id=$row["order_det_id"];
  echo("<tr>");
  echo("<td>");
  echo($cnt);
  echo("</td>");

  echo("<td>");
  echo($row["item_name"]);
  echo("</td>");

  echo("<td>");
  echo($row["item_quantity"]);
  echo("</td>");

  echo("<td>");
  echo($row["item_rate"]);
  echo("</td>");

  echo("<td>");
  echo("<a href='displayOredrDetailForAdmin.php?id=$id'>Detail</a>");
  echo("</td>");

  

  echo("<tr>");
}
echo("</table>");




echo("</div>");


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