<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>RoboGym Login Page</title>
    <meta name="description" value="<?php echo $page_description;?>" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <?php echo $before_closing_head;?>
</head>
<body>
<div class="container"><?php echo anchor('user/logout', 'Logout');?></div>
