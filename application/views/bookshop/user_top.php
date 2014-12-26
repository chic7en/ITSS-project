	<div class="grid">
	<div class="row">
	<!-- <div class="span3"></div>
	<div class="span12">
	<div> -->
	<div class="navigation-bar bg-darkGreen fixed-top shadow">
    <div class="navigation-bar-content container">
        
        
            <a class="element" href="<?php echo base_url();?>user" style="color:#ffffff;padding-left: 30px; padding-right: 20px;"><i class="icon-home"></i>  HOME</a>
        <span class="element-divider"></span>
        <a href="#" class="element1 pull-menu"></a>
        <div class="element-menu">
        <div class="element">
        <a class="dropdown-toggle" href="#"><i class="icon-book"></i>  BOOK</a>
            <ul class="dropdown-menu bg-amber" data-role="dropdown">

                <li><a href="#">Today Highlight</a></li>
                <li class="divider"></li>
                <li><a href="<?php echo base_url()?>user/category/1">Business</a></li>
                <li><a href="<?php echo base_url()?>user/category/2">Comic Strips</a></li>
                <li><a href="<?php echo base_url()?>user/category/3">Kids</a></li>
                <li><a href="<?php echo base_url()?>user/category/4">Medicals</a></li>
                <li><a href="<?php echo base_url()?>user/category/5">Romances</a></li>
                <li><a href="<?php echo base_url()?>user/category/6">Teen</a></li>
                <!-- <li class="divider"></li>
                <li><a href="#">Print...</a></li>
                <li class="divider"></li>
                <li><a href="#">Exit</a></li> -->

                
              
            </ul>
        </div>    
        

        <span class="element-divider"></span>

        <div class="span3">
        <script type="text/javascript">
        $(document).ready(function(){
          $("#books").autocomplete({
            source: "<?php echo base_url("user/get_books")?>"
          }).data( "ui-autocomplete" )._renderItem = function( ul, item ) {
                var inner_html = '<a href="<?php echo base_url("user/product");?>/'+ item.id +'"><div class="list_item_container"><div class="image1"><img src="<?php echo base_url("public/bookshop/images")?>/' + item.image + '"></div><div class="label">' + item.label + '</div><div class="description">' + item.description + '</div></div></a>';
                return $( "<li></li>" )
                    .data( "item.autocomplete", item )
                    .append(inner_html)
                    .appendTo( ul );
            };
        });
        </script>
        <div class="element input-element no-tablet-portrait no-phone">
        
            <form method="post">
                <div class="input-control text" style="width: 200px;">
                <input type="text" id="books" placeholder="Search..." name="search">
                  <button class="btn-search" ></button>
                   </div>
            </form></div>
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
    </div>
    </div>
</div>
    </div>
    </div>
    </div>
    </div>