<?php echo form_open("admin/update_product");?>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Sản phẩm: Id- <?php echo $data->id?><input  type="hidden" name="id" value="<?php echo $data->id?>" required="required"></h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url("admin")?>">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i>  <a href="<?php echo base_url("admin/product")?>">Sản phẩm</a>
                        </li>
                        <li>
                        	<i class="fa fa-edit"></i>Thay đổi
                        </li>
                    </ol>
                </div>
            </div>

			<div class="row">
				<div class="col-lg-8">
					<form role="form" action="index.php?controller=product&action=change&masp=<?php echo $data->id;?>" method="post">
						<div class="form-group">
                            <label>Hình ảnh</label>
                            <p><img src="<?php echo base_url("public/bookshop/images")?>/<?php echo $data->image_link?>" alt="" width="300" height=""/><p>
                        </div>
                        <div class="form-group">
							<label>Tên Sản phẩm</label>
							<input class="form-control" type="text" name="name" value="<?php echo $data->name?>" required="required">
                        </div>
                        <div class="form-group">
                            <label>Loại sách:</label>
                            <select name="catalog_id">
                                <option selected value="<?php echo $data->catalog_id;?>"><?php echo $data->catalog_id;?> </option>
                                <?php $input['limit'] = array('15', 0); 
                                $catalog=$this->catalog_model->get_list($input);?>
                                <?php foreach ($catalog as $key => $value): ?>
                                <option value="<?php echo $value->id;?>"><?php echo $value->id;?> -- <?php echo $value->name?></option>
                                <?php endforeach ?>
                            </select>
                        </div>
                      <!--   <div class="form-group">
                            <label>Loại sản phẩm:</label>
                            <select name="tenloai">
                                <option selected value="<?php echo $tenloaisp;?>"><?php echo $tenloaisp ;?></option>
                                <?php foreach ($loaisp as $key => $value): ?>
                                <option value="<?php echo $value['tenloai'];?>"><?php echo $value['tenloai'];?></option>
                                <?php endforeach ?>
                            </select>
						</div> -->
                        <div class="form-group">
                            <label>Tác giả :</label>
                            <input class="form-control" type="text" name="author" value="<?php echo $data->author?>" required="required">
                        </div>
                      <!--   <div class="form-group">
                            <label>Kích thước</label>
                            <input class="form-control" type="text" name="kichthuoc" value="<?php echo $sp['kichthuoc'];?> " required="required">
                        </div> -->
                        <div class="form-group">
                            <label>Đơn giá</label>
                            <input class="form-control" type="" name="price" value="<?php echo $data->price?>" required="required">
                        </div>
                        <div class="form-group">
                            <label>Số lượng tồn</label>
                            <input class="form-control" type="number" name="quantity" value="<?php echo $data->quantity?>" required="required">
                        </div>
                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea class="form-control" name="content" rows="3"  required="required"><?php echo $data->content?></textarea>
                        </div>
                        <script type="text/javascript">
                        function load_msg(){
                            
                                alert("Update to database success..!!!");
                        
                        }
                        </script>
                            <button type="submit" class="btn btn-default" onclick="load_msg()">Sửa </button>
                            <button type="reset" class="btn btn-default">Làm mới </button>
					</form>
				</div>
			</div>
			<!-- end row -->
			<div class="row">

			</div>
		</div>
	</div>
</div>
