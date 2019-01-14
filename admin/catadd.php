<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
    }
?>

<html>
<head>
	<title>Add Category</title>
</head>

<body>
<?php
//including the database connection file
include_once("connection.php");
  
      //$sql = "SELECT * FROM category";
    $sql11 = "SELECT * FROM maincat";

    $result2 = $mysqli->query($sql11);
    
    $catArray  = [];

     while ($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC)) {
//       $str .= '<option value="' . $row2['id'] . '"> ' . $row2['name'] . '</option>
         $catArray[ $row2['id'] ] =  $row2['name'];
     }
    
    // go to htdocs/project_folder using terminal
    // sudo chmod 777 -R img 
if(isset($_POST['Submit'])  && isset($_FILES) ) {
    $target_dir = "./img";
    
    
    // echo "<h2> target_file  :: " . $target_file  . "</h2>";
    
	$name = $_POST['name'];
    $maincat_id = $_POST['maincat_id'];
    $image= $_FILES['image'];
//    $maincat_name = $_POST['maincat_name'];
		
	// checking empty fields
    
    if($name == "" || $maincat_id == "" ||$image == "") {
		echo "All fields should be filled. Either one or many fields are empty.";
		echo "<br/>";
    }
  else { 
      //  echo "maincat_id :: " .  $_POST['maincat_id'];
      //  echo " catArary " .  $catArray[ (int) $_POST['maincat_id']  ];
        
             
        $path = $target_dir . "/" .   $catArray[ (int) $_POST['maincat_id']  ]  . "/" ;
    
       // echo "<h2> path :: " . $path . "</h2>";
  
	   $target_file = $path  .  basename($_FILES["image"]["name"]);
           
        if (!file_exists($path)) {
            
            mkdir($path, 0777, true) or die("cannot create folder");
        }
      
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
		  //echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded. <br />";
//            		$prod_image =  $target_file;
            $image = "img/" . $catArray[ (int) $_POST['maincat_id']  ]  . "/" .  basename($_FILES["image"]["name"]);
        //    echo " img :::: " .  $image ;
        } else {
		  $image = "";
        }
	
        $sql = "INSERT INTO category(name, maincat_id, img) VALUES('$name', '$maincat_id', '$image')";      
           
//        echo " sql:: " .  $sql;
        
		//insert data to database	
		$result = mysqli_query($mysqli, $sql) or die('cannot add new product');
		
		//display success message
		echo "<font color='green'>Data added successfully.";
		echo "<br/><a href='catview.php'>View Result</a>";
	}
}
?>
</body>
</html>
