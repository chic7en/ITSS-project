<div class="grid">
<div class="row">
    <div class="span2"></div>
    <div class="span8">  

				<form method="post" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail" name="email" value="<?php echo set_value('email');?>">
						<div class="error" id="name_error"><?php echo form_error('email')?></div>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password" placeholder="Password" name="password">
						<a href="#0" class="hide-password">Show</a>
						<div class="error" id="name_error"><?php echo form_error('password')?></div>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked="">
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login" name="submit">
					</p>
				</form>
				
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
	</div>
	</div>
	</div>

	