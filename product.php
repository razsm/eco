<?php session_start(); ?>
<!--Header part -->
<?php

    require_once('connection.php');
     require_once('header.php');
   
    //$sql = "SELECT * FROM category";
    $sql = "SELECT * FROM maincat";

    $result = $mysqli->query($sql);

   $result2 = $mysqli->query($sql);

    $str = "";
     while ($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC)) {
       $str .= '<option value="' . $row2['id'] . '"> ' . $row2['name'] . '</option>';
     }
   
?>

<!DOCTYPE HTML>
<html>
    <title>RS </title>
    <link href="style.css" rel="stylesheet" type="text/css">
     <!--<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">-->
    <link rel="stylesheet" type="text/css" href="slidecss/style.css">

    
    <body>
        <!--CONTAINER-->
    <div id="container">
        
        <!--HEADER-->
      
                        
              
<!-- Header part ending-->
        
        <!-- Product image part-->
<?php

    if( isset($_GET) && isset( $_GET['category_id'] ) ) {
        $category_id = $_GET['category_id'];
        $sql  ="SELECT * FROM `product` WHERE category_id = '$category_id'";
    } 
    else if( $_GET['maincat_id'] ) {
         $maincat_id = $_GET['maincat_id'];
        $sql  ="SELECT * FROM `category` WHERE maincat_id = '$maincat_id'";
    }    
    else {
        //echo "<h1> Please select category first </h1>";
        $category_id = 0;
    }


    // echo "<h1>" . $category_id . "</h1>";

    

     //echo "sql : " . $sql . " <hr />";
include_once("connection.php");

//fetching data in descending order (lastest entry first)

//$result = mysqli_query($mysqli, "SELECT s.id as id, s.name as subcat_name, c.maincat_id as maincat_id, c.id as category_id FROM sub_category as s LEFT JOIN category as c on c.id = s.category_id");

$result = mysqli_query($mysqli,  $sql);
     
?>



<html>
<head>
	<title>Homepage</title>
</head>

<body>
    
   <!--  <div style="display: flex">
       <div class= "filter">
        <form action="">
            <a>By Color</a><br>
  <input type="checkbox" name="color" value="black">Black<br>
  <input type="checkbox" name="color" value="brown">Brown<br><br>
            
            <a>By Size</a><br>
  <input type="checkbox" name="size" value="small">Small<br>
  <input type="checkbox" name="size" value="medium">Medium<br>
  <input type="checkbox" name="size" value="large">Large<br><br>
  <input type="submit" value="Filter">
</form>
        </div></div>--> 
        
        
              <!-- <div class= "display">  
              <div class= "window"></div>-->
       
           
            <?php ?>
                	
            <div class="subcat_res">
                <ul>
                
       <?php    
                     if(  mysqli_num_rows($result) < 1  ){
                                    echo "<h1>Category is empty</h1>";
                                                 }   
                      else{
      while($res = mysqli_fetch_array($result)) { ?>
               
                 <li>
                <div class="prod"><!--<a href="prod.php?prod_code="> -->
              <!--  <form method="post" action="addcart.php?action=add&code=">-->
                 <?php 
          
                   echo "<a href='prod.php?category_id=". $res['id'] . "'> " . "<img src='./admin/".$res['img'] . "'/>" . "</a> " ;
                  
                   echo "<br><br>";
			       echo "<a style='color:#333;'>".$res['name']."</a>";		
//                   echo "<p style='color:#333; '>".$res['price']."</p>";
                   echo "<br><br>";
         
                 ?>  
                    <!--<div><a href="prod.php?prod_id=<?=  $res['id'] ?>"> Add to Cart </a> </div>-->
                 </div></li>
           <?php
      }
                      
            
                      }
            ?>
  </ul>
                 
    
    </div>
                <!--   </div>-->
  
		
		
</body>
