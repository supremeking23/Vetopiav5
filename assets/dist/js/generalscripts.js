  $(function () {


    //for navigation admin
    $("#dashboard a:contains('Dashboard')").parent().addClass('active');

    //appointment
    $("#appointment a:contains('Appointment')").parent().addClass('active');


    $("#todays_appointment a:contains('Appointments')").parent().addClass('active');
    $("#old_appointment a:contains('Appointments')").parent().addClass('active');
    $("#todays_appointment a:contains('Todays appointment')").parent().addClass('active');
    $("#old_appointment ul li a:contains('Old appointment')").parent().addClass('active');

    
    //user_management
    $("#admin a:contains('User Management')").parent().addClass('active');
    $("#veterinarians a:contains('User Management')").parent().addClass('active');
    $("#staff a:contains('User Management')").parent().addClass('active');
    $("#customer a:contains('User Management')").parent().addClass('active');

    $("#admin a:contains('Admin')").parent().addClass('active');
    $("#customer a:contains('Customer')").parent().addClass('active');
    $("#veterinarians a:contains('Veterinarian')").parent().addClass('active');
    $("#staff a:contains('Staff')").parent().addClass('active');

    $("#pets a:contains('Pets')").parent().addClass('active');



    //inventory
    $("#item a:contains('Product')").parent().addClass('active');
    $("#food a:contains('Product')").parent().addClass('active');
    $("#medicine a:contains('Product')").parent().addClass('active');


     $("#item a:contains('Items')").parent().addClass('active');
     $("#food a:contains('Foods')").parent().addClass('active');
     $("#medicine a:contains('Medicines')").parent().addClass('active');


     //reports
    $("#sales a:contains('Report')").parent().addClass('active');
    $("#inventory a:contains('Report')").parent().addClass('active');

     $("#sales a:contains('Sales')").parent().addClass('active');
    $("#inventory a:contains('Inventory')").parent().addClass('active');

    $("#settings a:contains('Settings')").parent().addClass('active');
    $("#services a:contains('Services')").parent().addClass('active');

    $("#logs a:contains('Logs')").parent().addClass('active');






    ///customer side
    $("#mypet a:contains('My Pets')").parent().addClass('active');
    $("#requestappointment a:contains('Request Appointment')").parent().addClass('active');
    $("#purchasehistory a:contains('Purchase History')").parent().addClass('active');
    $("#pethealthlibrary a:contains('Pet Health Library')").parent().addClass('active');
    


    //staff side
    $("#pos a:contains('POS')").parent().addClass('active');
    $("#appointment a:contains('Appointment')").parent().addClass('active');
    $("#customer a:contains('Customer')").parent().addClass('active');
    $("#pets a:contains('Pet')").parent().addClass('active');

    //appointment



    //vets
    $("#appointment a:contains('Appointment)").parent().addClass('active');
    $("#pets a:contains('Pet')").parent().addClass('active');
    $("#medicine a:contains('For Medication')").parent().addClass('active');


    $("#library a:contains('Health Care Library')").parent().addClass('active');
     

      //pasword    
      var mask = true;

      $('#showPass').click(function(){
      if(mask === true){
          mask = false;
          $('#password').attr("type", "text");
          
          //$('#username').attr("type", "password");
          $('#maskMark').html("<b>hide</b>");
        } else {
          mask = true;
          $('#password').attr("type", "password");
          //$('#username').attr("type", "text");
          $('#maskMark').html("<b>show</b>");
        } 
    }); 

    //for tables regular datatable
    $('.datatables').DataTable({

      "lengthMenu": [[ 20,30,50, 70, -1], [ 20,30,50,70, "All"]],
      'paging'      : true,
      //'lengthChange': false,
      //'searching'   : false,
      'ordering'    : false,
      'info'        : true,
      //'autoWidth'   : false,      
    });

    $('.datatablesservices').DataTable({

      "lengthMenu": [[ 10,50, 70, -1], [ 10,50,70, "All"]],
      'paging'      : true,
      //'lengthChange': false,
      //'searching'   : false,
      'ordering'    : false,
      'info'        : true,
      //'autoWidth'   : false,      
    });



    //for tables
    $('.datatablesvets').DataTable({

      "lengthMenu": [[25, 50, -1], [ 25, 50, "All"]],
      'paging'      : true,
      //'lengthChange': false,
      //'searching'   : false,
      'ordering'    : false,
      'info'        : true,
      //'autoWidth'   : false,      
    });


    //datatables for appointment
    $('.datatablesappointment').DataTable({

      "lengthMenu": [[30, 45, 50, -1], [30, 45, 50, "All"]],
      'paging'      : true,
      //'lengthChange': false,
      //'searching'   : false,
      'ordering'    : false,
      'info'        : true,
      //'autoWidth'   : false,      
    });

    $('.datatableexta').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Inventory Report',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Inventory Report',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Inventory Report',
               
            },

                ]
    } );



    




    






    //for tooltip
    $('[data-tooltip="tooltip"]').tooltip();
    $('[data-popover="popover"]').popover();

    //date picker jquery-ui
    //$('#birthDate').datepicker();
    //$('#scheduleDate').datepicker();


    //Initialize Select2 Elements
    $('.select2').select2();
    

    $('.textareas').wysihtml5();
   
  })