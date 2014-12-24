<div id="wrapper">
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Bảng điều khiển <small>Thống kê tổng quan</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">
                            <i class="fa fa-dashboard"></i> Bảng điều khiển
                        </li>
                    </ol>
                </div>
            </div>
            <!-- Page Heading -->

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-reddit fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $user_num; ?></div> -->
                                    <div>Quản lí người dùng!</div>
                                </div>
                            </div>
                        </div>
                        <a href="<?php echo base_url("admin/user")?>">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-list-ol fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $product_num; ?></div> -->
                                    <div>Quản lí sản phẩm!</div>
                                </div>
                            </div>
                        </div>
                        <a href="<?php echo base_url("admin/product")?>">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $order_num; ?></div> -->
                                    <div>Quản lí giao dịch!</div>
                                </div>
                            </div>
                        </div>
                        <a href="index.php?controller=order">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
                <!-- /.row -->

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-refresh"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $producer_num; ?></div> -->
                                    <div>Quản lí nhà cung cấp!</div>
                                </div>
                            </div>
                        </div>
                        <a href="index.php?controller=producer">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-star"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $material_num; ?></div> -->
                                    <div>Quản lí chất liệu!</div>
                                </div>
                            </div>
                        </div>
                        <a href="index.php?controller=material">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="glyphicon glyphicon-th-large"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <!-- <div class="huge"><?php echo $type_num; ?></div> -->
                                    <div>Quản lí loại sản phẩm!</div>
                                </div>
                            </div>
                        </div>
                        <a href="index.php?controller=typeproduct">
                            <div class="panel-footer">
                                <span class="pull-left">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
                <!-- /.row -->

        </div>
            <!-- /.container-fluid -->

    </div>
        <!-- /#page-wrapper -->

</div>
    <!-- /#wrapper -->
