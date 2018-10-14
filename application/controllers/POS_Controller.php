<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class POS_Controller extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
        $this->load->model('appointment_management');

        $this->load->model('pet_management_model');

        $this->load->model('inventory_management');

        $this->load->model('pos_management');

        $this->load->model('settings_model');
        //$this->load->model('user_logs_model');

        if(!$this->session->userdata('logged_in')){
				redirect('landing_page/login');
		}


		//echo $data['complete_name'] = $this->session->userdata('complete_name');


    }


   	public function add_to_cart(){

    		$data = array(
                'id' => $this->input->post('product_id'), 
                'prod_id' => $this->input->post('prod_id'),
                'name' => $this->input->post('product_name'), 
                'product_type' => $this->input->post('product_type'), 
                //'price' => $this->input->post('product_price'), 
                'qty' => $this->input->post('quantity'), 
                'price' => $this->input->post('store_price'),
                'product_unit' => $this->input->post('product_unit'),
                'base_price' => $this->input->post('product_price'), 
            );
            $this->cart->insert($data);
            echo $this->show_cart(); 


   	}

    //.' <input type="hidden" value="'.$items['id'].'">'.
    //edit muna saglit
    function show_cart(){ 
            $output = '';
            $no = 0;
            if(empty($this->cart->contents())){
               $x = 0;
               while($x<8){
                 $output .= '
                     <tr>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                     </tr>

                   
                ';
                $x++;
               }

            }else{
                 foreach ($this->cart->contents() as $items) {
                    //$no is product number in the cart

                    /*while($no < 8){
                         $output .= '
                     <tr>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                     </tr>

                   
                ';
                  $no++;
                    }*/



                    //$no++;
                    $output .='
                        <tr>
                            <td>'.$items['name'] .'<br><small>'.$items['product_unit'].'</small>' .'</td>
                            <td>'.$items['product_type'].'</td>
                            <td>₱'.$items['price'].'</td>
                            <td>'.$items['qty'].'</td>
                            <td>₱'.$items['subtotal'].'</td>
                            <td><button type="button" id="'.$items['rowid'].'" class="romove_cart btn btn-flat btn-danger btn-sm">Cancel</button></td>
                        </tr>
                    ';
                    }

                    while($no < 8){
                         $output .= '
                     <tr>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                        <td><p></p></td>
                     </tr>

                   
                        ';
                    $no++;
                    }


            }
            $output .= '
                <tr>
                    <th width="25%">Total Products</th>
                        <td class="text-right" style="padding-right:10px;"><span id="count">'.
                            count($this->cart->contents())
                        .'
                            ('.array_sum(array_column($this->cart->contents(),'qty')).')
                          </span></td>
                    <th colspan="3">Total Amount</th>
                    <th colspan="2">'.' ₱'.$this->cart->total().'</th>
                </tr>
            ';
            return $output;
    }


    function load_cart(){ 
        echo $this->show_cart();
    }



    function show_total(){
        
    }



    function show_cart_init(){ 
            $output = '';
            $no = 0;
            $x = 0;
            while(x < 8){
                $output .= '
                <tr>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                    <td><p></p></td>
                </tr>
                ';

                $x++;
            }
            $output .= '
                <tr>
                    <th colspan="3">Total Amount</th>
                    <th colspan="2">'.' ₱'.number_format($this->cart->total()).'</th>
                </tr>
            ';
            return $output;
    }



    function load_cart_init(){ 
        echo $this->show_cart_init();
    }

    /*
    function show_cart(){ 
            $output = '';
            $no = 0;
            foreach ($this->cart->contents() as $items) {
                $no++;
                $output .='
                    <tr>
                        <td>'.$items['name'] .'</td>
                        <td>'.$items['product_type'].'</td>
                        <td>'.number_format($items['price']).'</td>
                        <td>'.$items['qty'].'</td>
                        <td>'.number_format($items['subtotal']).'</td>
                        <td><button type="button" id="'.$items['rowid'].'" class="romove_cart btn btn-danger btn-sm">Cancel</button></td>
                    </tr>
                ';
            }
            $output .= '
                <tr>
                    <th colspan="3">Total Amount</th>
                    <th colspan="2">'.' ₱'.number_format($this->cart->total()).'</th>
                </tr>
            ';
            return $output;
    }

    */






    function delete_cart(){ 
        $data = array(
            'rowid' => $this->input->post('row_id'), 
            'qty' => 0, 
        );
        $this->cart->update($data);
        echo $this->show_cart();
    }



    //not ajax
    public function checkouts_admin(){


        if(empty(number_format($this->cart->total()))){

            $this->session->set_flashdata('cart_empty_error','Cart is empty');

            redirect('admin/pos');
        }
        //echo "sds";

        $total_amount =  $this->input->post("total_amount");
        $cash = $this->input->post("cash");
        $change =  $this->input->post("change");
        $customer_id ="";
        $is_walkin = $this->input->post('is_walkin');


        $customer_type = "";
        if($is_walkin == "walkin"){
            $customer_id =0;
            $customer_type = "Walkin";
            $name = $this->input->post('walk_customer_name');
        }else{
           $customer_id =$this->input->post("customer_id"); 
           $customer_type = "Member";
           $find_customer = $this->customer_management->get_customer_by_customer_id($customer_id);
           foreach($find_customer as $c){
                $name = $c->firstname .' '. $c->middlename .' '. $c->lastname;
                echo "meron";
           }

        }


        $invoice_number ='#'.date("ymdhis") . abs(rand('0','9'));

        $staff_in_charge = $this->session->userdata('complete_name');
        $staff_id = $this->session->userdata('user_id');

        $now = date('Y-m-d H:i:s');
        $date = date('Y-m-d');
        $data_sales = array(
            'invoice_number' => $invoice_number,
            'customer_type' => $customer_type,
            'customer_name' => $name,
            'customer_id' =>  $customer_id,
            'total_amount' => $total_amount,
            'sales_date' =>$now,
            'staff' => $staff_in_charge,
            'staff_user_id' => $staff_id,
            'cash' =>  $cash,
            'change' => $change,
        );


        $this->pos_management->insert_new_pos_record($data_sales);
        $sales_id = $this->db->insert_id();


       

        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
        foreach($get_vat as $g_vat){
            $tax = $g_vat->vat;
        }

        foreach ($this->cart->contents() as $items) {
                    "product_table_id" . $product_id   = $items['id'];
                    "product_id" . $prod_id  = $items['prod_id'];
                    $product_name =  $items['name'];
                    $product_unit =  $items['product_unit'];
                    $product_type = $items['product_type'];
                    $price_per_product =  $items['price'];
                    $sales_quantity = $items['qty'] ;
                    $total_per_product =  $items['subtotal'];
                    $base_price = $items['base_price'];

                    echo $taxation = "taxation is " . $tax;
                    $vat = $items['subtotal'] * $tax;
                    $last_price = $items['subtotal'] + $vat;
                    //insert in tbl_salesdetails
                    $data_sales_detail = array(
                        'sales_id' => $sales_id,
                        'product_id' => $prod_id,
                        'product_type' => $product_type,
                        'product_name' => $product_name .' ('.$product_unit.')',
                        'price_per_product' => $price_per_product,
                        'sales_quantity' => $sales_quantity,
                        'total_per_product' => $total_per_product,
                        'tax' => $tax,
                        'vat' => $vat,
                        'last_price' => $last_price,
                        'sales_date' => $date,
                        'product_table_id' => $product_id,

                     );
                     $this->pos_management->insert_new_sales_detail_record($data_sales_detail);

                    //insert inventory report
                    $action = "Purchased Product";
                    //use session for this... this is temp
                    $user_type="Customer(" . $customer_type. ")";
                    //use session for this... this is temp
                    $data =array(
                        'product_rel_id' => $product_id,
                        'product_id' => $prod_id,
                        'productType' => $product_type,
                        'product_name' =>$product_name,
                        'action' => $action ,
                        'user_name' => $name,
                        'user_type' => $user_type,
                        'inventory_date' =>$now,
                        'quantity' => $sales_quantity,
                    );
                    $this->inventory_management->insert_new_inventory_action($data);
                    $remove_all = array(
                    'rowid' => $items['rowid'], 
                    'qty' => 0, 
                    );
                    
                    //$this->cart->update($remove_all);
                    $this->cart->destroy();
        }

        $_SESSION['sales_id'] = $sales_id;

     // echo json_encode(['code'=>200, 'msg'=>$sales_id]);

        //update stock inventory

        $get_product = $this->pos_management->find_sales_detail_by_sales_id($sales_id);


        foreach($get_product as $gp){
            $product_id = $gp->product_id;
            $quantity = $gp->sales_quantity;

            $get_product_detail = $this->pos_management->get_product_by_product_id($product_id);


            foreach($get_product_detail as $product_detail){
                $stock_quantity = $product_detail->productInStore;

            }


            $update_query = $this->db->query("UPDATE tbl_products SET productInStore = productInStore - $quantity WHERE product_id = '" . $product_id."'");

        }

            //insert log report
            $log_name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $data_log = array(
            "log_user" => $log_name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => "Handle POS",
            "log_date" => $now,
            );


            $this->admin_management->insert_new_log($data_log);
            $this->session->set_flashdata('print_receipt_message','Please print your receipt');

            redirect("Admin/Pos");

    }


    public function checkouts_staff(){


        if(empty(number_format($this->cart->total()))){

            $this->session->set_flashdata('cart_empty_error','Cart is empty');

            redirect('staff/pos');
        }
        //echo "sds";

        $total_amount =  $this->input->post("total_amount");
        $cash = $this->input->post("cash");
        $change =  $this->input->post("change");
        $customer_id ="";
        $is_walkin = $this->input->post('is_walkin');


        $customer_type = "";
        if($is_walkin == "walkin"){
            $customer_id =0;
            $customer_type = "Walkin";
            $name = $this->input->post('walk_customer_name');
        }else{
           $customer_id =$this->input->post("customer_id"); 
           $customer_type = "Member";
           $find_customer = $this->customer_management->get_customer_by_customer_id($customer_id);
           foreach($find_customer as $c){
                $name = $c->firstname .' '. $c->middlename .' '. $c->lastname;
                echo "meron";
           }

        }


        $invoice_number ='#'.date("ymdhis") . abs(rand('0','9'));

        $staff_in_charge = $this->session->userdata('complete_name');
        $staff_id = $this->session->userdata('user_id');

        $now = date('Y-m-d H:i:s');
        $data_sales = array(
            'invoice_number' => $invoice_number,
            'customer_type' => $customer_type,
            'customer_name' => $name,
            'customer_id' =>  $customer_id,
            'total_amount' => $total_amount,
            'sales_date' =>$now,
            'staff' => $staff_in_charge,
            'staff_user_id' => $staff_id,
            'cash' =>  $cash,
            'change' => $change,
        );


        $this->pos_management->insert_new_pos_record($data_sales);
        $sales_id = $this->db->insert_id();


       

        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
        foreach($get_vat as $g_vat){
            $tax = $g_vat->vat;
        }

        foreach ($this->cart->contents() as $items) {
                    "product_table_id" . $product_id   = $items['id'];
                    "product_id" . $prod_id  = $items['prod_id'];
                    $product_name =  $items['name'];
                    $product_unit = $items['product_unit'];
                    $product_type = $items['product_type'];
                    $price_per_product =  $items['price'];
                    $sales_quantity = $items['qty'] ;
                    $total_per_product =  $items['subtotal'];
                    $base_price = $items['base_price'];

                    echo $taxation = "taxation is " . $tax;
                    $vat = $items['subtotal'] * $tax;
                    $last_price = $items['subtotal'] + $vat;
                    //insert in tbl_salesdetails
                    $data_sales_detail = array(
                        'sales_id' => $sales_id,
                        'product_id' => $prod_id,
                        'product_type' => $product_type,
                        'product_name' => $product_name .' ('.$product_unit.')',
                        'price_per_product' => $price_per_product,
                        'sales_quantity' => $sales_quantity,
                        'total_per_product' => $total_per_product,
                        'tax' => $tax,
                        'vat' => $vat,
                        'last_price' => $last_price,

                     );
                     $this->pos_management->insert_new_sales_detail_record($data_sales_detail);

                    //insert inventory report
                    $action = "Purchased Product";
                    //use session for this... this is temp
                    $user_type="Customer(" . $customer_type. ")";
                    //use session for this... this is temp
                    $data =array(
                        'product_rel_id' => $product_id,
                        'product_id' => $prod_id,
                        'productType' => $product_type,
                        'product_name' =>$product_name,
                        'action' => $action ,
                        'user_name' => $name,
                        'user_type' => $user_type,
                        'inventory_date' =>$now,
                        'quantity' => $sales_quantity,
                    );
                    $this->inventory_management->insert_new_inventory_action($data);
                    $remove_all = array(
                    'rowid' => $items['rowid'], 
                    'qty' => 0, 
                    );
                    
                    //$this->cart->update($remove_all);
                    $this->cart->destroy();
        }

        $_SESSION['sales_id'] = $sales_id;

     // echo json_encode(['code'=>200, 'msg'=>$sales_id]);

        //update stock inventory

        $get_product = $this->pos_management->find_sales_detail_by_sales_id($sales_id);


        foreach($get_product as $gp){
            $product_id = $gp->product_id;
            $quantity = $gp->sales_quantity;

            $get_product_detail = $this->pos_management->get_product_by_product_id($product_id);


            foreach($get_product_detail as $product_detail){
                $stock_quantity = $product_detail->productInStore;

            }


            $update_query = $this->db->query("UPDATE tbl_products SET productInStore = productInStore - $quantity WHERE product_id = '" . $product_id."'");

        }

            //insert log report
            $log_name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $data_log = array(
            "log_user" => $log_name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => "Handle POS",
            "log_date" => $now,
            );


            $this->admin_management->insert_new_log($data_log);
            $this->session->set_flashdata('print_receipt_message','Please print your receipt');

            redirect("Staff/Pos");

    }


    /*public function checkouts_staff(){


        if(empty(number_format($this->cart->total()))){

            $this->session->set_flashdata('cart_empty_error','Cart is empty');

            redirect('staff/pos');
        }
        //echo "sds";

        $total_amount =  $this->input->post("total_amount");
        $cash = $this->input->post("cash");
        $change =  $this->input->post("change");
        $customer_id ="";
        $is_walkin = $this->input->post('is_walkin');


        $customer_type = "";
        if($is_walkin == "walkin"){
            $customer_id =0;
            $customer_type = "Walking";
            $name = $this->input->post('walk_customer_name');
        }else{
           $customer_id =$this->input->post("customer_id"); 
           $customer_type = "Member";
           $find_customer = $this->customer_management->get_customer_by_customer_id($customer_id);
           foreach($find_customer as $c){
                $name = $c->firstname .' '. $c->middlename .' '. $c->lastname;
                echo "meron";
           }

        }


        $invoice_number ='#'.date("ymdhis") . abs(rand('0','9'));

        $staff_in_charge = $this->session->userdata('complete_name');
        $staff_id = $this->session->userdata('user_id');

        $now = date('Y-m-d H:i:s');
        $data_sales = array(
            'invoice_number' => $invoice_number,
            'customer_type' => $customer_type,
            'customer_name' => $name,
            'customer_id' =>  $customer_id,
            'total_amount' => $total_amount,
            'sales_date' =>$now,
            'staff' => $staff_in_charge,
            'staff_user_id' => $staff_id,
            'cash' =>  $cash,
            'change' => $change,
        );


        $this->pos_management->insert_new_pos_record($data_sales);
        $sales_id = $this->db->insert_id();


       

        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
        foreach($get_vat as $g_vat){
            $tax = $g_vat->vat;
        }

        foreach ($this->cart->contents() as $items) {
                    "product_table_id" . $product_id   = $items['id'];
                    "product_id" . $prod_id  = $items['prod_id'];
                    $product_name =  $items['name'];
                    $product_type = $items['product_type'];
                    $price_per_product =  $items['price'];
                    $sales_quantity = $items['qty'] ;
                    $total_per_product =  $items['subtotal'];
                    $base_price = $items['base_price'];

                    echo $taxation = "taxation is " . $tax;
                    $vat = $items['subtotal'] * $tax;
                    $last_price = $items['subtotal'] + $vat;
                    //insert in tbl_salesdetails
                    $data_sales_detail = array(
                        'sales_id' => $sales_id,
                        'product_id' => $prod_id,
                        'product_type' => $product_type,
                        'product_name' => $product_name,
                        'price_per_product' => $base_price,
                        'sales_quantity' => $sales_quantity,
                        'total_per_product' => $total_per_product,
                        'tax' => $tax,
                        'vat' => $vat,
                        'last_price' => $last_price,

                     );
                     $this->pos_management->insert_new_sales_detail_record($data_sales_detail);

                    //insert inventory report
                    $action = "Purchased Product";
                    //use session for this... this is temp
                    $user_type="Customer(" . $customer_type. ")";
                    //use session for this... this is temp
                    $data =array(
                        'product_rel_id' => $product_id,
                        'product_id' => $prod_id,
                        'productType' => $product_type,
                        'product_name' =>$product_name,
                        'action' => $action ,
                        'user_name' => $name,
                        'user_type' => $user_type,
                        'inventory_date' =>$now,
                        'quantity' => $sales_quantity,
                    );
                    $this->inventory_management->insert_new_inventory_action($data);
                    $remove_all = array(
                    'rowid' => $items['rowid'], 
                    'qty' => 0, 
                    );
                    
                    //$this->cart->update($remove_all);
                    $this->cart->destroy();
        }

        $_SESSION['sales_id'] = $sales_id;

     // echo json_encode(['code'=>200, 'msg'=>$sales_id]);

        //update stock inventory

        $get_product = $this->pos_management->find_sales_detail_by_sales_id($sales_id);


        foreach($get_product as $gp){
            $product_id = $gp->product_id;
            $quantity = $gp->sales_quantity;

            $get_product_detail = $this->pos_management->get_product_by_product_id($product_id);


            foreach($get_product_detail as $product_detail){
                $stock_quantity = $product_detail->productInStore;

            }


            $update_query = $this->db->query("UPDATE tbl_products SET productInStore = productInStore - $quantity WHERE product_id = '" . $product_id."'");

        }

            //insert log report
            $log_name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $data_log = array(
            "log_user" => $log_name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => "Handle POS",
            "log_date" => $now,
            );


            $this->admin_management->insert_new_log($data_log);
            $this->session->set_flashdata('print_receipt_message','Please print your receipt');

            redirect("staff/pos");

    }*/





    public function print(){
         //echo $_SESSION['sales_id'];

         //unset($_SESSION['sales_id']);


        $settings_id = 1;
        $data['clinic_detail'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
       // $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

        $data['title'] = "Vetopia";
        $sales_id = $this->uri->segment(3);
        $data['id'] = $sales_id;


        //echo $sales_id;


        $data['get_all_data_from_sales'] = $this->pos_management->find_sales_by_sales_id($sales_id);

        //for the products that has been purchased
        $data['get_all_data_from_sales_detail'] =  $this->pos_management->find_sales_detail_by_sales_id($sales_id);

        //tbl_sales

        //sales details

        //ito ang gamit
        $this->load->view('staff/print_slip',$data);
    }
}
