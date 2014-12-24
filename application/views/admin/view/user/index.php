
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Người dùng</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url("admin")?>">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-reddit"></i> Người dùng
                        </li>
                    </ol>
                </div>
                </div>

			<div class="row">
                <div class="col-lg-12">
                    <h2>Bảng người dùng</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Họ tên</th>
                                    <th>Tài Khoản</th>
                                    <th>Cấp độ</th>
                                    <th>Số điện thoại</th>
                                    <th>địa chỉ</th>
                                    <th>Phân cấp</th>
                                    <th>Xóa tài khoản</th>
                                </tr>
                            </thead>
                            <tbody>
								<?php 
									foreach ($data as $key => $value) {
								?>

                            
                                <tr>
                                    <td><?php echo $value->name ;?></td>
                                    <td><?php echo $value->email; ?></td>
                                    <td><?php if($value->level=='0'): ?>User
                                        <?php else :?>Admin
                                        <?php endif;?>
                                    </td>
                                    <td><?php echo $value->phone; ?></td>
                                    <td><?php echo $value->address?></td>
                                    <td><?php if($value->level=='0'): ?>
                                    	<a href="index.php?controller=user&rule=up&user=<?php echo $value->name?>">Lên cấp</a>
                                    	<?php endif ?>
                                    	<?php if($value->level=='1'): ?>
                                    	<a href="index.php?controller=user&rule=down&user=<?php echo $value->name?>">Hạ cấp</a>
                                    	<?php endif ?>
                                    </td>
                                    <td><a href="index.php?controller=user&rule=delete&user=<?php echo $value->name?>">Xóa</a></td>
                                </tr>
								<?php }	?>
 							</tbody>
						</table>
                     </div>
                </div>
			</div>
			<!-- end row -->
		</div>
	</div>
</div>