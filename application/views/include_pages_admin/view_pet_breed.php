      <div class="modal fade" id="petbreed">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header ">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Pet Breed</h4>
            </div>
           
          
            <div class="modal-body ">

             <div class="alert alert-success display-success" style="display: none">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p>Pet breed information has been deleted successfully </p>
            </div>

              <table  class="table table-striped table-condensed table-hover list-table" style="margin:0px;" data-height="100">
                              <thead>
                              <tr>
                            
                                <th >Pet Type</th>
                                <th >Pet Breed</th>
                                <th >Pet Description</th>
                                <th >Delete</th>
                              </tr>
                              </thead>

                              <tbody id="detail_breed"> 
                              </tbody>
              </table>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              
            </div>

            </form>

          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>




  <script type="text/javascript">
    $(document).ready(function(){
      $('#detail_breed').load("<?php echo site_url('pet_management/load_breed');?>");



      $(document).on('click','.romove_detail',function(){
        var breed_id=$(this).attr("id"); 
        $.ajax({
            url : "<?php echo site_url('pet_management/delete_breed');?>",
            method : "POST",
            data : {breed_id : breed_id},
            success :function(data){
               
                $(".display-success").css("display","block");
                $('#detail_breed').html(data);
            }
        });
      });



    });
  </script>