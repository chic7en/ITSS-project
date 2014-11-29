<?php echo form_open('user/updateCart'); ?>
<div class="span12">
<table id="dataTables-1" class="table striped hovered dataTable" aria-describedby="dataTables-1_info" style="width: 1038px;">
<tr>
  <th>Quantity</th>
  <th>Item Description</th>
  <th style="text-align:right">Item Price</th>
  <th style="text-align:right">Sub-Total</th>
  </tr>
<?php $i = 1; ?>
<?php foreach($this->cart->contents() as $items): ?>
<?php echo form_hidden($i.'[rowid]', $items['rowid']); ?>
    
  <tr>
  <td><?php echo form_input(array('name' => $i.'[qty]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5')); ?></td>
  <td>
  <?php echo $items['name']; ?>
  
  <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>
  
  <p>
  <?php foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>
  
  <strong><?php echo $option_name; ?>:</strong> <?php echo $option_value; ?><br />
  
  <?php endforeach; ?>
  </p>
  
  <?php endif; ?>
  
  </td>
  <td style="text-align:right"><?php echo $this->cart->format_number($items['price']); ?></td>
  <td style="text-align:right"><?php echo $this->cart->format_number($items['subtotal']); ?> VNĐ</td>
  </tr>
<?php $i++; ?>
<?php endforeach; ?>
<tr>
  <td colspan="2"> </td>
  <td ><strong>Total</strong></td>
  <td ><?php echo $this->cart->format_number($this->cart->total()); ?> VNĐ</td>
  </tr>
</table>
</div>
<div class="span6">
<p><?php echo form_submit('', 'Update your Cart'); ?></p>
</div>