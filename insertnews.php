<?php
$a=$_REQUEST["txtheading"];
$b=$_REQUEST["txtDetail"];

include("dbconnect.php");
mysqli_query($con,"insert into news_info(news_headding,news_detail,reg_date,del_status)
values('$a','$b',now(),0)") or die("qurey error");

header(("location:newsForm.php?status=1"))


?>