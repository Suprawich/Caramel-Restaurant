<?php

  include('config.php');

  session_start();
  require_once('dbcontroller.php');
  $db_handle = new DBcontroller();
  $_SESSION['pdArr'] = $product_array;

  if(isset($_POST['add_to_cart'])){

    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_image = $_POST['product_image'];
    $product_quantity = 1;

    $select_cart = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name'");

    if(mysqli_num_rows($select_cart) > 0){
        $message[] = 'product already added to cart';
    }else{
        $insert_product = mysqli_query($conn, "INSERT INTO `cart`(name, price, image, quantity) VALUES('$product_name', '$product_price', '$product_image', '$product_quantity')");
        $message[] = 'product added to cart succesfully';
    }

  }

  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- custom css file link  -->
    <link rel="stylesheet" href="cartstyle.css">
    <script src="script.js" defer></script>
</head>
<body>
  
<?php include 'header.php'; ?>
  
<div class="container">
      <div class="sidebar">
          <a href="Fast Food.php" class="sidebar-items">
            Fast Food
          </a>
          <a href="vegetarian.php" class="sidebar-items">
            Vegetarian
          </a>
          <a href="italian.php" class="sidebar-items">
            Italian
          </a>
          <a href="thai.php" class="sidebar-items">
            Thai
          </a>
          <a href="dessert.php" class="sidebar-items">
            Dessert
          </a>
      </div>
      <div class="product" style="color:#784A14;">
        <?php
        include('menudb.php');

        $product_array = $db_handle->runQuery("SELECT * FROM menu ORDER BY menuid ASC");
        if(!empty($product_array)) {
          foreach($product_array as $key => $value) {
        ?>
        <div>
          <form action="01.php" method="post">
          <input type="hidden" name="pd-id" value="<?php echo $product_array[$key]["code"] ?>">
          <a href="01.php?id=<?php echo $product_array[$key]["code"] ?>" style="text-decoration:none; color:#784A14;">
          
            <div class="product-items">
              <img class="product-img" src="imgs/<?php echo $product_array[$key]["imgindex"]; ?>" alt="">
              <p id="pd-name" style="font-size: 1.2vw;"><?php echo $product_array[$key]["name"]; ?></p>
              <p style="font-size: 1vw;"><?php echo $product_array[$key]["price"] . " Baht"; ?></p>
              
              
            </div>
          </a>
          
        </form>
        <form action="" method="post">
          <?php
              $fetch_product = getFromMenu($pdo2, $product_array[$key]["code"]);
              ?>
            <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
            <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
            <input type="hidden" name="product_image" value="<?php echo $fetch_product['imgindex']; ?>">
            <input type="submit" class="btn" value="add to cart" name="add_to_cart">
        </form>
        </div>
        
        <?php
          }
        }
        ?>
      </div>
    </div>
  
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

    
</body>
</html>