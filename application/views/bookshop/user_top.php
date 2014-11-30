	<div class="grid">
	<div class="row">
	<div class="span3"></div>
	<div class="span12">
	<div>
	<nav class="navigation-bar bg-darkGreen fixed-top shadow">
    <nav class="navigation-bar-content">
        
        <div class="span2">
        <div class="element"  >
            <a  href="<?php echo base_url();?>user" style="color:#ffffff;padding-left: 30px; padding-right: 20px;"><i class="icon-home"></i>  HOME</a>
            
        </div>
        </div>
        <div class="element">
        <a class="dropdown-toggle" href="#"><i class="icon-book"></i>  BOOK</a>
            <ul class="dropdown-menu bg-amber" data-role="dropdown">

                <li><a href="#">Today Highlight</a></li>
                <li class="divider"></li>
                <li><a href="#">Business</a></li>
                <li><a href="#">Comic Strips</a></li>
                <li><a href="#">Kids</a></li>
                <li><a href="#">Medicals</a></li>
                <li><a href="#">Romances</a></li>
                <li><a href="#">Teen</a></li>
                <!-- <li class="divider"></li>
                <li><a href="#">Print...</a></li>
                <li class="divider"></li>
                <li><a href="#">Exit</a></li> -->

                
              
            </ul>
            
        </div>

        <span class="element-divider"></span>
        <a class="element brand" href="#"><span class="icon-spin"></span></a>
        <a class="element brand" href="#"><span class="icon-printer"></span></a>
        <span class="element-divider"></span>

        <div class="element input-element">
            <form>
                <div class="input-control text">
                    <input type="text" placeholder="Search...">
                    <button class="btn-search"></button>
                </div>
            </form>
        </div>
        
        <div class="element place-right">

            <a class="dropdown-toggle" href="#">
                <span class="icon-user-2"></span>
            </a>
            <ul class="dropdown-menu place-right bg-lightGreen" data-role="dropdown">
                <li><a href="<?php echo base_url()?>user/viewcart">View Cart</a></li>
                <li><a href="<?php echo base_url()?>user/empty_cart">Empty Cart</a></li>
                <li><a href="<?php echo base_url()?>layout/register">Infomation</a></li>
                <li><a href="<?php echo base_url()?>user/logout">Sign Out</a></li>
                
            </ul>
        </div>
        
        <button class="element image-button image-left place-right">
            <?php print_r($user['name']);?>
<!--             <img src="images/211858_100001930891748_287895609_q.jpg"/> -->
        </button>
    </nav>
</nav>
    </div>
    </div>
    </div>
    </div>