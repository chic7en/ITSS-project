<?php require('template/header.php') ?>
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
                            <i class="fa fa-list-ol"></i>  <a href="index.php?controller=producer">Nhà cung cấp</a>
                        </li>
                        <li>
                            <i class="fa fa-upload"></i>Thêm nhà cung cấp
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
                <div class="col-lg-6">
                    <form role="form" action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Mã nhà cung cấp</label>
                            <input class="form-control" type="text" name="mancc" placeholder="tối đa 6 kí tự example: NCCxxx" pattern ="{6}">
                        </div>
                        <div class="form-group">
                            <label>-Tên nhà cung cấp</label>
                            <input class="form-control" type="text" name="tenncc" value="<?php echo $ncc['tenncc']?>" required="required">
                        </div>
                        <div class="form-group">
                            <label>-Địa chỉ:</label>
                            <input class="form-control" type="text" name="diachi" value="<?php echo $ncc['diachi'];?>" requierd="required">
                        </div>
                        <div class="form-group">
                            <label>-Email:</label>
                            <input class="form-control" type="email" name="email" value="<?php echo $ncc['email'];?>" requierd="required">
                        </div>
                        <div class="form-group">
                            <label>-Số điện thoại:</label>
                            <input class="form-control" type="text" name="sdt" value="<?php echo $ncc['sdt'];?>"pattern ="[0-9]{10,11}"  requierd="required">
                        </div>
                            <button type="submit" name="submit" class="btn btn-default">Thêm</button>
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
