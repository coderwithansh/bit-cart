<?php @session_start();
  if(isset($_SESSION["uname"]) && $_SESSION["utype"]='admin')
{
  include("header.php");
?>
<div id="content">

<div id="leftSideadmin">
<?php
  include("adminMenu.php");
?>
</div><!--end of leftSide-->
<div id="rightSide">

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