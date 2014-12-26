<?php
//birds_model.php (Array of Objects)
class Books_model extends CI_Model{
  function get_book($q){
    $this->db->select('*');
    $this->db->like('name', $q);
    $query = $this->db->get('product');
    if($query->num_rows > 0){
      foreach ($query->result_array() as $row){
        $new_row['label']=htmlentities(stripslashes($row['name']));
        $new_row['value']=htmlentities(stripslashes($row['name']));
        $new_row['id']=htmlentities(stripslashes($row['id']));
        $new_row['description']=htmlentities(stripslashes($row['author']));
        $new_row['image']=htmlentities(stripslashes($row['image_link']));
        $row_set[] = $new_row; //build an array
      }
      echo json_encode($row_set); //format the array into json data
    }
  }
}