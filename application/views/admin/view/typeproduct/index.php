<?php require('template/header.php'); ?>
<?php require('template/search.php');?>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
      <div class="row">
                <div class="col-lg-12">
                  <h1 class="page-header">Loại sản phẩm</h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-dashboard"></i>  <a href="index.php?controller=dashboard">Bảng điều khiển</a>
                        </li>
                        <li class="active">
                            <i class="fa fa-list-ol"></i> Loại sản phẩm
                        </li>
                    </ol>
                </div>
                </div>

      <div class="row">
                <div class="col-lg-12"><label><i class="fa fa-upload"></i> <a href="index.php?controller=typeproduct&action=add_type">Thêm loại</a></label></div>
                <div class="col-lg-12">
                    <h2>Bảng loại sản phẩm</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Tên loại sản phẩm</th>
                                    <th>Mã loại</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                              <?php if($types!=null): ?>
                  <?php  foreach($types as $key => $value): ?>
                  <tr>
                    <td><?php echo $value['tenloai'];?></td>
                    <td><?php echo $value['maloai'];?></td>
                    <td> <a href="index.php?controller=typeproduct&action=change&amp;maloai=<?php echo $value['maloai'];?>">Sửa</a></td>
                    <td><a href="index.php?controller=typeproduct&rule=delete&amp;maloai=<?php echo $value['maloai'];?>">Xóa</a></td>
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