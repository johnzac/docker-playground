<?php
$query=$_GET['query'];
$out=`/usr/html/scripts/getData.sh $query`;
echo "Done";
?>

