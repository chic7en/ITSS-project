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
     $this->load->model('like_model');
     $this->load->model('user_model');
     $this->load->model('cart_model');
     $this->load->model('books_model');
     $this->load->model('comment_model');
  }
  public function test(){
        echo $this->session->flashdata('login_success');
    $datestring = "%Y-%m-%d | %h:%i %a";
    $time = time();

    $time1=mdate($datestring, $time);
    echo $time1;
    
  }
  function get_books(){
    $this->load->model('books_model');
    if (isset($_GET['term'])){
      $q = strtolower($_GET['term']);
     $this->books_model->get_book($q);
    }
  }
  public function comment(){
    $product_id = $this->input->post('product_id');
    $content = $this->input->post('comment');
    $user_id= $this->session->userdata("user_id");
    $data=array(
      'product_id'=> $product_id,
      'content'   => $content,
      'user_id'   => $this->session->userdata("user_id"),
      'time'      =>  time()
      );
    // print_r($data);
    $this->comment_model->create($data);
     // echo '1';
    redirect("user/product/".$product_id);
   }
  public function like(){
    $product_id = $this->input->post('product_id');
    $user_id= $this->session->userdata("user_id");
    $data=array(
      'product_id'=> $product_id,
      'user_id'   => $this->session->userdata("user_id")
      );
    $like=($this->like_model->check_like($user_id,$product_id));
    if(!$like){
    $this->like_model->create($data);
    $where['product_id']=$product_id;
    $input['where']=$where;
    $data1['like_num']=$this->like_model->get_total($input);  
    // $product_id='24';
    // $data['like_num']='4';
    $this->product_model->update($product_id,$data1) ;
    echo $data1['like_num'];
    }
    else echo '0';
   }
   public function index(){
        echo $this->session->flashdata('login_success');
        if ($this->session->userdata("user_id")=='0') {
          redirect();
        }
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='user_index';
        
        $input = array();
        $input['limit'] = array('15', 0);
        $products = $this->product_model->get_list($input);
        $temp['data']=$products;
        $user['name']=$this->session->userdata("user_name");
        $temp['user']=$user;
        $this->load->view("bookshop/user_layout",$temp);
    }
     public function profile(){
        $temp['title']='User Profile';
        $temp['template']='bookshop/user/profile';
        $temp['data']='';
        $user['name']=$this->session->userdata("user_name");
        $temp['user']=$user;
        $this->load->view("bookshop/user_layout",$temp);
    }
    public function change_profile(){
      $data=($_POST);
      $data['password']=md5($_POST['password']);
      $this->user_model->update($this->session->userdata("user_id"),$data);
      redirect("user/profile");
    }

    public function product($id){
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='bookshop/user/product';
        $product=$this->product_model->get_info($id);
        $temp['data']=$product;
        $user['name']=$this->session->userdata("user_name");
        $temp['user']=$user;
        $this->load->view("bookshop/user_layout",$temp);
    }

    public function category($categoryid){
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='user_index';
        
        $input = array();
        $input['limit'] = array('15', 0);
        $where['catalog_id']=$categoryid;
        $input['where']=$where;
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
        
         redirect('user/viewcart');
        
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
        
        redirect('user/viewcart/');
    }
    public function save_cart(){
      $cart=$this->cart->contents();    
      $cartString=serialize($cart);
      // echo $cartString;
      // echo $this->session->userdata("user_id"); 
      // $datestring = " %Y - %m - %d - %h:%i %a";
      $time = time();
      // echo mdate($datestring, $time);
      $data=array(
        'cart_string'=> $cartString,
        'user_id'    => $this->session->userdata("user_id") ,
        'time'       => $time
        );
      $this->cart_model->create($data);
      redirect("user");
    }
    public function empty_cart()
     {
         //hàm xóa cả giỏ hàng
         $this->cart->destroy();
         redirect('user/viewcart');

     }

 
}



