<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<footer>
    <div class="container">
      <!-- <div class='jumbotron'> -->
        <p class="footer text-center">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
        <p class='text-center'> powered by Team Blue </p>
      <!-- </div> -->
    </div>
</footer>
<?php echo $before_closing_body;?>
</body>
</html>
