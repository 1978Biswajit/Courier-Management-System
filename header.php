<?php 

  require_once 'connection.php';
  session_start();

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courier Management System</title>
    <!-- css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
      body {
        
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
      }
    </style>
</head>

<body>


    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <img src="images/clogo.png" alt="logo">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <?php 
                    if(isset($_SESSION['admin_login'])){
                        ?>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="admin/profile.php">Admin Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="admin/changepassword.php">Change Password</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="admin/logout.php">Logout</a>
                    </li>
                    <?php
                      }
                    
          else if(isset($_SESSION['user_login'])){
            ?>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="users/profile.php">My Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="users/changepassword.php">Change Password</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="users/logout.php">Logout</a>
                    </li>
                    <?php
          } else {
            ?>
                      <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="admin/login.php">Admin Login</a>
                        <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="users/login.php">User Login</a>
          </li>
                    
                    <?php
          }
        ?>
                </ul>
            </div>
        </div>
    </nav>


    <div class="bottom-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="nav">
                        <a class="nav-link" aria-current="page" href="index.php">Home</a>
                        <?php 
                            if(isset($_SESSION['admin_login'])){
                            ?>
                        <a class="nav-link" href="admin/register.php">Add Admin</a>
                        <a class="nav-link" href="admin/add-driver.php">Add Driver</a>
                        <a class="nav-link" href="admin/manage-couriers.php">Request Orders</a>
                        <a class="nav-link" href="admin/finish-courier.php">Finished Orders</a>
                        <a class="nav-link" href="admin/manage-users.php">Manage Users</a>
                        <a class="nav-link" href="admin/manage-drivers.php">Manage Drivers</a>
                        <a class="nav-link" href="admin/feedbacks.php">Feedbacks</a>
                        <a class="nav-link" href="prices.php">Pricing</a>
                        <?php
                            } 
                        else if(isset($_SESSION['user_login'])){
                            ?>
                        <a class="nav-link" href="users/courier.php">Order Courier</a>
                        <a class="nav-link" href="users/myorder.php">My Orders</a>
                        <a class="nav-link" href="users/trackcourier.php">Track Order</a>


                        <a class="nav-link" href="prices.php">Pricing</a>
                        <a class="nav-link" href="about.php">About Us</a>
                        <a class="nav-link" href="contact.php">Contact Us</a>
                        <?php
                            } else {
                                ?>


                        <a class="nav-link" href="prices.php">Pricing</a>
                        <a class="nav-link" href="about.php">About Us</a>
                        <a class="nav-link" href="contact.php">Contact Us</a>

                        <?php
                            }
                        ?>
                    </nav>
                </div>
            </div>
        </div>
    </div>