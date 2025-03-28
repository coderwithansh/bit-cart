<table border="1" width="80%" align="center">
  <tr>
    <th width="100">Sl. No</th>
    <th> Message Heading</th>
    <th> Recieve Date</th>
    <th> Sender Name</th>
  </tr>
  <?php
  include("dbconnect.php");
  $usr=$_SESSION["uname"];
  $rsnews=mysqli_query($con,"select msg_id,msg_heading,sent_date,sender_name from message_info where receiver_name='$usr'order by sent_date desc") or die ("qurey error");
  $cnt=0;
  while($row=mysqli_fetch_array($rsnews))
  {
    $cnt++;
    $id=$row["msg_id"];
    $hd=$row["msg_heading"];
    $sn=$row["sender_name"];
    $sd=$row["sent_date"];
    
    echo("<tr>");
    echo("<td>");
    echo($cnt);
    echo("</td>");

    
    echo("<td>");
    if($_SESSION["utype"]=="admin")
    {
    echo("<a href='displayAdminMsgDetail.php?nid=$id'>");
    echo($hd);
    
    echo("</a>");
    }
    else
    {
    echo("<a href='displayUserMsgDetail.php?nid=$id'>");
    echo($hd);
    
    echo("</a>");
    }
    echo("</td>");

    echo("<td>");
    echo($sd);
    echo("</td>");

    echo("<td>");
    echo($sn);
    echo("</td>");
    echo("</tr>");
  }
  ?>
</table>