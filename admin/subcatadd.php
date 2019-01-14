<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
?>

<html>
<head>
	<title>Add Sub Category</title>
</head>

<body>
<?php
//including the database connection file
include_once("connection.php");

if(isset($_POST['Submit'])) {	
	$name = $_POST['name'];
    $maincat_id = $_POST['maincat_id'];
    $category_id = $_POST['category_id'];
		
	// checking empty fields
	if(empty($name)) {
				
		if(empty($name)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		
		//link to the previous page
		//echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
	} else { 
		// if all the fields are filled (not empty) 
			
		//insert data to database	
		$result = mysqli_query($mysqli, "INSERT INTO sub_category(name, maincat_id, category_id) VALUES('$name', '$maincat_id','$category_id')");
		
		//display success message
		echo "<font color='green'>Data added successfully.";
		echo "<br/><a href='subcatview.php'>View Result</a>";
	}
}
?>
</body>
</html>
