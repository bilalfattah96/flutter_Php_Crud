<?php
include('conn.php');
$query = "SELECT * FROM `std_data`";

$result = mysqli_query($conn,$query);

$arr=[];
while($row = mysqli_fetch_array($result)){
    $arr[] = $row;
}
print(json_encode($arr));

?>