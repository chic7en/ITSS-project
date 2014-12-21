<div class="grid">
                <div class="row no-tablet-portrait no-phone" style="padding-left: 20px;">
                	
                	
                    <div class="span8">
                        <div id="carousel1" class="carousel" style="width: 100%; height: 350px;">
                            <div class="slide" style="left: -620px;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/banner1.jpg">
                            </div>

                            <div class="slide" style="left: 0px; display: block;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/banner2.jpg">
                            </div>

                            <div class="slide" style="left: -620px; display: block;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/banner4.jpg">
                            </div>

                            <a class="controls left"><i class="icon-arrow-left-3"></i></a>
                            <a class="controls right"><i class="icon-arrow-right-3"></i></a>
                        <div class="markers default"><ul><li class=""><a data-num="0" href="javascript:void(0)"></a></li><li class="active"><a data-num="1" href="javascript:void(0)"></a></li><li class=""><a data-num="2" href="javascript:void(0)"></a></li></ul></div></div>
                        <script>
                            $(function(){
                                $("#carousel1").carousel({
                                    height: 350
                                });
                            })
                        </script>
                    </div>
                    <div class="span4">
                    
                        <div id="carousel2" class="carousel" style="width: 100%; height: 350px;">
                            <div class="slide" style="display: block; left: 0px; opacity: 0.871707;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/10.jpg">
                            </div>

                            <div class="slide" style="left: 0px; display: none;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/5.jpg">
                            </div>

                            <div class="slide" style="left: 0px; display: block; opacity: 0.828293;">
                                <img class="cover1" src="<?php echo base_url();?>public/bookshop/images/13.jpg">
                            </div>
                        <div class="markers square" style="right: 10px; left: auto;"><ul><li class="active"><a data-num="0" href="javascript:void(0)"></a></li><li class=""><a data-num="1" href="javascript:void(0)"></a></li><li class=""><a data-num="2" href="javascript:void(0)"></a></li></ul></div></div>
                        <script>
                            $(function(){
                                $("#carousel2").carousel({
                                    height: 350,
                                    effect: 'fade',
                                    markers: {
                                        show: true,
                                        type: 'square',
                                        position: 'bottom-right'
                                    }
                                });
                            })
                        </script>
                    </div>
                </div>
            </div>

<?php foreach ($data as $key => $p) :?>
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
            <script type="text/javascript"> 
                   function load_ajax<?php echo $p->id?>(){
                        var _url = "<?php echo base_url("user/like") ?>";
                        var postData = {
                                    product_id:'<?php echo $p->id?>'
                                };
                        $.ajax({
                            url : _url,
                            type : 'post',
                            dateType:"json",
                            data : postData,
                            success : function (data){
                                
                                if(data!='0'){
                                    $('.like-num<?php echo $p->id?>').html(data);
                                    alert("Thank you for like this book..!!!");
                                    }
                                else alert("This book had in your like list..!!!");
                        }
                        });
                    }
                   
                  </script>
            <button class="shortcut primary " style="height: 40px; padding-top: 0px;" onclick="load_ajax<?php echo $p->id?>()">
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
	<?php endforeach;?>
	