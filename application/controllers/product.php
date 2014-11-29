<?php 
 
class Product extends MY_Controller
{
   /*
   * Ham khi khoi tao
   */
   public function __construct()
   {
       parent::__construct();
       $this->load->model('product_model');//tải file model
   }
    /*
    * Trang dang danh sách sản phẩm
    */
   public function index()
   {
          //gan diều kiện cho câu truy vấn
      $input = array();
      $input['limit'] = array('5', 0);
          $products = $this->product_model->get_list($input);
          echo "<pre>";
          print_r($products);
          echo "</pre>";
          print_r($products[1]);
          echo($products['0']->name);
          echo "<br>";
          foreach ($products as $key => $object) {
          echo $object->name;
          }
   }
   /**
    * Them moi
   */
   // function add()
   // {
   //       //luu toan bo thong tin san pham vao csdl
   //        $data = array();
   //        $data['name']   = 'Nokia 520';
   //        $data['price']  = '3000000';
   //        if($this->product_model->create($data))
   //        {
   //              //gui thong bao thanh cong
   //       }
   // }
}
