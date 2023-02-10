<?php
session_start();
$_SESSION['site'] = "review";
if(!isset($_SESSION['uname'])){
  header('location: ./registration/login.php');
}
?>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Picture Perfect</title>
    </head>
  <body>
    <h1>Review</h1>
    <nav>
        <h1>Picture Perfect</h1>
        <ul class="nav-bar-big">
          <li><a href="../html/home.htm">Home</a></li>
          <li><a href="#Gallery">Gallery</a></li>
          <li><a href="#About">About</a></li>
          <li><a href="../php/review.php">Reviews</a></li>
          <li><a href="../php/bookMe/bookMe.php">Book Me</a></li>
        </ul>
      </nav>
    <a href="./registration/logout.php">logout</a>
  </body>
  </html>
