<?php require('template/header.php') ?>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
			<div class="row">
                <div class="col-lg-12">
                	<h1 class="page-header">Chất liệu</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i>  <a href="index.php?controller=material">Chất liệu</a>
                        </li>
                        <li>
                        	<i class="fa fa-edit"></i>Thay đổi
                        </li>
                    </ol>
                </div>
            </div>
<?php if (isset($success)) :?>
            <div class="row">
                <div class="page-header"><?php echo '<em>'.$success.'</em>' ; $success=null;?></div>
            </div>
<?php endif?>
			<div class="row">
				<div class="col-lg-8">
					<form role="form" action="index.php?controller=material&action=change&macl=<?php echo $chatlieu['macl'];?>" method="post">
                        <div class="form-group">
							<label>Tên nhà cung cấp</label>
							<input class="form-control" type="text" name="tencl" value="<?php echo $chatlieu['tencl'];?>" required="required">
                        </div>
                            <button type="submit" name="submit" class="btn btn-default">Sửa </button>
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
