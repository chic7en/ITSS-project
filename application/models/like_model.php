<?php
class Like_model extends MY_Model
{
    //ten bang du lieu
    public $table = 'like';
    public function check_like($user_id, $product_id){
		$where=array();
		$where['user_id']=$user_id;
		$where['product_id']=$product_id;
		$this->db->where($where);
        $query = $this->db->get($this->table);
        if ($query->num_rows()==1)
        {
            return $query->row(0);
        }
        return FALSE;
    }
}