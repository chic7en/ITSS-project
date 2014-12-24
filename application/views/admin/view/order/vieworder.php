<?php require('template/header.php') ;?>
<div id="wrapper">
  <div id="page-wrapper">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Giao dịch</h1>
          <ol class="breadcrumb">
            <li>
              <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
            </li>
            <li >
              <i class="fa fa-list-ol"></i> <a href="index.php?controller=order"> Giao dịch</a>
            </li>
            <li class ="active">
              <i class=""></i> Chi tiết đơn hàng
            </li>
          </ol>
      </div>
    </div>
   <div class="row">
      <div class="col-md-10">
        <div class="panel panel-success ">
          <div class="panel-heading">
            <h3 class="panel-title">Chi tiết đơn hàng <label>   - Khách hàng:  </label>  <em><?php echo $kh['tenkh'];?></em></h3>
          </div>
	          <br>
	          <label> Địa chỉ:  </label>  <em><?php echo $kh['diachi'];?></em>
	          <label> Email:  </label>  <em><?php echo $kh['email'];?></em>
	          <label> Sđt:  </label>  <em><?php echo $kh['sdt'];?></em>
          <div class="panel-body">
        	<?php foreach ($details as $key => $value) { ?>
        	<div class="row">
        		<div class="panel panel-success">
        			<table>
        				<tr>
        					<td><img src=".././asset/img/product/<?php echo $value['masp']?>.jpg" alt="" width="200" height="200"/></td>
        					<td>
			        			<ul>
			        				<li>Tên tranh: <?php echo $value['tensp'];?></li>
			        				<li>Loại tranh: <?php echo $value['tenloai'];?></li>
			        				<li>Chất liệu: <?php echo $value['tencl'];?></li>
			        				<li>Nhà cung cấp: <?php echo $value['tenncc'];?></li>
			        				<li>Đơn giá: <?php echo $value['dongia'];?>vnd</li>
			        				<li>Số lượng đặt mua: <?php echo $value['sl'];?></li>
			        			</ul>
        					</td>
        				</tr>
        			</table>
        		</div>
        	</div>
        	<?php } ?>
        	<label><?php echo $tongtien;?></label>
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