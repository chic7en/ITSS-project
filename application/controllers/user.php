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

 
}



