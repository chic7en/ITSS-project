<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

<form method="post" action="">
     <label for="param_email" class="form-label">Email:<span class="req">*</span></label>
     <input type="text" class="input" id="email" name="email" value="<?php echo set_value('email')?>">
     <div class="error" id="email_error"><?php echo form_error('email')?></div>
                     
     <label for="param_password" class="form-label">Mật khẩu:<span class="req">*</span></label>
     <input type="password" class="input" id="password" name="password">
     <div class="error" id="password_error"><?php echo form_error('password')?></div>
                     
     <label for="param_re_password" class="form-label">Gõ lại mật khẩu:<span class="req">*</span></label>
     <input type="password" class="input" id="re_password" name="re_password">
     <div class="error" id="re_password_error"><?php echo form_error('re_password')?></div>
                     
     <label for="param_name" class="form-label">Họ và tên:<span class="req">*</span></label>
     <input type="text" class="input" id="name" name="name" value="<?php echo set_value('name')?>">
     <div class="error" id="name_error"><?php echo form_error('name')?></div>
                     
     <label for="param_phone" class="form-label">Số điện thoại:<span class="req">*</span></label>
     <input type="text" class="input" id="phone" name="phone" value="<?php echo set_value('phone')?>">
     <div class="error" id="phone_error"><?php echo form_error('phone')?></div>
                     
     <label for="param_address" class="form-label">Địa chỉ:<span class="req">*</span></label>
     <textarea class="input" id="address" name="address"><?php echo set_value('address')?></textarea>
     <div class="error" id="address_error"><?php echo form_error('address')?></div>
                     
     <input type="submit" class="button" value="Đăng ký" name='submit'>
</form>
