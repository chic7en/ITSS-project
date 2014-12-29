<?php $user=$this->user_model->get_info($this->session->userdata("user_id"));?>
<?php echo form_open("user/change_profile")?>
<script type="text/javascript">
      function msg(){
        alert("Update infomation success");
      }
</script>
<br>
<div class="span12 fg-white">

        <div class="span3">
            <div class="image">
            <img src="<?php echo base_url()?>public/bookshop/images/user.png" style="width:200px" title="user " alt="user " >
            </div>                
        </div>
        <form>
        <div class="span9">
          <h3 class="fg-white">Name :</h3>
          <div data-role="input-control" class="input-control text">
                        <input type="text" value="<?php echo $user->name?>" name="name">
                        <button tabindex="-1" class="btn-clear" type="button"></button>
                    </div>
    <div >
          <span>Account: </span><br>
          <div data-role="input-control" class="input-control text">
                        <input type="text" value="<?php echo $user->email?>" name="email">
                        <button tabindex="-1" class="btn-clear" type="button"></button>
                    </div><br>
          <span class="list-remark">Phone: </span><br>
          <div data-role="input-control" class="input-control text">
                        <input type="text" value="<?php echo $user->phone?>" name="phone">
                        <button tabindex="-1" class="btn-clear" type="button"></button>
                    </div><br>
          <span class="list-remark">Address: </span><br>
          <div data-role="input-control" class="input-control text">
                        <input type="text" value="<?php echo $user->address?>" name="address">
                        <button tabindex="-1" class="btn-clear" type="button"></button>
                    </div><br>
          <span class="list-remark">Password: </span><br>
          <div data-role="input-control" class="input-control password">
                        <input type="password" autofocus="" placeholder="type password" name="password">
                        <button tabindex="-1" class="btn-reveal" type="button"></button>
                    </div><br>       
        </div><button type="submit" class="success" onclick="msg()" >Submit</button> 
  </div>

  </form>
  <div data-role="tab-control" class="tab-control ">
                <ul class="tabs">
                    <li class="place-right"><a href="#_page_5">Order <i class="icon-comments-5"></i></a></li>
                    <li class="active place-right"><a href="#_page_4">Like list <i class="icon-paragraph-left"></i></a></li>
                </ul>

                <div class="frames ">                  
                    <div id="_page_4" class="frame container" style="display: none;">
                        <?php
                        $where['user_id']=$user->id;
                        $input['where'] =$where;
                        $like=$this->like_model->get_list($input);
                        foreach ($like as $key => $value) {
                        // print_r($value->product_id);
                        $p=$this->product_model->get_info($value->product_id);
                        // print_r($p);
                        $data['p']=$p;
                        $this->load->view("bookshop/user/like_list",$data);
                      }
                        
                        ?>
                    </div>
                    <div id="_page_5" class="frame" style="display: none;">
                        <p>order</p>
                    </div>
                </div>

            </div>
  </div>

        