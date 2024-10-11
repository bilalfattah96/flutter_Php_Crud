<?php
include('conn.php');

if(isset($_POST['id'])){
    $sid=$_POST['id'];

}

$query="DELETE FROM `std_data` WHERE std_id = $sid";

$result=mysqli_query($conn,$query);
$arr=[];
if($result){
    $arr['success']='true';
}
else{
    $arr['success']='false';
}
print(json_encode($arr));
?>