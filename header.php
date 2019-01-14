
<?php
   $sql = "SELECT * FROM maincat";

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
    <title>Babu </title>
    <link href="style.css" rel="stylesheet" type="text/css">
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
                                   <!--<ul>
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
                                        <li><a href="cart.php">Cart (<?= $totalProduct ?>)</a></li>
                                     
                                </ul>
                        </div>
    
      
            </div>

                  
        </div> 

        </div>    
             