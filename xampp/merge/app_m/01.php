<?php
    include('menudb.php');
    session_start();
    require_once('dbcontroller.php');
    $db_handle = new DBcontroller();
    include('config.php');
    if(isset($_POST['update_update_btn'])){
        $update_value = $_POST['update_quantity'];
        $update_id = $_POST['update_quantity_id'];
        $update_quantity_query = mysqli_query($conn, "UPDATE cart SET quantity = '$update_value' WHERE id = '$update_id'");
        if($update_quantity_query){
           header('location:cart.php');
        };
     };
    if(isset($_POST['add_to_cart'])){

        $product_name = $_POST['product_name'];
        $product_price = $_POST['product_price'];
        $product_image = $_POST['product_image'];
        $product_quantity = 1;
     
        $select_cart = mysqli_query($conn, "SELECT * FROM cart WHERE name = '$product_name'");
     
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
    <title>Food</title>
    <link rel="stylesheet" href="food_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="script.js" defer></script>
    <link rel="stylesheet" href="cartstyle.css">
    
</head>
<body>

    <?php include 'header.php'; ?>
    
    <div class="circle"></div>
    <div class="rect"></div>
    <?php
        $fetch_product = getFromMenu($pdo2,  $_REQUEST['id']);
        
    ?>    
    <img src="imgs/<?php echo $fetch_product['imgindex'];?>" alt="" class="food" style="background-color:transpalent;">

    <div class="des-contain" style="background-color:transpalent;">
        <div class="description" style="">
            <h1><?php echo $fetch_product['name'];?></h1>
            <p class="TH">
                <?php echo $fetch_product['descriptionth'];?>
            </p>
            <p class="EN">
                <?php echo $fetch_product['descriptionen'];?>
            </p>
        </div>
        
        <div class="price">
            <p class="TH">ราคา <?php echo $fetch_product['price'];?> บาท</p>
            <p class="EN">Price <?php echo $fetch_product['price'];?> Baht</p>
        </div>
        <form action="" method="post">
        <div class="butt">
            <?php
                $fetch_product = getFromMenu($pdo2,$_REQUEST['id']);
                ?>
                <!-- <div class="price">$<?php echo $fetch_product['price']; ?>/-</div> -->
                <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
                <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
                <input type="hidden" name="product_image" value="<?php echo $fetch_product['imgindex']; ?>">
                <input id="add-butt-cart" type="submit" class="add-butt" value="add to cart" name="add_to_cart">
        </div>
        </form>
    </div>
    
</body>
</html>