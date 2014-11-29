<?php 
class User extends MY_Controller
{
  public function __construct()
  {
     parent::__construct();
     //load model user
     
     $this->load->library('form_validation');
     $this->load->helper('form');
     $this->load->library('session');
     $this->load->library('cart');
     $this->load->model('product_model');
  }
  
   public function index(){
        
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='index_layout';
        //$temp['data']['info']="Welcome to CI Layout - QHOnline.Info";
        $input = array();
        $input['limit'] = array('15', 0);
        $products = $this->product_model->get_list($input);
        $temp['data']=$products;
        $user['name']=$this->session->userdata("user_name");
        $temp['user']=$user;
        $this->load->view("bookshop/user_layout",$temp);

    }
   
    public function logout(){

    // Hủy tất cả các session
    $this->session->sess_destroy();

    // Chuyển về trang login
    redirect();
    }
    public function viewCart(){
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='cartview';
        $user['name']=$this->session->userdata("user_name");
        $temp['user']=$user;
        $temp['data']=$user;
        $this->load->view("bookshop/user_layout",$temp);
    }
    function addToCart($productId) {
        
        //you need the details for the selected products to be added to your cart
        
        $item1 = $this->product_model->get_info($productId);
        $item= array(
            'id'        =>$item1->id,
            'qty'       =>1,
            'price'     =>$item1->price,
            'name'      =>$item1->name,
            'options'   =>array('image_link'=> $item1->image_link)
            );
        print_r($item);
        //$item variable must have the 4 required indexes necessary for inserting data to our cart.
        
        //sample
        
        /* $item =    array(
               'id'      => 'sku_123ABC',
               'qty'     => 1,
               'price'   => 99.99,
               'name'    => 'Monitor',
               'options' => array('Color' => 'Black')
            );
        */
        
        //insert item to cart
        
        $this->cart->insert($item);
        
        //after a user click the add to cart button in our product page we could redirect him
        //back to our product page
        
         redirect('user');
        
        //but if you use ajax to add item to your cart maybe you could use an echo fucntion.
        
    }
    function updateCart(){
        
        //To update the information in your cart, you must pass an array containing the Row ID
        //and quantity to the $this->cart->update() function.
        
        
        //ID and the Quantity can be pass by submiting the form in our cart view.
        
        //Our cart view can generate a data like this
        //I try add an item to cart then try to submit the form and using var dump I got something like this
        /*
        Array (
            [1] => Array (
                    [rowid] => 79fcbc10fafd6b1ea8202991ba15502c
                    [qty] => 12 )
            [2] => Array (
                    [rowid] => e942e3675eab2e6e688bdf6a851a0a54
                    [qty] => 34 )
            )
        */
        
        if($_POST){
            
            $data = $_POST; //for the sake of this example we are going to use the $_POST variable directly
            
        }
        
        $this->cart->update($data);
        
        redirect('user/viewcart');
    }

 
}



