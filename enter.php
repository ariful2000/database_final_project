<?php 
	include_once 'insert.php';

	$first_name = $_POST["first_name"];
	$last_name = $_POST["last_name"];
	$gender = $_POST["gender"];


	$sql = "INSERT INTO employees (first_name, last_name, gender)
			VALUES ('$first_name', '$last_name', '$gender');";


	mysqli_query($conn, $sql);

	header("Location ../index.php?enter=success");