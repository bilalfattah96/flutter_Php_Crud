<?php
include('conn.php');
if (isset($_POST['name'])) {
    $name = $_POST['name'];
}
if (isset($_POST['age'])) {
    $age = $_POST['age'];
}

if (isset($_POST['class'])) {
    $class = $_POST['class'];
}

if (isset($_POST['section'])) {
    $section = $_POST['section'];
}

$query = "INSERT INTO `std_data`( `std_name`, `std_age`, `std_class`, `std_section`) VALUES ('$name','$age','$class','$section')";
$result = mysqli_query($conn, $query);
$arr = [];
if ($result) {
    $arr['success'] = "true";
} else {
    $arr['success'] = "false";
}
json_encode($arr);


  


?> 

