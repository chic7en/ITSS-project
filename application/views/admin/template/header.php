    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url("admin")?>"><i class="fa fa-heart">&nbsp</i>Quản lý shop</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">     
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Xin chào &nbsp<i class="fa fa-user">&nbsp</i><?php echo $this->session->userdata("user_name")?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<?php echo base_url("user")?>"><i class="fa fa-fw fa-home"></i> Trang chủ - User Mode</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url("admin/logout")?>"><i class="fa fa-fw fa-power-off"></i> Thoát</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li >
                        <a href="<?php echo base_url("admin")?>"><i class="fa fa-fw fa-dashboard"></i> Bảng điều khiển</a>
                    </li>
                    <li >
                        <a href="<?php echo base_url("admin/user")?>"><i class="fa fa-fw fa-reddit"></i> Người dùng</a>
                    </li>
                    <li >
                        <a href="<?php echo base_url("admin/product")?>"><i class="fa fa-fw fa-list-ol"></i> Sản phẩm</a>
                    </li>
                    <li >
                        <a href="index.php?controller=order"><i class="fa fa-fw fa-shopping-cart"></i> Giao dịch</a>
                    </li>
                    <li >
                        <a href="index.php?controller=producer"><i class="glyphicon glyphicon-refresh"></i> Nhà cung cấp</a>
                    </li>
                    <li >
                        <a href="index.php?controller=typeproduct"><i class="glyphicon glyphicon-th-large"></i> Loại sách</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </div>

   