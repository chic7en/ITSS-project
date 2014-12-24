<?php require('template/header.php') ;?>
<div id="wrapper">
   <div id="page-wrapper">
   <div class="row">
       <div class="col-lg-12">
         <h1 class="page-header">Sản phẩm</h1>
           <ol class="breadcrumb">
               <li>
                   <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
               </li>
               <li >
                   <i class="fa fa-list-ol"></i> <a href="index.php?controller=product"> Sản phẩm</a>
               </li>
               <li class ="active">
                  <i class=""></i> Chi tiết sản phẩm
               </li>
           </ol>
       </div>
   </div>
   <div class="row">
      <div class="col-md-10">
         <div class="panel panel-success ">
   <div class="panel-heading">
      <h3 class="panel-title">Chi tiết sản phẩm</h3>
   </div>
   <div class="panel-body">
   		<table>
   			<tr>
   				<td>
   					<img src="../asset/img/product/<?php echo $pid?>.jpg" alt="" width="300" height="300"/>
   				</td>
   				<td>
	   				<table>
	   					<tr>
	   						<td>Tên:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product['tensp'].'</em></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Loại:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_loaisp['tenloai'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Kích thước:</td>
	   						<td><?php echo'<p><h4><em>'.$detail_product['kichthuoc'].'</em></h4></p>' ?></td>
	   					</tr>
	   					<tr>
	   						<td>Chất liệu:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_chatlieu['tencl'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Nhà cung cấp:</td>
	   						<td><?php echo '<p><h4><em>'.$detail_product_ncc['tenncc'].'</em></h4></p>'?></td>
	   					</tr>
	   					<tr>
	   						<td>Số lượng tồn:</td>
	   						<td><?php echo '<p><h4><em>'.$slton.'</em></h4></p>'?></td>
	   					</tr>
              <tr>
                <td><a href="index.php?controller=product&action=change&masp=<?php echo $pid;?>"><b>Thay đổi</b></a></td>
              </tr>
	   				</table>
   				</td>
   			</tr>
   		</table>
   </div>
   <div class="panel-footer">
      <div class="text-center">
         
      </div>
   </div>
</div>
      </div>
   </div>
</div>
</div>