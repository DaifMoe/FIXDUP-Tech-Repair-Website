<?php
   ob_start();
   session_start();
?>

<?
   // error_reporting(E_ALL);
   // ini_set("display_errors", 1);
?>

<html lang = "en">
   
   <head>
      <title>FIXDUP Tech & Repair Login</title>
      <link href = "css/bootstrap.min.css" rel = "stylesheet">
      
      <style>
         a{
            text-decoration: none;
            color: black;
         }
         body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: rgb(61,82,191);
         }
         
         .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
            color: rgb(240, 10, 20);
         }
         
         .form-signin .form-signin-heading,
         .form-signin .checkbox {
            margin-bottom: 10px;
         }
         
         .form-signin .checkbox {
            font-weight: normal;
         }
         
         .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
         }
         
         .form-signin .form-control:focus {
            z-index: 2;
         }
         
         .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
            border-color:#017572;
         }
         
         .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-color:#017572;
         }
         
         h2{
            text-align: center;
            color: rgb(240, 10, 20);
         }
         button{
            text-transform: uppercase;
            background: #F68B1E;
            border: 1px solid #F68B1E;
            cursor: pointer;
            color: #fff;
            padding: 8px 40px;
            margin-top: 10px;
            border-radius: 10px;
         }
      </style>
      
   </head>
	
   <body>
      
      <h2>Enter Your Username and Password To Login!</h2> 
      <div class = "container form-signin">
         
         <?php
            $msg = '';
            
            if (isset($_POST['login']) && !empty($_POST['username']) 
               && !empty($_POST['password'])) {
				
               if ($_POST['username'] == 'Fixdup@gmail.com' && 
                  $_POST['password'] == 'fixd') {
                  $_SESSION['valid'] = true;
                  $_SESSION['timeout'] = time();
                  $_SESSION['username'] = 'PowerUp@gmail.com';
                  
                  echo 'You have successfully logged in!';
               }else {
                  $msg = 'Incorrect Username or Password!';
               }
            }
         ?>
      </div> <!-- /container -->
      
      <div class = "container">
      
         <form class = "form-signin" role = "form" 
            action = "<?php echo htmlspecialchars($_SERVER['PHP_SELF']); 
            ?>" method = "post">
            <h4 class = "form-signin-heading"><?php echo $msg; ?></h4>
            <input type = "text" class = "form-control" 
               name = "username" placeholder = "username = example@gmail.com" 
               required autofocus></br>
            <input type = "password" class = "form-control"
               name = "password" placeholder = "password = power" required>
            <button class = "btn btn-lg btn-primary btn-block" type = "submit" 
               name = "login"><a href = "index.php">Login</a></button>
         </form>
			
         Click here to Sign Out <a href = "logout.php" tite = "Logout">Logout.
         
      </div> 
      
   </body>
</html>