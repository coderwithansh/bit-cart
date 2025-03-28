<?php
include ("dbconnect.php");
function displaytable($sql)
{
    $con=$GLOBALS["con"];
    $rs=mysqli_query($con,$sql);
    $rc=mysqli_num_rows($rs);
    $cc=mysqli_num_fields($rs);
  echo("<div id='mylist'>");
    echo("<table border=1>");
    echo("<tr>");
    echo("<th> Sl. NO.</th>");
    for($i=1;$i<=$cc-1;$i++)
    {
        echo("<th>");
        echo(mysqli_fetch_field_direct($rs,$i)->name);
        echo("</th>");
    }
    echo("</tr>");

    $cnt=0;
   
    while($row=mysqli_fetch_array($rs))
    {
        $cnt++;
        echo("<tr>");
        echo("<td>$cnt</td>");
        for($j=1;$j<$cc;$j++)
        {
            echo("<td>");
            echo($row[$j]);
            echo("</td>");
        }
        echo("</tr>");
    }

    echo("</table>");
    echo("</div>");
}

?>