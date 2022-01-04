<?php
include("functions/init.php");



/*payment tracker
- split names into two
- group records based on the first name
- any where it finds a variabel, it sum up their record

*/

//split names into two
/*$sql = "SELECT * FROM student ORDER BY `name` asc";
$rsl = query($sql);
while ($row = mysqli_fetch_array($rsl)) {

$myvalue = $row['name'];
$arr = explode(' ',trim($myvalue));
$new = $arr[0]; // will print Test


//create associative array
$rr = array("a"=>"red","b"=>"green","c"=>"red");

echo $new;

}*/

$sql = "SELECT * FROM student ORDER BY `name` asc";
$rsl = query($sql);
foreach($rsl as $row) {

    $myvalue = $row['name'];
    $arr = explode(' ',trim($myvalue));
    $new = $arr[0]." "; // will print Test   
}

    $str = 'ABOLADE ABOLADE LESHI LESHI';
    $st = implode(' ',array_unique(explode(' ', $str)));

    echo md5('adminlogin');
    //echo $st;
/*while ($row = mysqli_fetch_assoc($rsl)) {

    $myvalue = $row['name'];
    $arr = explode(' ',trim($myvalue));
    $new = $arr[0]." "; // will print Test

    //echo $new;
    $str = $new;
    $st = implode(' ',array_unique(explode(' ', $str)));
    echo $st;

}*/


    

//echo md5('7175Tmjcf@');
/*?8$gb = "UPDATE admin SET `password` = '$ab' WHERE `username` = 'Daglore'";
$gf = query($gb);*/

/*$ses = "2020/2021";


 $a = str_split($ses,4);
 $b = $a[0] + 1;
 $c = str_split($ses,5);
 $d = $c[1] + 1;

 $e = $b."/".$d;

 echo $e;

 //echo outstanding();*/

 /*$adid = 'DMS/2019/2031';
 $name = "Gabolade Greatness";

$spill = "SELECT sum(`amount`) as spilltot FROM spillover WHERE `adid` = '$adid' AND `name` = '$name'";
$spls  = query($spill);
$sph   = mysqli_fetch_array($spls);

echo $sph['spilltot'];


$sql = "BACKUP DATABASE bursary TO DISK = 'C:\xampp\htdocs\Jobs\daglorebus\bursary.bak'";
$res = query($sql);*/
?>