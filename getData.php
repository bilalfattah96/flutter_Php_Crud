<?php
include('conn.php');

if(isset($_POST['id'])){
    $id=$_POST['id'];

}
$query = "SELECT * FROM `std_data` WHERE std_id = $id"; 
$result = mysqli_query($conn,$query);

$arr=[];
while($row = mysqli_fetch_array($result)){
    $row['std_id'] = (string) $row['std_id'];
    $arr[] = $row;
}
print(json_encode($arr));
?>