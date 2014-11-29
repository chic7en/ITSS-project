<?php
class User_model extends MY_Model{
	public $table='user';
	public function check_login($email, $password){
		$where=array();
		$where['email']=$email;
		$where['password']=$password;
		$this->db->where($where);
        $query = $this->db->get($this->table);
        if ($query->num_rows()==1)
        {
            return $query->row(0);
        }
        return FALSE;
        
      // $query = "SELECT `id` FROM `users` WHERE `email` = ? AND `password` = ?";
        // $result = $this->db->query($query, array($email, $password));

        // if($result->num_rows() == 1){
        //     return $result->row(0)->user_id;
        // }else{
        //     return false;
        // }
    }
}