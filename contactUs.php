<html>
<head>
    <style>
a {
  text-decoration: none;
  color: black;
}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

button[type=submit] {
  background-color: #04AA6D;
  padding: 12px 20px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
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
        <li><a href="home.php">Home</a></li>
        <li><a href="products.php">Products</a></li>
        <li><a href="contactUs.php">Contact Us</a></li>
        <li><a href="aboutUs.php">About Us</a></li>
        <li><a href="login.php">Login</a></li>
        <li><a href="cart.php"><img src="cart-icon.png"></a></li>
      </ul>
<div class="container">
  <form action="action_page.php">

    <label for="fname">Full Name</label>
    <input type="text" id="fullname" name="fullname" placeholder="Your Full Name Used For The Online Order.">

    <label for="lname">Subject</label>
    <input type="text" id="lname" name="lastname" placeholder="The Subject You Need Assitance With.">

    <label for="subject">Description of Inquiry</label>
    <textarea id="subject" name="subject" placeholder="Please further describe your issue subject here, so that we are able to better assist you!" style="height:340px"></textarea>

    <button class = "submit" type = "submit" name = "submit"><a href= "successinquiry.php">Submit Support Ticket</a></button>

  </form>
</div>
</body>
</html>