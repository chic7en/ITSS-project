<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="asset/img/icon/favicon.ico"/>
    <title>Quản lí - BookShop</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url("application/views/admin")?>/asset/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url("application/views/admin")?>/asset/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url("application/views/admin")?>/asset/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url("application/views/admin")?>/asset/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="<?php echo base_url("application/views/admin")?>/asset/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url("application/views/admin")?>/asset/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url("application/views/admin")?>/asset/js/plugins/morris/raphael.min.js"></script>
    <script src="<?php echo base_url("application/views/admin")?>/asset/js/plugins/morris/morris.min.js"></script>
    <script src="<?php echo base_url("application/views/admin")?>/asset/js/plugins/morris/morris-data.js"></script>
</head>
<body>

    <?php $this->load->view("admin/template/header");?>
        <div >
       
            <?php
                $this->load->view($template,$data);
            ?>
        </div>
</body>
</html>