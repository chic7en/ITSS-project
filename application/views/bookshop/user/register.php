<div class="grid">
<div class="row">
    <div class="span2"></div>
    <div class="span8">      
                <form method="post" class="cd-form">
                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signup-username">Username</label>
                        <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username" name="name" value="<?php echo set_value('name');?>">
                        <div class="error" id="name_error"><?php echo form_error('name')?></div>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-email" for="signup-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail" name="email" value="<?php echo set_value('email');?>">
                        <div class="error" id="email_error"><?php echo form_error('email')?></div>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password">Password</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="password" placeholder="Password" name="password">
                        <a href="#0" class="hide-password">Show</a>
                        <div class="error" id="password_error"><?php echo form_error('password')?></div>
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password">Confirm Password</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="password" placeholder="Confirm Password" name="re_password">
                        <div class="error" id="re_password_error"><?php echo form_error('re_password')?></div>
                    </p>
                    <p class="fieldset">
                        <label class="image-replace " for="signup-password">Phone number</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="text" placeholder="Phone number" name="phone">
                        <div class="error" id=""><?php echo form_error('phone')?></div>
                    </p>
                    <p class="fieldset">
                        <label class="image-replace " for="signup-password">Address</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="text" placeholder="Address" name="address">
                        <div class="error" id=""><?php echo form_error('address')?></div>
                    </p>

                    <p class="fieldset">
                        <input type="checkbox" id="accept-terms">
                        <label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="submit" value="Create account" name="submit">
                    </p>
                </form>
    </div>           
</div>
</div>
           