<html>
<head>
    <style>
    h1{
    color: white;
    }
    h3{
    color: white;
    }
    label{
    color: white;
    font-weight: 600;
    border-bottom: #F0F0F0 1px solid;
    padding: 10px;
    }
    button{
    margin: 0 auto;
    padding: 10px 10px;
    font-family: poppins, sans-serif;
    align-items: center;
    font-weight: 800;
    border-radius: 10px;
    }
    input{
    border-radius: 10px;
    height: 30;
    }
    span{
    font-weight: 800;
    color: white;
    }
    body{
        background-color: rgb(17, 140, 79);
    }
    </style>
</head>
<body>
<h1>Zafety CO Banking Gateway</h1>
<h3>Payment in The Amount of: $2550.96</h3>

<!-- display errors returned by createToken -->
<span class="payment-errors"></span>

<!-- stripe payment form -->
<form action="submit.php" method="POST" id="paymentGateway">
    <p>
        <label>Name</label>
        <input type="text" name="name" size="55" />
    </p>
    <p>
        <label>Address</label>
        <input type="text" name="Address" size="55" />
    </p>
    <p>
        <label>City</label>
        <input type="text" name="city" size="45" />
    </p>
    <p>
        <label>Postal Code</label>
        <input type="text" name="postal" size="15" />
    </p>
    <p>
        <label>Email</label>
        <input type="text" name="email" size="55" />
    </p>
    <p>
        <label>Card Number</label>
        <input type="text" name="card_num" size="30" autocomplete="off" 
class="card-number" />
    </p>
    <p>
        <label>CVC</label>
        <input type="text" name="cvc" size="6" autocomplete="off" class="card-cvc" />
    </p>
    <p>
        <label>Expiration (MM/YYYY)</label>
        <input type="text" name="expirationMonth" size="5" class="card-expiry-month"/>
        <span> / </span>
        <input type="text" name="expirationYear" size="5" class="card-expiry-year"/>
    </p>
    <button type="submit" id="payButton"><a href = "receipt.php">Submit Payment</a></button>
    <br><br><br>
    <img src = "paymentA.PNG" height = 150px; width = 400px;>
</form>
</body>
</html>