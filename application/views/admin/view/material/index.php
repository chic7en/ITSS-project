<?php require('template/header.php'); ?>
<?php require('template/search.php');?>
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
                            <i class="fa fa-list-ol"></i> Chất liệu
                        </li>
                    </ol>
                </div>
                </div>

      <div class="row">
                <div class="col-lg-12"><label><i class="fa fa-upload"></i> <a href="index.php?controller=material&action=add_material">Thêm chất liệu</a></label></div>
                <div class="col-lg-12">
                    <h2>Bảng nhà cung cấp</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Tên chất liệu</th>
                                    <th>Mã chất liệu</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                              <?php if($materials!=null): ?>
                  <?php  foreach($materials as $key => $value): ?>
                  <tr>
                    <td><?php echo $value['tencl'];?></td>
                    <td><?php echo $value['macl'];?></td>
                    <td> <a href="index.php?controller=material&action=change&amp;macl=<?php echo $value['macl'];?>">Sửa</a></td>
                    <td><a href="index.php?controller=material&rule=delete&amp;macl=<?php echo $value['macl'];?>">Xóa</a></td>
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