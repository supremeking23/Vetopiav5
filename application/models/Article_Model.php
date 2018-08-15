<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article_Model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    public function add_article($data){
        $this->db->insert('tbl_pet_library',$data);
    }


    public function add_content($data){
        $this->db->insert('tbl_pet_library_content',$data);
    }

    public function add_links($data){
        $this->db->insert('tbl_pet_library_links',$data);
    }

    public function get_all_articles(){
        $this->db->select('*');
        $this->db->from('tbl_pet_library');
        //$this->db->where('is_active',$active);
        $this->db->order_by('library_id', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

    public function update_article_library($library_id,$data){
        $this->db->where('library_id', $library_id);
        $this->db->update('tbl_pet_library', $data);
    }


    public function update_aticle_content($content_id,$data){
        $this->db->where('content_id', $content_id);
        $this->db->update('tbl_pet_library_content', $data);
    }


    public function find_article_from_library_by_library_id($library_id){
        $this->db->select('*');
        $this->db->from('tbl_pet_library');
        $this->db->where('library_id',$library_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function find_article_content_by_library_id($library_id){
        $this->db->select('*');
        $this->db->from('tbl_pet_library_content');
        $this->db->where('library_id',$library_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function find_library_link_by_librarru_id($library_id){
        $this->db->select('*');
        $this->db->from('tbl_pet_library_links');
        $this->db->where('library_id',$library_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    //immediate update
    /*public function immediate_article_change($library_id){
        
        $this->db->select('*');
        $this->db->from('tbl_pet_library');
        $this->db->where('library_id',$library_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;

    }*/


}




  



   



     


    

