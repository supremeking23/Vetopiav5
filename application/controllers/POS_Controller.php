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
                'price' => $this->input->post('product_price'), 
                'qty' => $this->input->post('quantity'), 
            );
            $this->cart->insert($data);
            echo $this->show_cart(); 


   	}

    //.' <input type="hidden" value="'.$items['id'].'">'.

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
                            <td>'.$items['name'] .'</td>
                            <td>'.$items['product_type'].'</td>
                            <td>₱'.number_format($items['price']).'</td>
                            <td>'.$items['qty'].'</td>
                            <td>₱'.number_format($items['subtotal']).'</td>
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
                    <td width="25%">Total Items</td>
                        <td class="text-right" style="padding-right:10px;"><span id="count">'.
                            count($this->cart->contents())
                        .'
                            ('.array_sum(array_column($this->cart->contents(),'qty')).')
                          </span></td>
                    <th colspan="3">Total Amount</th>
                    <th colspan="2">'.' ₱'.number_format($this->cart->total()).'</th>
                </tr>
            ';
            return $output;
    }


    function load_cart(){ 
        echo $this->show_cart();
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





    public function checkout(){

        if(empty(number_format($this->cart->total()))){

            $this->session->set_flashdata('cart_empty_error','Cart is empty');

            redirect('staff/pos');
        }

        echo $sales_total = $this->cart->total();
        echo "<br />";
        echo $customer_id = $this->input->post('customer_id');

        $name = "";
        $customer_type ="";
        if(empty($customer_id)){
            $customer_id ="0";
            $customer_type = "Walkin";
            echo "walkin";
            $name = $this->input->post('walk_customer_name');
        }else{
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
            'total_amount' => $sales_total,
            'sales_date' =>$now,
            'staff' => $staff_in_charge,
            'staff_user_id' => $staff_id,
        );


        $this->pos_management->insert_new_pos_record($data_sales);
        $sales_id = $this->db->insert_id();





        $_SESSION['sales_id'] = $sales_id;


        /*bawas*/
       /* $update1 = "SELECT * FROM tbl_salesdetails WHERE sales_id = '$sales_id'";
        $run_update1 = mysqli_query($connection,$update1);

            while($row1 = mysqli_fetch_assoc($run_update1)){

                    $product_id = $row1['product_id'];
                    $quantity = $row1['sales_quantity'];



                    $update2 = "SELECT * FROM tbl_products WHERE product_id = '$product_id'";
                    $run_update2 = mysqli_query($connection,$update2);
                    $row2 = mysqli_fetch_assoc($run_update2);

                    $stock_quantity = $row2['product_quantity'];

                    $update3 = "UPDATE tbl_products SET product_quantity = product_quantity- $quantity WHERE product_id = '$product_id' AND product_quantity = $stock_quantity";


                    $run_update3 = mysqli_query($connection,$update3);


            }*/

        /**/

        foreach ($this->cart->contents() as $items) {
                    "product_table_id" . $product_id       = $items['id'];
                    "product_id" . $prod_id       = $items['prod_id'];
                    $product_name =  $items['name'];
                    $product_type = $items['product_type'];
                    $price_per_product =  number_format($items['price']);
                    $sales_quantity = $items['qty'] ;
                    $total_per_product =  $items['subtotal'];
                    //insert in tbl_salesdetails
                    $data_sales_detail = array(
                        'sales_id' => $sales_id,
                        'product_id' => $prod_id,
                        'product_type' => $product_type,
                        'product_name' => $product_name,
                        'price_per_product' => $price_per_product,
                        'sales_quantity' => $sales_quantity,
                        'total_per_product' => $total_per_product,
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
           /* $log_name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $data_log = array(
            "log_user" => $log_name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => "Handle POS",
            "log_date" => $now,
            );


            $this->admin_management->insert_new_log($data_log);*/
            $this->session->set_flashdata('print_receipt_message','Please print your receipt');

            redirect("staff/pos");

            //unset($this->cart->contents());

        //var_dump($data);

       

    }



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


        $this->load->view('staff/print_slip',$data);
    }
}