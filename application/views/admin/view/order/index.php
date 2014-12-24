<?php require('template/header.php'); ?>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Giao dịch</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i> Giao dịch
                        </li>
                    </ol>
                </div>
            </div>

			<div class="row">
                <div class="col-lg-14">
                    <h2>Bảng đơn hàng</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Ngày lập</th>
                                    <th>Tên khách hàng</th>
                                    <th>Tài khoản</th>
                                    <th>Đặt hàng</th>
                                    <th>Tổng giá</th>
                                    <th>Trạng thái(<a href="index.php?controller=order&stage=wait">&nbsp;chờ</a> / <a href="index.php?controller=order&stage=done">xong</a>)</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php if($orders!=null): ?>
     							<?php  foreach($orders as $key => $value): ?>
     							<tr>
                                    <td><?php echo $i++?></td>
     								<td><?php echo $value['ngaylap'];?></td>
     								<td><?php echo $value['tenkh'];?></td>
                                    <td><?php echo $value['taikhoan'];?></td>
     								<td><?php foreach ($value['madh'] as $key => $value1) {?>
                                        <a href="index.php?controller=order&action=detail_product&pid=<?php echo $value1['masp']?>&madh=<?php echo $value1['madh']?>"><img src="../asset/img/product/<?php echo $value1['masp']?>.jpg" alt="" width="50" height="50"/>&nbsp</a> 
                                        <?php }?>
                                        
                                    </td>
     								<td><?php echo $value['tonggia'];?></td>
                                    <td><?php echo $value['trangthai'];?> |<a href="index.php?controller=order&madh=<?php echo $value1['madh'];?>&stage=<?php echo $value['trangthai'];?>"> Thay đổi </a>|<a href="index.php?controller=order&action=vieworder&madh=<?php echo $value1['madh']?>"> Chi tiết</a></td>
     							</tr>
     							<?php endforeach ?>
   								<?php endif ?>
 							</tbody>
						</table>
                     </div>
                </div>
			</div>
			<!-- end row -->

		</div>
	</div>
</div>

   <div class="panel-footer">
      <div class="text-center">
         <?php echo $pagination?><?php //var_dump($temp);?>
      </div>
   </div>
   <?php //var_dump($orders);?>