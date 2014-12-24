 <?php
class Layout extends MY_Controller{
    public function __construct(){
        parent::__construct();
        
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
        $this->load->view("bookshop/layout",$temp);

    }
    public function product($id){
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='bookshop/product';
        $product=$this->product_model->get_info($id);
        $temp['data']=$product;
        $this->load->view("bookshop/layout",$temp);
    }
    public function search(){
      echo $search;
    }
    public function category($categoryid){
        
        $this->load->model('product_model');
        $temp['title']='Book Shop';
        $temp['template']='index_layout';
        
        $input = array();
        $input['limit'] = array('15', 0);
        $where['catalog_id']=$categoryid;
        $input['where']=$where;
        $products = $this->product_model->get_list($input);

        $temp['data']=$products;
        $this->load->view("bookshop/layout",$temp);    

    }
    // public function register(){
    //   redirect('user/register');
    // }
    // public function login(){
    //   redirect('user/login');
    // }
    /*
    * Kiểm tra email đã tồn tại hay chưa
    */
   function check_email()
   {
       
       $email = $this->input->post('email');
       $where = array();
       $where['email'] = $email;
       //kiểm tra điều kiện email có tồn tại trong csdl hay không
       if($this->user_model->check_exists($where))
       {
            //trả về thông báo lỗi nếu đã tồn tại email này
      $this->form_validation->set_message(__FUNCTION__, 'Email đã sử dụng');
      return FALSE;
       }
       return TRUE;
   }
   
  /*
  * Phuong thuc dang ky thanh vien
  */
  public function register()
  {

     //load thu vien validation
        session_start();
     $this->load->model('user_model');
     $temp['title']='Register';
     $temp['template']='bookshop/user/register';
     
     //tao cac tap luat
     $this->form_validation->set_rules('email', 'Email', 'required|valid_email|xss_clean|callback_check_email');
     $this->form_validation->set_rules('name', 'Name', 'required|min_length[4]|xss_clean');
     
     $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]|xss_clean');
     $this->form_validation->set_rules('re_password', 'Confirm Password', 'required|matches[password]|xss_clean');
     $this->form_validation->set_rules('phone', 'Phone number', 'required|min_length[6]|numeric|xss_clean');
     $this->form_validation->set_rules('address', 'Address', 'required|min_length[4]|xss_clean');
     if($this->form_validation->run())
     {
         //du lieu them vao bang thanh vien
         $data = array(
             'name'     => $this->input->post('name'),
             'email'    => $this->input->post('email'),
             'password' => md5($this->input->post('password')),
             'phone'    =>  $this->input->post('phone'),
             'address'  =>  $this->input->post('address')
         );
         //them thanh vien vao trong csdl
         if($this->user_model->create($data))
         {
            $this->session->set_flashdata('flash_message', 'Dang ky thanh vien thanh cong');
            echo $this->session->flashdata('flash_message');
        redirect();//chuyen toi trang chu
         }
     }
     //gui du lieu sang view
     // $this->load->view('bookshop/user/register', $this->data);
     $temp['data']=$this->data;
     $this->load->view("bookshop/layout",$temp);
  }

   public function login()
  {
    // Kiểm tra người dùng đã đăng nhập hay chưa. Nếu người dùng đăng nhập rồi thì chuyển thẳng đến trang đích
     if($this->session->userdata('logged_in')){
         $this->session->set_flashdata('login_success','Login Succes...!');
         redirect('user');
     }
     //load thu vien validation
      $this->load->model('user_model');
     $this->load->library('form_validation');
     $this->load->helper('form');
     $temp['title']='Login';
     $temp['template']='bookshop/user/login';
     
     //tao cac tap luat
     
     $this->form_validation->set_rules('email', 'Email', 'required|min_length[8]|xss_clean');
     
     $this->form_validation->set_rules('password', 'Password', 'required|min_length[6]|xss_clean');     
     
     if($this->form_validation->run())
     {
         //du lieu them vao bang thanh vien
         $data = array(
             'email'    => $this->input->post('email'),
             'password' => md5($this->input->post('password')),
             
         );

         $user=($this->user_model->check_login($data['email'],$data['password']));

         if(!$user->id){
              $this->session->set_flashdata('login_error',TRUE);
              redirect('layout/login');
         }
         else{
          $this->session->set_flashdata('login_success','Login Succes...!');
          $this->session->set_userdata(array(
                 'logged_in' => true,
                  'user_id' => $user->id,
                  'user_email'=>$user->email,
                  'user_name'=>$user->name,
                  'user_level'=>$user->level
              ));
            if($user->level=='0')
             redirect('user');
            else if($user->level=='1')
              redirect('admin');
         }
         
         
     }
     //gui du lieu sang view
     $temp['data']=$this->data;
     $this->load->view('bookshop/layout', $temp);
  }
  
} 