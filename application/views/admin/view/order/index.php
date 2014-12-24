<?php    
        // print_r($data);
?>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Giao dịch</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url("admin")?>">Bảng điều khiển</a>
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
                                    <th>Số Điện Thoại</th>
                                    <th>Thông tin</th>
                                    <th>Trạng thái(<a href="index.php?controller=order&stage=wait">&nbsp;chờ</a> / <a href="index.php?controller=order&stage=done">xong</a>)</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<?php if($data!=null): ?>
     							<?php  foreach($data as $key => $value): ?>
     							<tr>
                                    <td><?php echo $value->id?></td>
     								<td><?php $datestring = " %Y - %m - %d - %h:%i %a";
                                    echo mdate($datestring,$value->time);?>
                                    </td>
     								<td><?php $user=$this->user_model->get_info($value->user_id);
                                        echo $user->name;
                                        ?></td>
                                    <td><?php echo $user->email?></td>
                                    <td><?php echo $user->phone?></td>
     								<td><a href="<?php echo base_url("admin/view_order")?>/<?php echo $value->id?>">Chi Tiết</a></td>
                                    <td><?php if($value->state=='0'):?>
                                        <a href="#">Chờ</a>
                                    <?php endif?>
                                    <?php if($value->state=='1'):?>
                                        <a href="#">Xong</a>
                                    <?php endif?>
                                    </td>
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

   <!-- <div class="panel-footer">
      <div class="text-center">
         <?php echo $pagination?><?php //var_dump($temp);?>
      </div>
   </div>
   <?php //var_dump($orders);?> -->