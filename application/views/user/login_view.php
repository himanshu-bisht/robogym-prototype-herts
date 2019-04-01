<!DOCTYPE html>
<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<html>
<head>
<link rel="stylesheet" href="<?php echo base_url('assets/statics/bootstrap/css/bootstrap.min.css');?>">
<link rel="stylesheet" href="">
<script src='<?php echo base_url('assets/statics/bootstrap/js/bootstrap.min.js');?>'></script>

<style type="text/css">

	html, body {
	height: 100%;
	}

	body {
	background-image: url('<?php echo base_url('assets/images/login_page_image.jpg');?>');
	background-repeat: no-repeat;
	background-size: 100% 200%;
	}

	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {
        font-size: 15px;
        font-weight: bold;
    }
</style>

</head>
<body>
	<!-- <div class='jumbotron'> -->
		<div class='login-form'>
					<?php
				    echo isset($_SESSION['auth_message']) ? $_SESSION['auth_message'] : FALSE;
				    ?>
				    <h2 class="text-center">Log in</h2>

				    <?php
						$username_attributes = array('name' => 'username', 'class' => 'form-group', 'style' => 'width: 300px');
						$password_attributes = array('name' => 'password', 'class' => 'form-group', 'style' => 'width: 300px');
				    echo form_open('User/login');
						echo form_label().'<div class="form-group">';
				    echo form_label('Username:','username');
				    echo form_error('username');
				    echo form_input($username_attributes).'</div>';

				    echo form_label('Password:', 'password').'<br /> <div class="form-group">';
				    echo form_error('password');
				    echo form_password($password_attributes).'<br /></div>';
				    echo form_checkbox('remember','1',FALSE).' Remember me<br />';
				    echo form_submit('submit','Log In');
				    echo form_close();
				    ?>
		</div>
	<!-- </div> -->
</body>
</html>
