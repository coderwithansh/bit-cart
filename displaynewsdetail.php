<?php
  include("header.php");
?>
<div id="content">
<table border="1" width="80%" align="center">
  <tr>
    <th width="100">Sl. No</th>
    <th> News Detail</th>
  </tr>
  <?php
  $x=$_REQUEST["nid"];
  include("dbconnect.php");
  $rsnews=mysqli_query($con,"select news_detail from news_info where news_id=$x") or die ("qurey error");
  $cnt=0;
  while($row=mysqli_fetch_array($rsnews))
  {
    $cnt++;
    
    $hd=$row["news_detail"];
    echo("<tr>");
    echo("<td>");
    echo($cnt);
    echo("</td>");

    
    echo("<td>");
    
    echo($hd);
   
    echo("</td>");
    echo("</tr>");
  }
  ?>
</table>
</div><!--end of content-->

<?php
  include("footer.php");
?>