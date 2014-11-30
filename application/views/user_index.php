<?php foreach ($data as $key => $p) :?>
	<div class="span4">
	<div class="listview">
	<div class="span4">
	<div  class="list bg-darkGreen fg-white" style="height:250px;">
	   <div class="list-content">

	     <a  href="#" style="color:#ffffff"><img src="<?php echo base_url();?>public/bookshop/images/<?php echo $p->image_link;?>" class="icon" style="width:150px;height:auto;">
	 	  </a>
	 	<div class="data">
	    	<span class="list-title"><a  href="#" style="color:#ffffff"><?php echo $p->name;?></a></span>
	    	<div class="rating small no-margin fg-yellow" data-score="4" data-role="rating" data-stars="5"></div>
	    	<span class="list-remark">Price: <?php echo $p->price;?> VNĐ</span>
	    	

	    	<button class="shortcut danger" style="margin-top:80px;height:90px;" onclick="window.location=(&quot;<?php echo base_url();?>user/addtocart/<?php echo $p->id;?>&quot;); ">
	                    <i class="icon-cart-2"></i>
	                    Buy
	                    
	                </button>
	               
	    </div>
	   </div>
	</div>
	</div>
	</div>
	</div>
	<?php endforeach;?>
	