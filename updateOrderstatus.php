<?php @session_start();
$a=$_REQUEST["txtOrderID"];
$b=$_REQUEST["cmdOrdrstatus"];
include("dbconnect.php");
mysqli_query($con,"update order_master set order_status='$b',last_update_date=now() where order_id='$a'") or die("error");
if($_SESSION["utype"]='user')
header("location:displayOrderMasterForCancleUser.php");
else
header("location:displayOredrMasterForAdmin.php");

?>