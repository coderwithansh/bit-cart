<?php @session_start();
  if(isset($_SESSION["uname"]) && $_SESSION["utype"]='user')
{
  include("header.php");
?>
<div id="content">

<div id="leftSide">
<?php
  include("userMenu.php");
?>
</div><!--end of leftSide-->
<div id="rightSide">
<?php
include("GetInbox.php");

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