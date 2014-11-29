	<div class="grid">
	<div class="row">
	<div class="span3"></div>
	<div class="span12">
	<div>
	<nav class="navigation-bar bg-darkGreen">
    <nav class="navigation-bar-content">
        <button class="element">
            <a  href="<?php echo base_url();?>"><i class="icon-home"></i>  HOME</a>
            
        </button>
        <div class="element">
        <a class="dropdown-toggle" href="#"><i class="icon-book"></i>  HOME</a>
            <ul class="dropdown-menu" data-role="dropdown">

                <li><a href="#">Main</a></li>
                <li><a href="#">File Open</a></li>
                <li class="divider"></li>
                <li><a href="#">Print...</a></li>
                <li class="divider"></li>
                <li><a href="#">Exit</a></li>
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
                <li><a href="<?php echo base_url()?>layout/login">Sign In</a></li>
                <li><a href="<?php echo base_url()?>layout/register">Sign Up</a></li>
                
            </ul>
        </div>
        
        <button class="element image-button image-left place-right">
            User
            <img src="images/211858_100001930891748_287895609_q.jpg"/>
        </button>
    </nav>
</nav>
    </div>
    </div>
    </div>
    </div>