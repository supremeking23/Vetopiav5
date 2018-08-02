<table width="100%" class="table table-striped table-bordered table-hover">
                                                      <thead>
                                                        <tr>
                                                          <th>Product Name</th>
                                                          <th>Product Type</th>
                                                          <th>Product Price</th>
                                                          <th>Purchase Qty</th>
                                                          <th>SubTotal</th>
                                                        </tr>
                                                      </thead>
                                                      <tbody>
                                                        
                                                        <?php $get_all_sales_details = $this->pos_management->find_sales_detail_by_sales_id(30);
                                                        ?>


                                                        <?php foreach($get_all_sales_details as $sales_detail):?>
                                                        <tr>
                                                            <td><?php echo $sales_detail->product_name;?></td>
                                                            <td><?php echo $sales_detail->product_type;?></td>
                                                            <td>₱<?php echo $sales_detail->price_per_product;?></td>
                                                            <td align="right"><?php echo $sales_detail->sales_quantity;?></td>
                                                           
                                                            <td align="right">
                                                              ₱<?php echo $sales_detail->total_per_product;?>
                                                            </td>
                                                        </tr>

                                                        <?php endforeach;?>


                                                          <tr>
                                                            <td align="right" colspan="4"><strong>Total Amount</strong></td>
                                                            <td align="right"><strong>₱<?php echo 333;?></strong></td>
                                                          </tr>

                                                          
                                                          </tr>
                                                         
                                                         
                                                      </tbody>
 </table>