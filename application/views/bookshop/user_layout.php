<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>

 <link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/metro-bootstrap.css" type="text/css" media="screen"/>
 <link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/metro-bootstrap-responsive.css" type="text/css" media="screen"/>
 <!-- <link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/bootstrap.min.css" type="text/css" media="screen"/>

 <link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/bootstrap-theme.min.css" type="text/css" media="screen"/> -->

 <link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/min/iconFont.min.css" type="text/css" />
<script src="<?php echo base_url()?>public/bookshop/js/jquery/jquery.min.js"></script>
<script src="<?php echo base_url()?>public/bookshop/js/bootstrap.min.js"></script>

<script src="<?php echo base_url()?>public/bookshop/js/jquery/jquery.widget.min.js"></script>
<script src="<?php echo base_url()?>public/bookshop/js/metro/metro.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/style.css" type="text/css" media="screen"/>
<link rel="stylesheet" href="<?php echo base_url()?>public/bookshop/css/reset.css" type="text/css" media="screen"/>
<script src="<?php echo base_url()?>public/bookshop/js/modernizr.js"></script>
<script src="<?php echo base_url()?>public/bookshop/js/main.js"></script>

</head>
<body class="metro" background="<?php echo base_url()?>public/bookshop/images/bg/metro_green_1080p.jpg">

    
    <?php $this->load->view("bookshop/user_top",$user);?>
    <?php $this->load->view("bookshop/user_header");?>
    <div class="container">
    <div id="main" class="grid ">
        
        <div class="row" >
        <div class="container" id="info">
       
            <?php
                $this->load->view($template,$data);
            ?>
        </div>
        
    </div>

    <?php $this->load->view("bookshop/bottom");?>
    </div>
</body>
</html>