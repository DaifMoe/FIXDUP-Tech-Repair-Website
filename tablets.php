<?php
session_start();
include('db2.php');
$status="";
if (isset($_POST['code']) && $_POST['code']!=""){
$code = $_POST['code'];
$result = mysqli_query(
$con,
"SELECT * FROM `tablets` WHERE `code`='$code'"
);
$row = mysqli_fetch_assoc($result);
$name = $row['name'];
$code = $row['code'];
$price = $row['price'];
$image = $row['image'];
 
$cartArray = array(
 $code=>array(
 'name'=>$name,
 'code'=>$code,
 'price'=>$price,
 'quantity'=>1,
 'image'=>$image)
);
 
if(empty($_SESSION["shopping_cart"])) {
  $_SESSION["shopping_cart"] = $cartArray;
  $status = "<div class='box'>Item has been added to the cart!</div>";
}else{
  $array_keys = array_keys($_SESSION["shopping_cart"]);
  if(in_array($code,$array_keys)) {
$status = "<div class='box' style='color:red;'>
Item is already present in your cart!</div>"; 
  } else {
  $_SESSION["shopping_cart"] = array_merge(
  $_SESSION["shopping_cart"],
  $cartArray
  );
  $status = "<div class='box'>Item has been added to the cart!</div>";
}

}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<div class="headder">
    <div class="logo">
      <h2>FIXDUP Tech & Repair</h2>
    </div>
    <div class="navbar">
      <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="products.php">Products</a></li>
        <li><a href="contactUs.php">Contact Us</a></li>
        <li><a href="aboutUs.php">About Us</a></li>
        <li><a href="#">Account</a></li>
        <li><a href="cart.php"><img src="cart-icon.png" /><?php
if(!empty($_SESSION["shopping_cart"])) {
$cart_count = count(array_keys($_SESSION["shopping_cart"]));
?>
 Cart</a><span>
<?php echo $cart_count; ?></span>
<?php
}
?></li>

      </ul>
    </div>
    

  </div>
<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>
<br>
    

<h2 class="mobiles">Our Selection of Tablets</h2>
<?php
$result = mysqli_query($con,"SELECT * FROM `tablets` LIMIT 0,8");
while($row = mysqli_fetch_assoc($result)){
    
    echo "<div class='product_wrapper'>
    <form method='post' action=''>
    <input type='hidden' name='code' value=".$row['code']." />
    <div class='image'><img src='".$row['image']."'></div>
    <div class='name'>".$row['name']."</div>
    <div class='price'>$ ".$row['price']."</div>
    <button type='submit' class='buy'>Add to Cart</button>
    </form>
    </div>";
        }
    
?>
<h2 class="laptops"></h2>
<?php
$result = mysqli_query($con,"SELECT * FROM `tablets` LIMIT 8,8");
while($row = mysqli_fetch_assoc($result)){
    
    echo "<div class='product_wrapper'>
    <form method='post' action=''>
    <input type='hidden' name='code' value=".$row['code']." />
    <div class='image1'><img src='".$row['image']."'></div>
    <div class='name'>".$row['name']."</div>
    <div class='price'>$ ".$row['price']."</div>
    <button type='submit' class='buy'>Add to Cart</button>
    </form>
    </div>";
        }
    

?>
<h2 class="laptops"></h2>
<?php
$result = mysqli_query($con,"SELECT * FROM `tablets` LIMIT 16,24");
while($row = mysqli_fetch_assoc($result)){
    
    echo "<div class='product_wrapper1'>
    <form method='post' action=''>
    <input type='hidden' name='code' value=".$row['code']." />
    <div class='image2'><img src='".$row['image']."'></div>
    <div class='name'>".$row['name']."</div>
    <div class='price'>$ ".$row['price']."</div>
    <button type='submit' class='buy1'>Add to Cart</button>
    </form>
    </div>";
        }
    

mysqli_close($con);
?>

 
<div style="clear:both;"></div>
 
<div class="message_box" style="margin:10px 0px;">
<?php echo $status; ?>
</div>

</body>
</html>