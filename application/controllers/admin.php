<?php
class Admin extends MY_Controller
{
	public function __construct(){
		parent:: __construct();
		 $this->load->library('session');
		 $this->load->helper('form');
	     $this->load->model('product_model');
	     $this->load->model('like_model');
	     $this->load->model('user_model');
	     $this->load->model('catalog_model');	
	     $this->load->model('cart_model');
	}
	public function index(){
		if ($this->session->userdata("user_id")=='0') {
          redirect();
        }
        $temp['title']='Book Shop';
        $temp['template']='admin/view/dashboard/index';
        $temp['data']='0';
        $this->load->view("admin/admin_layout",$temp);
    }
    public function user(){
    	$temp['title']='Book Shop';
        $temp['template']='admin/view/user/index';
        $input = array();
        $input['limit'] = array('15', 0);
        $user = $this->user_model->get_list($input);
        $temp['data']=$user;
        $this->load->view("admin/admin_layout",$temp);
    }
    public function product(){
    	
    	$temp['title']='Book Shop';
        $temp['template']='admin/view/product/index';
        $input = array();
        $input['limit'] = array('15', 0);
        $product = $this->product_model->get_list($input);
        $temp['data']=$product;
        $this->load->view("admin/admin_layout",$temp);
    }
    public function add_product(){
    	$temp['title']='Book Shop';
        $temp['template']='admin/view/product/add_product';
        $temp['data']='';
        $this->load->view("admin/admin_layout",$temp);
    }
    public function change_product($product_id){
    	$temp['title']='Book Shop';
        $temp['template']='admin/view/product/change';
        $product=$this->product_model->get_info($product_id);
        $temp['data']=$product;
        $this->load->view("admin/admin_layout",$temp);
    }
    public function update_product(){
    	 if($_POST){
            
            $data = $_POST; //for the sake of this example we are going to use the $_POST variable directly
            // print_r ($data);
            $this->product_model->update($data['id'],$data);
            redirect("admin/change_product/".$data['id']);
        }
    }    
    public function view_list_order(){
        
        $temp['title']='Book Shop';
        $temp['template']='admin/view/order/index';
        $input = array();
        $input['limit'] = array('15', 0);
        $getOrder = $this->cart_model->get_list($input);
        $temp['data']=$getOrder;
        $this->load->view("admin/admin_layout",$temp);
    }
    public function view_order($order_id){
        
        $temp['title']='Book Shop';
        $temp['template']='admin/view/order/detail_product';
        $getOrder = $this->cart_model->get_info($order_id);
        $temp['data']=$getOrder;
        $this->load->view("admin/admin_layout",$temp);
    }

        
    public function logout(){

    // Hủy tất cả các session
    $this->session->sess_destroy();

    // Chuyển về trang login
    redirect();
    }
}