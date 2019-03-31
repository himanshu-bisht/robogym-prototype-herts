<!DOCTYPE html>
<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<html>
<head>
<link rel="stylesheet" href="<?php echo base_url('assets/statics/bootstrap/css/style.css');?>">
</head>
<body>
<div class="container">
	<div class="row">
        <div class="jumbotron text-center">
				<?php
			    echo isset($_SESSION['auth_message']) ? $_SESSION['auth_message'] : FALSE;
			    ?>
			    <h1>Login in</h1>
					<div class="jumbotron text-center">
			    <?php
			    echo form_open();
			    echo form_label('Username:','username').'<br />';
			    echo form_error('username');
			    echo form_input('username').'<br />';
			    echo form_label('Password:', 'password').'<br />';
			    echo form_error('password');
			    echo form_password('password').'<br />';
			    echo form_checkbox('remember','1',FALSE).' Remember me<br />';
			    echo form_submit('submit','Log In');
			    echo form_close();
			    ?>
			</div>
		</div>
	</div>
</body>
</html>
