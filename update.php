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
if (isset($_POST['id'])) {
    $id = $_POST['id'];
}

$query = "UPDATE `std_data` SET `std_name`='$name',`std_age`='$age',`std_class`='$class',`std_section`='$section' WHERE std_id = $id";
$result = mysqli_query($conn, $query);
$arr = [];
if ($result) {
    $arr['success'] = "true";
} else {
    $arr['success'] = "false";
}
print(json_encode($arr));



?>