  <!--modal for settings -->


  <div class="modal fade" id="settings">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Settings</h4>
          </div>
          <div class="modal-body">
            <p>One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
  </div>


  <div class="modal fade" id="editProductDetai">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Edit Product Detail</h4>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>


     <div class="modal fade" id="addSupply">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Supply</h4>
            </div>
            <div class="modal-body">
                
              <table  class="datatables table table-bordered table-striped">
                      <thead>
                      <tr>
                        <th>Date Added</th>
                        <th>Quantity</th>
                       
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>November 23 2017</td>
                        <td>
                         29<span id="dom"></span>
                        </td>
                        
                        
                      </tr>
                      


                      </tbody>
               
              </table>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>


      <div class="modal fade" id="addCustomer">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Customer</h4>
            </div>

            <form action="" method="post">
                <div class="modal-body">
                  <p>One fine body&hellip;</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save</button>
                </div>
            </form>  
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>




      <div class="modal fade" id="addPet">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Pet</h4>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>




    <!-- add appointment -->
    <div class="modal fade" id="addAppointment">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Schedule an Appointment</h4>
          </div>

          <form>
              <div class="modal-body">
                
               <div class="form-group">
                  <label for="customerType">Customer Type</label>
                  <select name="customerType" id="customerType" class="form-control">
                   
                    <option value="walkin">Walk in</option>
                    <option value="member">Member</option>
                  </select>
               </div>

               <div id="walkinForm">
                  <div  class="form-group">
                  <label  for="customerName">Customer Name</label>
                  <input  type="text" class="form-control" id="customerName" name="customerName" placeholder="Customer Name">
                </div>
               </div>


               <div id="memberForm">

                 <div class="form-group">
                  <label for="customerName">Customer Name</label>
                  <select name="customerName" id="customerName" class="form-control select2" style="width: 100%;">
                   
                    <option value="1">Ivan Christian Jay Funcion</option>
                    <option value="3">Steph Curry</option>
                    <option value="4">Lebron James</option>
                  </select>
               </div>

                  <div class="form-group">
                    <label for="scheduleDate">Date</label>
                    <input type="text" class="form-control" id="scheduleDate" name="scheduleDate">
                  </div>

                  <div class="form-group">
                    <label for="scheduleTime">Time</label>
                    <select name="scheduleTime" id="scheduleTime" class="form-control">
                     
                     
                  </select>
                  </div>
               </div>



              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>

           </form>   
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>






<div class="modal fade" id="changeProfile">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Change Profile Picture</h4>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
</div>


<script type="text/javascript">
  
  $("#dom").text(document.URL);
</script>