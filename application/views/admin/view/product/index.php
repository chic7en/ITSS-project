
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Sản phẩm</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url("admin")?>">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i> Sản phẩm
                        </li>
                    </ol>
                </div>
                </div>

			<div class="row">
                <div class="col-lg-12"><label><i class="fa fa-upload"></i> <a href="<?php echo base_url("admin/add_product")?>">Thêm sản phẩm</a></label></div>
                <div class="col-lg-12">
                    <h2>Bảng sản phẩm</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Hình ảnh</th>
                                    <th>Mã loại</th>
                                    <th>Loại sách</th>
                                    <th>Tác Giả</th>
                                    <th>Giới thiệu sách</th>
                                    <th>Đơn giá</th>
                                    <th>Số lượng tồn</th>
                                    <th>Sửa sản phẩm</th>
                                    <th>Xóa sản phẩm</th>
                                </tr>
                            </thead>
                            <tbody>
                            	
     							<?php  foreach($data as $key => $value): ?>
     							<tr>
     								<td><?php echo $value->name;?></td>
     								<td><a href=""><img src="<?php echo base_url("public/bookshop/images")?>/<?php echo $value->image_link?>" alt="" width="70" height=""/> </a></td>
     								<td><?php echo $value->catalog_id;?></td>
                                    <td><?php $catalog=$this->catalog_model->get_info($value->catalog_id);
                                        echo $catalog->name;
                                        ?>
                                    </td>
     								<td><?php echo $value->author;?></td>
     								<td><span><?php echo $value->content;?></span></td>
     								<td><?php echo $value->price;?></td>
     								<td><?php echo $value->quantity;?></td>
                                    <td> <a href="<?php echo base_url("admin/change_product")?>/<?php echo $value->id?>">Sửa</a></td>
     								<td><a href="index.php?controller=product&rule=delete&amp;masp=<?php echo $value->id;?>">Xóa</a></td>
     							</tr>
     							<?php endforeach ?>
   								
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
     <?php echo $pagination;
     //echo $a;?>
  </div>
</div> -->