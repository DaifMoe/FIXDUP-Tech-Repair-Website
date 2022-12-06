<?php
session_start();
$status="";
if (isset($_POST['action']) && $_POST['action']=="remove"){
if(!empty($_SESSION["shopping_cart"])) {
    foreach($_SESSION["shopping_cart"] as $key => $value) {
      if($_POST["code"] == $key){
      unset($_SESSION["shopping_cart"][$key]);
      $status = "<div class='box' style='color:red;'>
      Product is removed from your cart!</div>";
      }
      if(empty($_SESSION["shopping_cart"]))
      unset($_SESSION["shopping_cart"]);
      } 
}
}
 
if (isset($_POST['action']) && $_POST['action']=="change"){
  foreach($_SESSION["shopping_cart"] as &$value){
    if($value['code'] === $_POST["code"]){
        $value['quantity'] = $_POST["quantity"];
        break; // Stop the loop found the loop after the product is located and found.
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
  <link rel="stylesheet" href="style1.css">
  <title>Document</title>
</head>
<body>
<div class="cart">

<?php
if(isset($_SESSION["shopping_cart"])){
    $total_price = 0;
?> 

<table class="table">
<tbody>
<tr>
<td></td>
<td>ITEM NAME</td>
<td>QUANTITY</td>
<td>UNIT PRICE</td>
<td>TOTAL</td>
</tr> 

<?php 
foreach ($_SESSION["shopping_cart"] as $product){
?>

<tr>
<td>
<img src='<?php echo $product["image"]; ?>' width="100" height="90" />
</td>
<td><?php echo $product["name"]; ?><br />
<form method='post' action=''>
<input type='hidden' name='code' value="<?php echo $product["code"]; ?>" />
<input type='hidden' name='action' value="remove" />
<button type='submit' class='remove'>Remove Item</button>
</form>
</td>
<td>
<form method='post' action=''>
<input type='hidden' name='code' value="<?php echo $product["code"]; ?>" />
<input type='hidden' name='action' value="change" />
<select name='quantity' class='quantity' onChange="this.form.submit()">
<option <?php if($product["quantity"]==1) echo "selected";?>
value="1">1</option>
<option <?php if($product["quantity"]==2) echo "selected";?>
value="2">2</option>
<option <?php if($product["quantity"]==3) echo "selected";?>
value="3">3</option>
<option <?php if($product["quantity"]==4) echo "selected";?>
value="4">4</option>
<option <?php if($product["quantity"]==5) echo "selected";?>
value="5">5</option>
<option <?php if($product["quantity"]==6) echo "selected";?>
value="6">6</option>
<option <?php if($product["quantity"]==7) echo "selected";?>
value="7">7</option>
<option <?php if($product["quantity"]==8) echo "selected";?>
value="8">8</option>
<option <?php if($product["quantity"]==9) echo "selected";?>
value="9">9</option>
<option <?php if($product["quantity"]==10) echo "selected";?>
value="10">10</option>
<option <?php if($product["quantity"]==11) echo "selected";?>
value="11">11</option>
<option <?php if($product["quantity"]==12) echo "selected";?>
value="12">12</option>
</select>
</form>
</td>
<td><?php echo "$ ".$product["price"]; ?></td>
<td><?php echo "$ ".$product["price"]*$product["quantity"]; ?></td>
</tr>
<?php
$total_price += ($product["price"]*$product["quantity"]);
}
?>
<tr>
<td colspan="5" align="right">
<strong>TOTAL: <?php echo "$ ".$total_price; ?></strong>
<br>
<button type="submit" value="Proceed to Checkout"><a href = "https://buy.stripe.com/test_7sIeWP75N5Q29pK288">Proceed to Checkout</a></button>
</td>
</tr>
</tbody>
</table> 
  
  <?php
}else{
 echo "<h3 >Your cart is empty!</h3>";
 }
?>
</div>
 
<div style="clear:both;"></div>
 
<div class="message_box" style="margin:10px 0px; ">
<?php echo $status; ?>
</div>
<button type="submit" value="return"><a href="index.php">Go Back</a></button>

</body>
</html>