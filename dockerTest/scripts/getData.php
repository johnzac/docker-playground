<?php
$query=$_GET['query'];
$query = preg_replace('/\s+/', '+', $query);
$out=`/usr/html/scripts/getData.sh $query`;
//echo "Done";
echo "/usr/html/scripts/getData.sh $query";
?>

