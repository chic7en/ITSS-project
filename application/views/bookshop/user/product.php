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
                <script type="text/javascript">
                   var _url = "<?php echo base_url("user/like") ?>"
                    var postData = {
                                    product_id:'<?php echo $data->id?>'
                                };
                   function load_ajax(){
                        $.ajax({
                            url : _url,
                            type : 'post',
                            dateType:"json",
                            data : postData,
                            success : function (data){
                                if(data!='0'){
                                    $('.like-num').html(data);
                                    alert("Thank you for like this book..!!!");
                                    }
                                else alert("This book had in your like list..!!!");
                            }
                        });
                    }
                    
                   
                  </script>
                <button class="shortcut primary " style="height: 40px; padding-top: 0px;" onclick="load_ajax()">
                                    <i class="icon-heart"></i>
                                    <small class="bg-lightBlue fg-white like-num"><?php echo $data->like_num?></small>
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
                        <p><?php echo nl2br($data->content);?></p>
                    </div>
                    <div id="_page_5" class="frame" style="display: none;">
                        <div class="listview-outlook">
                            
                            
                            <?php $where['product_id']=$data->id;
                            $input['where']=$where;
                            $getComment= $this->comment_model->get_list($input);
                            ?>
                            <?php foreach($getComment as $key => $value) :?>
                            <a href="#" class="list">
                            <div class="list-content">
                            <span class="list-title fg-amber"><?php $userComment=$this->user_model->get_info($value->user_id);
                            echo $userComment->name;
                            ?> :
                            </span>
                            <p class="list-remark fg-blue " style="font-size:16px"><?php echo nl2br($value->content);?></p>
                            <span class="list-subtitle fg-lightGreen"><?php echo $userComment->email?> on <?php 
                            $datestring = " %Y - %m - %d - %h:%i %a";
                            echo mdate($datestring,$value->time);?></span>
                            
                            
                            </div>
                            </a>
                            <?php endforeach?>
                        </div>
                      
                        <div>
                         <?php 
                      
                         echo form_open('user/comment')?> 
                          <h3>Your Comment :</h3>
                          <script type="text/javascript">
                          function msg(){
                            alert("Your comment has been update...!!!");
                          }
                          </script>

                          <form method="post" >
                          <input type="hidden" name="product_id" value="<?php echo $data->id?>" />
                                    <div data-role="input-control" class="input-control textarea">
                                        <textarea value="comment" name="comment" ></textarea>
                                    </div>
                                    <button class="success" type="submit" onclick="msg()">Submit Comment</button>
                          </form>
                        </div>
                </div>
              </div>
            </div>
  </div>

        