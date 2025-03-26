<?php
  include("header.php");
?>
<div id="content">

<div id="leftSide">
<?php
  include("adminMenu.php");
?>
</div><!--end of leftSide-->
<div id="rightSide">
  <div style="width: 80%; margin: 10px; padding: 20px; border:2px solid black">
  <?php
  $id=$_REQUEST["nid"];
  include("dbconnect.php");
  $rsnews=mysqli_query($con,"select * from message_info where msg_id='$id'order by sent_date desc") or die ("qurey error");
  
  $row=mysqli_fetch_array($rsnews);
  
    $id=$row["msg_id"];
    $hd=$row["msg_heading"];
    $sn=$row["sender_name"];
    $sd=$row["sent_date"];
    $dtl=$row["msg_detail"];
  echo("Heading : '$hd");
  echo("<hr>");
  echo("Rec. Date : '$sd");
  echo("<hr>");
  echo("Sender Name : '$sn");
  echo("<hr>");
  echo("Msg. Detail : '$dtl");
  echo("<hr>");
  
  ?>
  </div>

  <div id="repbtn">
    <a href="replyFormByAdmin.php?usr=<?=$sn?>">Relpy</a>
  </div>
</div><!--end of rightSide-->


</div><!--end of content-->

<?php
  include("footer.php");
?>