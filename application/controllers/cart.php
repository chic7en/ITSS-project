<?php
class Cart extends MY_Controller
{
     /*
     * Ham khoi tao
     */
     public function __construct()
     {
         //ke thua
         parent::__construct();
         //load thu vien cart
         $this->load->library('cart');
         $this->load->helper('form');
     }
 
    
     /*
      * Phuong thức hiển thị danh sách gio hang
      */
     public function view()
     {
         //buoc1: Lay toan bo san pham trong gio hang
         $carts = $this->cart->contents();
         //buoc2: tong so san pham trong gio hang
         $total = $this->cart->total_items();
         //in thu cau truc cua gio hang
         echo 'Tong so san pham tron gio hang la: '.$total;
         echo "<pre>";
         print_r($carts);
         echo "</pre>";
         $this->load->view('cartview');
     }
     /*
      * Phuong thuc cap nhat so luong san pham trong gio
      */
     public function update()
     {
         //buoc1: Lay toan bo san pham trong gio hang
         $carts = $this->cart->contents();
         //Bước 2: lay id cua san pham muốn cập nhật
         $id = '8';
         foreach ($carts as $key => $value)
         {
             //Kiểm tra nếu id của sản phẩm trong giỏ hàng = id sản phẩm muốn cập nhật
             if($value['id'] == $id)
             {
                 $data = array(
                       'rowid' => $key,
                       'qty'   => '3'
                 );
                 //cap nhat lai gio hang
                 $this->cart->update($data);
                 break;
             }
         }
 
     }
 
     /*
     * xoa 1 sản phẩm trong gio hang
     */
     public function del()
     {
         //lay id cua san pham muốn xóa
         $id = '8';
         //buoc1: Lay toan bo san pham trong gio hang
         $carts = $this->cart->contents();
         foreach ($carts as $key => $value)
         {
             //Kiểm tra nếu id của sản phẩm trong giỏ hàng = id sản phẩm muốn xóa
             if($value['id'] == $id)
             {
                 $data = array(
                       'rowid' => $key,
                       'qty'   => 0,//cập nhật số lượng = 0
                 );
                 //cap nhat lai gio hang
                 $this->cart->update($data);
                 //thoát khỏi vòng lặp
                 break;
             }
         }
     }
 
      /*
      * xoa cả gio hang
      */
     public function empty_cart()
     {
         //hàm xóa cả giỏ hàng
         $this->cart->destroy();
     }
}
