
	<div class="span4">
	<div class="listview">
	<div class="span4">
	<div  class="list bg-darkGreen fg-white" style="height:250px;">
	   <div class="list-content">

	     <a href="<?php echo base_url()?>user/product/<?php echo $p->id?>" style="color:#ffffff"><img src="<?php echo base_url();?>public/bookshop/images/<?php echo $p->image_link;?>" class="icon" style="width:150px;height:auto;">
	 	  </a>
	 	<div >
	    	<span class="list-title"><a  href="<?php echo base_url()?>user/product/<?php echo $p->id?>" style="color:#ffffff"><?php echo $p->name;?></a></span><br>
            <span class="list-remark">Price: <?php echo $p->price;?> VNĐ</span><br>
           
            <button class="shortcut primary " style="height: 40px; padding-top: 0px;" >
                                    <i class="icon-heart"></i>
                                    <small class="bg-lightBlue fg-white like-num<?php echo $p->id?>"><?php echo $p->like_num?></small>
                                </button>
	    	<button class="shortcut danger" style="margin-top:35px;height:90px;" onclick="window.location=(&quot;<?php echo base_url();?>user/addtocart/<?php echo $p->id;?>&quot;); ">
	                    <i class="icon-cart-2"></i>
	                    Buy
	                    
	                </button>
	               
	    </div>
	   </div>
	</div>
	</div>
	</div>
	</div>
