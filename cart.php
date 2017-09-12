<?php

require_once('config.php');

//session 
session_start();

if(isset($_POST['empty'])){
	session_destroy();
	$cartItems = count($_SESSION['tedi']);
	$cart = $_SESSION['tedi'];
	header('Location: cart.php');
	}

//count items in array
$cartItems = count($_SESSION['tedi']);
$cart = $_SESSION['tedi'];

if(isset($_POST['checkout'])){
   if($cartItems < 1)
   {
   $message = "<p><span class='errMsg'>You can not checkout with an empty cart</span></p>";
   }
   else
   {
   header('Location: checkout.php');
   }
}


?>

<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<style>
.tablink {
    background-color: #2b77f2;
    color: white;
    position: static;
    border: groove;
    width=100px
    padding: 30px 30px;
    font-size: 17px;
    left: 50%;
    margin-left: -240px;
    margin-right: -240px;
    margin-top: -50x;
         }
.topleft {
    position: absolute;
    top: 16px;
    left: 3px;
    font-size: 18px;
         }
</style>
<div id="miranHeader" class="tablink" >
 <h3 align='center'>Miranz Store Where You Can Pay VIA Bitcoin </h3>
 <p align='center'>Pakistan's First Block Chain Expert Solutions Provider</p>
 <a href="http://miranz.net/" class="topleft" >
 <img src="img/logo.jpeg" alt="Logo" style="width:90px;height:90px;">
 </a>
</div>

<div id="viewCart">
  <span id="viewTitle">Your Cart</span>
  <div id="viewTable">
     <table width="100%">
	   <?php
    $usdOwed = 0;
	for($i=0; $i<$cartItems; $i++)
	{
	$queryLoopCart = "SELECT * FROM products WHERE id = '$cart[$i]'";
	$doLoopCart = mysqli_query($conn, $queryLoopCart);
	$rowLoopCart = mysqli_fetch_assoc($doLoopCart);
	$loopName = $rowLoopCart['name'];
	$loopPrice = $rowLoopCart['price'];
	$usdOwed += $loopPrice;
	$btcOwed = $usdOwed / $_SESSION['exr'];
	echo "<tr><td width='80%'>".$loopName."</td>";
	echo "<td width='20%'>$".$loopPrice."</td>";
	echo "</tr>";
	}
	echo "<tr>";
	echo "<td class='blank' width='80%'>TOTAL USD</td>";
	echo "<td width='20%'>$".$usdOwed."</td>";
	echo "</tr>";
	echo "<tr>";
	echo "<td class='blank' width='80%'>TOTAL BTC</td>";
	echo "<td width='20%'>&#x0E3F;".round($btcOwed, 4)."</td>";
	echo "</tr>";
	?>
	 </table>
	 <br>
	 <form method="post"><input type="submit" value="Checkout" name="checkout"> <input type="submit" value="Empty Cart" name="empty"></form>
	 <br>
  </div>
  <a href="index.php">Go Back</a>
  <?php if(isset($message)){ echo $message; }?>
</div>

</body>
</html>