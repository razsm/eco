<?php session_start(); ?>

<?php
    require_once('connection.php');

	
    //$sql = "SELECT * FROM category";
    $sql = "SELECT * FROM maincat";

//    $result = $mysqli->query($sql);

$result2 = $mysqli->query($sql);

    $str = "";
    $str2 = "";
     while ($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC)) {
       $str .= '<option value="' . $row2['id'] . '"> ' . $row2['name'] . '</option>';
       $str2 .= '<a href="product.php?maincat_id='. $row2['id'] . '"> '.  $row2['name'] . '</a><br>';
     }

   
    if (isset($_SESSION['addToCart'])) {
            $totalProduct = count($_SESSION['addToCart']);
        } else {
           $totalProduct = 0;
        }
	


?>

<!DOCTYPE HTML>
<html>
    <title>Babu</title>
    <link href="style.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="css/blink.css">
    <link rel="stylesheet" type="text/css" href="slidecss/style.css">
 
    
    <body>
        <!--CONTAINER-->
    <div id="container">
        
        <!--HEADER-->
        <div id="header">
            <div id="logo"><a href="index.php"><img src="img/logo3.png"  alt=""></a></div>
              
            <div id="search-option">
                             <form action="search.php" method="POST"> 
                                  <div id="catagory">
                                       <select name="category" id="field">
                                           <option value="">All</option>
                                          <?php echo  $str ?>
                                        </select>
                                    </div>
                                <input id="search" type="text" name="query" placeholder="Type here">
                                <input id="submit" type="submit" value="">
                              </form>
                           </div>
            
            
          
  <div id="navbar">  
          
      
     
          <div class="dropdown">
              <span><a>Departments</a></span>
               
                <div class="dropdown-content"> <?= $str2 ?> </div>
               
         </div>  
      
           
      
                       <div class="criteria">
                                  <!-- <ul>
                                        <li><span> <a href="deals.php">Today's Deal</a></span></li>
                                         <li><span> <a href="giftcard.php">Gift Card</a></span></li>
                                    </ul>-->
                                    
                         </div>
                        <div class="right">
                                 <ul>
                                    <?php 
            
                                        if( isset( $_SESSION['id'] ) ) {
                                            echo '<li> <a >'. $_SESSION['name'] .'</a> </li>';                                  
                                            echo '<li><a href="logout.php"> Logout </a></li>';
                                        } else {
                                            echo '<li><a href="login.php">login</a></li>';                                  
                                            echo '<li><a href="signup.php"> Sign up</a></li>';
                                        }
                                    ?>
                                     
                                    <li><a href="cart.php">Cart (<?= $totalProduct ?>)  </a></li>
                                </ul>
                        </div>
    
      
            </div>

                  
        </div> 
        
        <div id="content_area">
           <figure>
               <img src="add/hqdefault.jpg">
               <img src="add/lowes-ad.jpg">
               <img src="add/Oxfam-Vintage-Fashion-Big-Apple.jpg">
               <img src="add/samsungident-20150330020004791.jpg">
             </figure>
          
            
       </div>
       

                 <div class="prod1" >
        
         <?php   
         $query  = "SELECT * FROM category WHERE maincat_id='24' LIMIT 4";
       
        $result = $mysqli->query( $query );
        ?>
        
        
        <ul>
        <?php
         while($row = $result->fetch_assoc() ) { ?>
             <li>
                <div class="prod">
                <div style="min-width: 330px; height: 300px;"> 
                    <?php 
                   
                   echo "<a href='prod.php?category_id=". $row['id'] . "'> " . "<img width='290' height='230' src='./admin/".$row['img'] . "'/>" . "</a> " ;
                    echo "<br><br>";
			       echo "<a style='color:#333;'>".$row['name']."</a>";	
            

                      
                 ?>  
                    <!--<a href="prod.php?category_id=<?//=  $row['id'] ?>"> Add to Cart </a>-->
                </div>
            </div> </li>
            <?php
         }
            
        ?>
            </ul>
        </div>
        <!--Wo
             
              <div class="prod2"></div>                
                <div class="prod3"></div>
           
        
        
        <!--FOOTER-->
        <div id="footer"><a>FOOTER</a>
           <ul>
               <ul><a href="info.php">Information</a>
                <li>About Us</li>
                </ul>
               <ul><a>Customer Service</a>
                <li>About Us</li>
                </ul>
        </ul>
            </div>
         
         </div>
    <!--END CONTAINER-->
          <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.blink.js"></script>
    <script type="text/javascript">
        
      $(document).ready(function(){
        $("#blink").blink();
      });
    </script>

    </body>
    
</html>