
<div class="grid">
                <div class="row">
                	
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