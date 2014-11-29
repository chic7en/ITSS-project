
	<?php foreach ($data as $key => $p) :?>
	<div class="span4">
	<div class="listview">
	<div class="span4">
	<a href="#" class="list bg-darkGreen fg-white" style="height:250px;">
	   <div class="list-content">
	      <img src="<?php echo base_url();?>public/bookshop/images/<?php echo $p->image_link;?>" class="icon" style="width:150px;height:auto;">
	 	<div class="data">
	    	<span class="list-title"><?php echo $p->name;?></span>
	    	<div class="rating small no-margin fg-yellow" data-score="4" data-role="rating" data-stars="5"></div>
	    	<span class="list-remark">Price: <?php echo $p->price;?> VNĐ</span>
	    	<button class="shortcut danger" style="margin-top:80px;height:90px;">
	                    <i class="icon-cart-2"></i>
	                    Buy
	                    
	                </button>
	    </div>
	   </div>
	</a>
	</div>
	</div>
	</div>
	<?php endforeach;?>
	
