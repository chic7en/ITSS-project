<?php $cart=unserialize($data->cart_string);
      ?>
<div id="wrapper">
  <div id="page-wrapper">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Giao dịch</h1>
          <ol class="breadcrumb">
            <li>
              <i class="fa fa-dashboard"></i>  <a href="<?php echo base_url("admin")?>">Bảng điều khiển</a>
            </li>
            <li >
              <i class="fa fa-list-ol"></i> <a href="<?php echo base_url("admin/view_list_order")?>"> Giao dịch</a>
            </li>
            <li class ="active">
              <i class=""></i> Chi tiết đơn đặt hàng
            </li>
          </ol>
      </div>
    </div>
   <div class="row">
      <div class="col-md-10">
        <div class="panel panel-success ">
          <div class="panel-heading">
            <h3 class="panel-title">Chi tiết đơn đặt hàng</h3>
          </div>
          <div class="panel-body">
            <table id="dataTables-1" class="table striped hovered dataTable" aria-describedby="dataTables-1_info" style="width: 1038px;">
            <thead>
            <tr>
              <th>Quantity</th>
              <th>Item Description</th>
              <th style="text-align:left">Item Price</th>
              <th style="text-align:left">Sub-Total</th>
              </tr></thead>
            <?php $i = 0; ?>
            <?php foreach($cart as $key=>$value): ?>               
              <tr>
              <td><?php echo $value['qty']; ?></td>
              <td>          
              <p>             
              <img src="<?php echo base_url()?>public/bookshop/images/<?php echo $value['options']['image_link'] ?>" style="max-width:20%"> <?php echo $value['name']; ?>
              </p>
              </td>
              <td style="text-align:left"><?php printf("%d.000",$value['price']); ?></td>
              <td style="text-align:left"><?php printf("%d.000",$value['subtotal']); ?> VNĐ</td>
              </tr>
            <?php $i=$i+$value['subtotal']; ?>
            <?php endforeach; ?>
            <tfoot>
            <tr>
              <td colspan="2"> </td>
              <td ><strong>Total</strong></td>
              <td ><?php printf("%d.000",$i); ?> VNĐ</td>
              </tr>
              </tfoot>
            </table>
          </div>
          <div class="panel-footer">
            <div class="text-center">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>