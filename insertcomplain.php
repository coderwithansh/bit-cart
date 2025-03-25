<?php  @session_start();

$rec=$_REQUEST["txtReciever"];
$a=$_REQUEST["txtheading"];
$b=$_REQUEST["txtDetail"];
$usr=$_SESSION["uname"];

include("dbconnect.php");
mysqli_query($con,"insert into message_info(msg_heading,msg_detail,sender_name,receiver_name,sent_date) values('$a','$b','$usr','$rec',now())") or die ("qurey error");

if($_SESSION["utype"]=="user")
header("location:complanForm.php?status=1");
else
header("location:displayAdminInbox.php");
?>