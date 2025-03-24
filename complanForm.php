<?php
  include("header.php");
?>
<div id="content">

<div id="leftSide">
<?php
  include("userMenu.php");
?>
</div><!--end of leftSide-->
<div id="rightSide">
<div> &nbsp; 
  <?php
    if(isset ($_REQUEST["status"]))
    {
      echo("<div id='responseMsg'>");
       if($_REQUEST["status"]==1)
       {
        echo("Complain has been saved");
       }
      echo("</div>");
    }
  ?>
</div>    
<div id="myForm">
<form method="post" enctype="multipart/form-data" action="insertcomplain.php">
<?php
$rec="admin";

?>
<label> Complain To </label>
<input type="text" name="txtReciever" readonly value="<?php echo($rec);?>"/>
<label> Complain Heading </label>
<input type="text" name="txtheading"/> 
<label> Complain Detail </label>
<textarea name="txtDetail" rows="10"></textarea>


<input type="submit" value="Ok"/> 
<input type="reset" value="Cancel"/> 

</div><!--myForm--> 
</div><!--end of rightSide-->


</div><!--end of content-->

<?php
  include("footer.php");
?>