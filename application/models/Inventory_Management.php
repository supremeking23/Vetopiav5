<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inventory_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    

   // insert new product: item in database
   public function insert_new_item($data){
        $this->db->insert('tbl_productitems',$data);
   }


   public function insert_new_item_in_store($data){
        $this->db->insert('tbl_products',$data);
   }

   //insert supply in database


   //for fast moving and slow moving
   public function slow_fast_moving($sf_date){

        $this->db->select('a.total_per_product,a.sales_date,b.product_table_id,b.product_name,b.product_price,b.productInstore,b.product_id,b.productType');
        $this->db->from('tbl_salesdetails a');
        $this->db->join('tbl_products b','a.product_table_id = b.product_table_id');
        //$this->db->where('a.sales_date', 'YEAR(curdate())');
        //$this->db->where('a.sales_date', $sf_date);
        $this->db->group_by('b.product_name');
        $this->db->order_by('b.product_table_id','DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }


   // not use for now
  /* public function get_sum_sales_detail_by_product_table_id($product_table_id){
           $result_set = $this->db->query('SELECT SUM(total_per_product) AS "sum_total_per_product" FROM tbl_salesdetails  WHERE product_table_id = '.$product_table_id.' ');
            return $result_set->result();
   }*/


   public function get_sum_total_quantity_sales_detail_by_product_table_id($product_table_id){
           $result_set = $this->db->query('SELECT SUM(sales_quantity) AS "sales_quantity" FROM tbl_salesdetails  WHERE product_table_id = '.$product_table_id.' ');
            return $result_set->result();
   }



   public function new_inventory_detail($product_id){
        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        $this->db->where('product_id', $product_id);
        $this->db->where('action', 'Add Supply');
        $this->db->order_by('inv_table_id','DESC');
        $this->db->limit(1);
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }


   public function get_two_months_in_inventory($product_id){
        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        $this->db->where('product_id', $product_id);
        $this->db->where('action', 'Add Supply');
        $this->db->order_by('inv_table_id','DESC');
        $this->db->limit(2);
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }


   public function get_avg_total_quantity_in_inventory($product_id){
           $result_set = $this->db->query('SELECT AVG(quantity) AS "average" FROM vetopia_db.tbl_productinventories  WHERE product_id = "'.$product_id.'" AND action ="Add Supply"   order by inv_table_id desc ');
            return $result_set->result();
   }


   public function insert_new_inventory_action($data){
        $this->db->insert('tbl_productinventories',$data);
   }


   public function update_supply_count($product_table_id,$data){
      $this->db->where('product_table_id', $product_table_id);
      $this->db->update('tbl_products', $data);
   }


   public function update_item_details($item_table_id,$data){
      $this->db->where('item_table_id', $item_table_id);
      $this->db->update('tbl_productitems', $data);
   }


   public function update_item_details_from_tblproducts($product_id,$data){
      $this->db->where('product_id', $product_id);
      $this->db->update('tbl_products', $data);
   }


  


  public function get_all_items(){

        $this->db->select('*');
        $this->db->from('tbl_productitems');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function get_all_inventory(){

        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        
        //$this->db->where('is_active',$active);
        $this->db->order_by('inventory_date', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_item_detail_by_id($id){
        $this->db->select('a.item_table_id,a.item_id,a.itemname,a.price,a.itemImage,a.itemdescription,a.supplier,a.max_product_count,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id,b.productType,b.store_price');
        $this->db->from('tbl_productitems a');
        $this->db->join('tbl_products b','a.item_id = b.product_id');
        $this->db->where('item_table_id', $id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_item_inventory_detail_by_item_table_id($id){
        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        
        $this->db->where('product_id',$id);

        $this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_product_count_by_product_id($product_table_id){
         /*$this->db->select('*');
         $this->db->from('tbl_products');*/

          $this->db->select('a.item_table_id,a.item_id,a.itemname,a.price,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id');
          $this->db->from('tbl_productitems a');
          $this->db->join('tbl_products b','a.item_id = b.product_id');
          
           //$this->db->where('product_table_id',$product_specific_id);

          $this->db->where('product_table_id',$product_table_id);

           $query = $this->db->get();

           $result_set = $query->result();

           return $result_set;
    }

   





    public function get_all_items_with_number_of_supply(){
        $this->db->select('a.item_table_id,a.item_id,a.itemname,a.price,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id,b.store_price,a.max_product_count');
        $this->db->from('tbl_productitems a');
        $this->db->join('tbl_products b','a.item_id = b.product_id');
       
        

       

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }











    /*********FOOD ******///////////

     // insert new product: item in database
   public function insert_new_food($data){
        $this->db->insert('tbl_productfoods',$data);
   }


   public function insert_new_food_in_store($data){
        $this->db->insert('tbl_products',$data);
   }


   public function get_all_food_with_number_of_supply(){
        $this->db->select('a.food_table_id,a.food_id,a.product_unit,a.foodname,a.foodImage,a.price,a.forwhatpet,a.fooddescription,a.max_product_count,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id,b.store_price');
        $this->db->from('tbl_productfoods a');
        $this->db->join('tbl_products b','a.food_id = b.product_id');
       
        

       

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    //supply
    public function get_product_count_by_product_id_in_foods($product_table_id){
         /*$this->db->select('*');
         $this->db->from('tbl_products');*/

          $this->db->select('a.food_table_id,a.food_id,a.foodname,a.price,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id');
          $this->db->from('tbl_productfoods a');
          $this->db->join('tbl_products b','a.food_id = b.product_id');
          
           //$this->db->where('product_table_id',$product_specific_id);

          $this->db->where('product_table_id',$product_table_id);

           $query = $this->db->get();

           $result_set = $query->result();

           return $result_set;
    }



    public function get_food_detail_by_id($id){
        $this->db->select('a.food_table_id,a.food_id,a.foodname,a.price,a.foodImage,a.forwhatpet,a.fooddescription,a.supplier,a.product_unit,a.product_unit_number,a.product_unit_measure,a.max_product_count,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id,b.productType,b.store_price');
        $this->db->from('tbl_productfoods a');
        $this->db->join('tbl_products b','a.food_id = b.product_id');
        $this->db->where('food_table_id', $id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_food_inventory_detail_by_food_table_id($id){
        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        
        $this->db->where('product_id',$id);

        $this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


   public function update_food_details($food_table_id,$data){
      $this->db->where('food_table_id', $food_table_id);
      $this->db->update('tbl_productfoods', $data);
   }


  public function update_food_details_from_tblproducts($product_id,$data){
      $this->db->where('product_id', $product_id);
      $this->db->update('tbl_products', $data);
   }





//********************* MEDICINES ************************************//


  public function insert_new_medicine($data){
        $this->db->insert('tbl_productmedicines',$data);
  }

 public function get_all_medicine_with_number_of_supply(){
        $this->db->select('a.med_table_id,a.med_id,a.medname,a.max_product_count,a.product_unit,a.medType,a.medImage,a.meddescription,a.price,b.productInStore,b.store_price,b.product_name,b.product_table_id,b.product_id,b.product_relation_id,b.store_price');
        $this->db->from('tbl_productmedicines a');
        $this->db->join('tbl_products b','a.med_id = b.product_id');
       
        

       

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
  }

  //supply

  public function get_product_count_by_product_id_in_medicine($product_table_id){
         /*$this->db->select('*');
         $this->db->from('tbl_products');*/

          $this->db->select('a.med_table_id,a.med_id,a.medname,a.price,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id');
          $this->db->from('tbl_productmedicines a');
          $this->db->join('tbl_products b','a.med_id = b.product_id');
          
           //$this->db->where('product_table_id',$product_specific_id);

          $this->db->where('product_table_id',$product_table_id);

           $query = $this->db->get();

           $result_set = $query->result();

           return $result_set;
    }


    public function get_medicine_detail_by_id($id){
        $this->db->select('a.med_table_id,a.med_id,a.medname,a.price,a.medImage,a.medType,a.meddescription,a.supplier,a.product_unit,a.max_product_count,a.product_unit_number,a.product_unit_measure,b.productInStore,b.product_table_id,b.product_id,b.product_relation_id,b.productType,b.store_price');
        $this->db->from('tbl_productmedicines a');
        $this->db->join('tbl_products b','a.med_id = b.product_id');
        $this->db->where('med_table_id', $id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function get_medicine_inventory_detail_by_medicine_table_id($id){
        $this->db->select('*');
        $this->db->from('tbl_productinventories');
        
        $this->db->where('product_id',$id);

        $this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function update_medicine_details($food_table_id,$data){
      $this->db->where('med_table_id', $food_table_id);
      $this->db->update('tbl_productmedicines', $data);
   }



   public function update_medicine_details_from_tblproducts($product_id,$data){
      $this->db->where('product_id', $product_id);
      $this->db->update('tbl_products', $data);
   }




    //explicitly for tbl_products

   public function get_all_products(){

        $this->db->select('*');
        $this->db->from('tbl_products');
        
        

        $this->db->order_by('product_id', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();
        return $result_set;
   }

   public function get_all_products_for_pos(){
        $this->db->select('*');
        $this->db->from('tbl_products');
        $this->db->where('productInStore !=', 0);
        $this->db->order_by('product_id', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();
        return $result_set;    
   }


   /*public function get_all_product_for_pos_advanced(){
        $this->db->select('a.product_name,a.product_unit,a.productType,a.product_id,a.productInStore,a.dateAdded,a.productImage,a.product_price,a.store_price,b.fooddescription,c.itemdescription,d.meddescription');
        $this->db->from('tbl_products a');
        $this->db->join('tbl_productfoods b','a.product_id = b.food_id');
        $this->db->join('tbl_productitems c','a.product_id = c.item_id');
        $this->db->join('tbl_productmedicines d','a.product_id = d.med_id');

        $query = $this->db->get();

        $result_set = $query->result();
        return $result_set; 
   }*/


  //sum of all products
  public function get_count_all_products(){
      $result_set = $this->db->query('SELECT SUM(productInStore) AS "count_all" FROM tbl_products');
      return $result_set->result();
  }


  public function find_food_by_name($name){
        $this->db->select('*');
        $this->db->from('tbl_productfoods');
        
        $this->db->where('foodname',$name);

        //$this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
  }




  public function find_med_by_name($name){
        $this->db->select('*');
        $this->db->from('tbl_productmedicines');
        
        $this->db->where('medname',$name);

        //$this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
  }


  public function find_item_by_name($name){
        $this->db->select('*');
        $this->db->from('tbl_productitems');
        
        $this->db->where('itemname',$name);

        //$this->db->order_by('inventory_date', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
  }


  ///for notification

  public function get_count_lower_product_count($half){
       $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_products  WHERE productInStore < '.$half);
            return $result_set->result();
  }


  public function get_count_lower_product_medicine($half){
       $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_products  WHERE productInStore < '.$half.'  AND  productType = "Medicine"');
            return $result_set->result();
  }


  public function get_count_lower_product_item($half){
       $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_products  WHERE productInStore < '.$half.'   AND  productType = "Item"');
            return $result_set->result();
  }

  public function get_count_lower_product_food($half){
       $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_products  WHERE productInStore < '.$half.'   AND  productType = "Food"');
            return $result_set->result();
  }






  /// fiter sale report

  public function get_report_from_to($from,$to){

        $this->db->select('*');
        $this->db->from('tbl_sales');
        $this->db->where('sales_date >=',$from);
        $this->db->where('sales_date <=',$to);
        $this->db->order_by('sales_id', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();
        return $result_set;
  }




  
}


?>