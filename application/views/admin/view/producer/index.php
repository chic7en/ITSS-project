
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Nhà cung cấp</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i> Nhà cung cấp
                        </li>
                    </ol>
                </div>
                </div>

			<div class="row">
                <div class="col-lg-12"><label><i class="fa fa-upload"></i> <a href="index.php?controller=producer&action=add_producer">Thêm nhà cung cấp</a></label></div>
                <div class="col-lg-12">
                    <h2>Bảng nhà cung cấp</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Tên nhà cung cấp</th>
                                    <th>Mã nhà cung cấp</th>
                                    <th>Địa chỉ</th>
                                    <th>Email</th>
                                    <th>SDT</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php if($producers!=null): ?>
     							<?php  foreach($producers as $key => $value): ?>
     							<tr>
     								<td><?php echo $value['tenncc'];?></td>
     								<td><?php echo $value['mancc'];?></td>
     								<td><?php echo $value['diachi'];?></td>
     								<td><?php echo $value['email'];?></td>
     								<td><?php echo $value['sdt'];?></td>
     								<td> <a href="index.php?controller=producer&action=change&amp;mancc=<?php echo $value['mancc'];?>">Sửa</a></td>
     								<td><a href="index.php?controller=producer&rule=delete&amp;mancc=<?php echo $value['mancc'];?>">Xóa</a></td>
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
     <?php echo $pagination;
     //echo $a;?>
  </div>
</div>