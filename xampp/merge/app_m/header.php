<header class="header">
   <div class="flex">

      <a href="#" class="logo">
         <img src="imgs/Group 6.png" alt="">
      </a>

      <nav class="navbar">
         <a href="#" style="font-size: 16px; ">Home</a>
         <a href="test.php" style="font-size: 16px; ">Menu</a>
         <a href="#" style="font-size: 16px; ">My Order</a>
      </nav>

      <?php
      
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);

      ?>

      <a href="cart.php" class="cart">
         <i class="fas fa-cart-shopping"></i> 
         <span style="text-decoration:none;"><?php echo $row_count; ?></span> 
      </a>
      <!-- <a href='logout.php'> -->
      <div class="dropbtn" style="align-item:center;">
         <button onclick="myFunction()" class="profile" style="font-size:16px; border:none; cursor: pointer; margin-left:30px; margin-right:30px; color:#784A14;">
               <?php 
                  session_start();

                  if(!$_SESSION['logged_in']){
                     header('Location: error.php');
                     exit();
                  }
                  extract($_SESSION['userData']);
                  
                  $avatar_url = "https://cdn.discordapp.com/avatars/$discord_id/$avatar.jpg";
                  include_once('functions.php');
                  
                  $fetchdata = new DB_con();
                  $sql = $fetchdata->fetchdata();
                  while($row = mysqli_fetch_array($sql)) {
                     if($row['discord_id'] == $discord_id){
                           echo $row['discord_username'];
                     }

               ?>
               <?php 
                  }
               ?>
         </button>
         
         <div class="dropdown">
            <div id="myDropdown" class="dropdown-content">
               <a href="logout.php">Log Out</a>
         </div>
      </div>
      
            
   <!-- </a>   -->          
   </div>
   
</header>
