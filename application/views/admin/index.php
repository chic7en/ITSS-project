<!DOCTYPE html>
<?php session_start();?>
<?php require_once('librarys/include.php');?>
<?php require_once('librarys/makeObject.php');?>
<?php

//Nhận request từ trình duyệt gửi đến controller và action tương ứng
if (!isset($_SESSION['capdo'])) {
	show_404();
}
elseif ($_SESSION['capdo']=='admin') {
if(isset($_GET['controller'])) $controller = $_GET['controller'];
else $controller = 'dashboard';

if(isset($_GET['action'])) $action = $_GET['action'];
else $action = 'index';

$file = 'controller/'.$controller.'/'.$action.'.php';
if(file_exists($file))
    require($file);
else
    show_404();
mysql_close($db);
}else show_404();

 ?>
