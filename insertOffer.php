<?php
$cats="";
function getchildcategory($prnt)
{
    $GLOBALS["cats"]=$GLOBALS["cats"].$prnt."-";
    include("dbconnect.php");
    $rsCat=mysqli_query($con,"select cat_id from category_info where cat_parent_id='$prnt'");
    if(mysqli_num_rows($rsCat)==0)
    {
        return;
    }
    else{
        while($row=mysqli_fetch_array($rsCat))
        {
            getchildcategory($row["cat_id"]);
        }
    }
}
$a=$_REQUEST["txtOffterName"];
$b=$_REQUEST["dtsatrt"];
$c=$_REQUEST["dtclose"];
$d=$_REQUEST["cmbcategory"];
$e=$_REQUEST["txtDiscount"];

$tempdt=strtotime("1 day",strtotime($c));

$newdate=date('Y-m-d',$tempdt);
getchildcategory($d);


include("dbconnect.php");

// extra string remove 
$srt=substr($cats,0,strlen($cats)-1);


mysqli_query($con,"insert into offer_info(offer_name,offer_srart_dt,offer_end_dt,cat_type,offer_discount,reg_date) values('$a','$b','$newdate','$srt','$e',now())") or die("query error");

header("location:offerForm.php?status=1");
?>