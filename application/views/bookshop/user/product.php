<br>
<div class="span12 fg-white">
        <div class="span3">
            <div class="image">
            <img src="<?php echo base_url()?>public/bookshop/images/<?php echo $data->image_link?>" title="<?php echo $data->name?> " alt="<?php echo $data->name?> " >
            </div>                
        </div>
        <div class="span9">
          <h3 class="fg-white"><?php echo $data->name?></h3>
    <div >
          <span>Author: <?php echo $data->author?></span><br><br>
          <span class="list-remark">Price: <?php echo $data->price;?> VNĐ</span><br><br>
            <button class="shortcut primary" style="height: 40px; padding-top: 0px;">
                                    <i class="icon-heart"></i>
                                    <small class="bg-lightBlue fg-white">10</small>
                                </button><br>
              
        <button class="shortcut danger" style="margin-top:15px;height:90px;" onclick="window.location=(&quot;<?php echo base_url();?>user/addtocart/<?php echo $data->id;?>&quot;); ">
                      <i class="icon-cart-2"></i>
                      Buy                     
                  </button><br><br>
           <button class="command-button primary">
                    <i class="icon-share-2 on-left"></i>
                      Great Book ?
                    <small>Let's share for your friend</small>
                </button>       
        </div>
  </div> 
  <div data-role="tab-control" class="tab-control ">
                <ul class="tabs">
                    <li class="place-right"><a href="#_page_5">Comments <i class="icon-comments-5"></i></a></li>
                    <li class="active place-right"><a href="#_page_4">Description <i class="icon-paragraph-left"></i></a></li>
                </ul>

                <div class="frames ">                  
                    <div id="_page_4" class="frame" style="display: none;">
                        <p><?php echo $data->content?></p>
                    </div>
                    <div id="_page_5" class="frame" style="display: none;">
                        <p>This tab also placed right</p>
                    </div>
                </div>

            </div>
  </div>

        