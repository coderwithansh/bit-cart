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
<div id="rightSide">
<?php
require_once("library.php");
displaytable("select * from category_info");
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