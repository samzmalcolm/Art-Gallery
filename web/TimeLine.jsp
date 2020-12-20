<%-- 
    Document   : index
    Created on : Dec 31, 2019, 1:54:38 PM
    Author     : usama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" type="image/png" href="logo.jpg" sizes="32x32">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Art house</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


  <style>
    
      .login-trigger {
  font-weight: bold;
  color: #fff;
  background: linear-gradient(to bottom right, #B05574, #F87E7B);
  padding: 15px 30px;
  border-radius: 30px;
  position: relative; 
  top: 50%;
}

/*Modal*/
h4 {
  font-weight: bold;
  color: #fff;
}
.close {
  color: white;
  transform: scale(1.2)
}
.modal-content {
  font-weight: bold;
  background: black;
  margin-top: 50%;
}
.form-control {
  margin: 1em 0;
}
.form-control:hover, .form-control:focus {
  box-shadow: none;  
  border-color: #fff;
}

img {
  border-radius: 50%;
}
.username, .password {
  border: none;
  border-radius: 0;
  box-shadow: none;
  border-bottom: 2px solid #eee;
  padding-left: 0;
  font-weight: normal;
  background: transparent;  
}
.form-control::-webkit-input-placeholder {
  color: #eee;  
}
.form-control:focus::-webkit-input-placeholder {
  font-weight: bold;
  color: #fff;
}
.login {
  padding: 6px 20px;
  border-radius: 20px;
  background: none;
  border: 2px solid #FAB87F;
  color: #FAB87F;
  font-weight: bold;
  transition: all .5s;
  margin-top: 1em;
  
}
.login:hover {
  background: #FAB87F;
  color: #fff;
}
  </style>




</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class=" nav navbar-nav ">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.jsp" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
      
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">About</a>
      </li>
      
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Admins</a>
      </li>
     
    </ul>
      <ul class="navbar-nav ml-auto">
           <span class="glyphicon glyphicon-log-out"></span>
      <li><a href="./logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      
    </ul>
    
     

   

   

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link">
      <img src="logo.jpg" alt="Art House" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Art House</span>
    </a>

   

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
		  
		 
          <li class="nav-item">
            <a href="./Add_Work_Order" class="nav-link">
              <p class="text">Add Work Order</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="./WorkInfoCache" class="nav-link">
              <p>Change Status</p>
            </a>
          </li>
         
         
		  
		 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
           
		
		
          </div><!-- /.col -->
         
		 
		 
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    
  
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
<!--        <div class="row">
            
            
              <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-dark">
              <div class="inner">
                <h3>${total}</h3>

                <h5>Total Work Orders </h5>
                <div class="totalbar">    
       
  </div>  
              </div>
              <div class="icon">
                <i class="ion ion-clipboard"></i>
              </div>
              <a href="#info" class="small-box-footer" id="totalinfo">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
            
            
            
            
            
            
            
            
            
            
            
            
          <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-warning">
              <div class="inner">
                <h3 class="pendingh3">${pending}</h3>

                <h5>Pending</h5>
                 <div class="pendingbar">    
       
  </div>
              </div>
              <div class="icon">
                <i class="ion ion-clock"></i>
              </div>
                <a  href="#info" class="small-box-footer" id="pendinginfo">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           ./col 
          <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-info">
              <div class="inner">
				<h3 class="startedh3">${started}</h3>
				
                <h5>Started</h5>
                           <div class="startedbar">    
       
  </div>
              </div>
              <div class="icon">
                <i class="ion ion-ionic"></i>
              </div>
              <a href="#info" class="small-box-footer" id="startinfo" >More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           ./col 
          <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-danger">
              <div class="inner">
                <h3 class="startedh3">${cancelled}</h3>

                <h5>Cancelled</h5>
                 <div class="cancelledbar">    
       
  </div> 
     
              </div>
              <div class="icon">
                <i class="ion ion-close"></i>
              </div>
              <a href="#info" class="small-box-footer" id="cancelledinfo">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           ./col 
          <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-success">
              <div class="inner">
                <h3>${closed}</h3>

                <h5>Closed</h5>
                <div class="closedbar">    
       
  </div>  
              </div>
              <div class="icon">
                <i class="ion ion-checkmark"></i>
              </div>
              <a href="#info" class="small-box-footer" id="closedinfo">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           ./col 
          
          
          
          
          
          
           <div class="col-lg-4 col-6">
             small box 
            <div class="small-box bg-secondary">
              <div class="inner">
                <h3 class="pendingh3">${sent}</h3>

                <h5>Sent For Cancellation</h5>
                 <div class="sentbar">    
       
  </div>
              </div>
              <div class="icon">
                <i class="ion ion-alert"></i>
              </div>
                <a  href="#info" class="small-box-footer" id="sentinfo">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          
          
          -->
          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="logo.jpg" alt="Avatar" style="width:250px;height: 250px" >
          <img src="logo.jpg" alt="Avatar" style="width:250px;height: 250px">
          <img src="logo.jpg" alt="Avatar" style="width:250px;height: 250px">
          <img src="logo.jpg" alt="Avatar" style="width:250px; height: 250px" data-target="#login" data-toggle="modal">
         
          
          
          <br>
          <br>
          <br>
          
          
          
         

<div id="login" class="modal fade" role="dialog">
  <div class="modal-dialog">
    
    <div class="modal-content">
      <div class="modal-body">
        <button data-dismiss="modal" class="close">&times;</button>
        <h4>Login</h4>
        <form>
          <input type="text" name="username" class="username form-control" placeholder="Username"/>
          <input type="password" name="password" class="password form-control" placeholder="password"/>
          <input class="btn login" type="submit" value="Login" />
        </form>
      </div>
    </div>
  </div>  
</div>
          
          
          
          
          <br>
          <br>
          <br>
          <br>
          
        </div>
        <!-- /.row -->
        <!-- Main row -->
		
		
		
		
		
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-12 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Information 
                </h3>
               
              </div><!-- /.card-header -->
              <div class="card-body">
                  <div class="container">   
                      <div class="info" id="info">
             
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
			 
		</div>	 
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->

           
		   
		   
		   
		   
		   
          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-4 connectedSortable">

           <!-- Custom tabs (Charts with tabs)-->
           


           
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; <a href="#">ACT TECHNOLOGIES</a>.</strong>
    All rights reserved.
    
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>



 <script type="text/javascript">   

var total=${total};

 
  $(document).ready(function(){    
   
   var progressBarVal= 100;   
   var html="<div class='progress-bar bg-success active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".totalbar").append(html);    
  });    
  
 
 
  $(document).ready(function(){    
   var mul=${pending}*100;
   var div=mul/total; 
   var progressBarVal= div.toFixed(1);    
   var html="<div class='progress-bar bg-success active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".pendingbar").append(html);    
  });    
  
  $(document).ready(function(){    
   var mul=${started}*100;
   var div=mul/total; 
   var progressBarVal= div.toFixed(1); 
   var html="<div class='progress-bar bg-success active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".startedbar").append(html);    
  });    
  
  $(document).ready(function(){    
   var mul=${cancelled}*100;
   var div=mul/total; 
   var progressBarVal= div.toFixed(1);  
   var html="<div class='progress-bar  bg-success active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".cancelledbar").append(html);    
  });    
  
   $(document).ready(function(){    
   var mul=${closed}*100;
   var div=mul/total; 
   var progressBarVal= div.toFixed(1); 
   var html="<div class='progress-bar bg-warning active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".closedbar").append(html);    
  });    
  
  
   $(document).ready(function(){    
   var mul=${sent}*100;
   var div=mul/total; 
   var progressBarVal= div.toFixed(1);    
   var html="<div class='progress-bar bg-success active' role='progressbar' aria-valuenow="+progressBarVal+" aria-valuemin='0' aria-valuemax='100' style='width:"+progressBarVal+"%'>"+progressBarVal+"%</div>";    
   $(".sentbar").append(html);    
  });    
  
  
  
 
  
  
  
  
  </script>
  
 
  
  
  
  
  
  
  
  
  
  
  <script>
  var two=${two};
var tissue=${tissue};
var ttarget=${ttarget};
var tsite=${tsite};
var tjob=${tjob};
var tstatus=${tstatus};
var tregion=${tregion};
var tcity=${tcity};

   
   $(document).ready(function(){    
   
var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${total};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+two[i]+'</b></td>'+
            '<td>'+tissue[i]+'</td>'+
            '<td>'+ttarget[i]+'</td>'+
            '<td>'+tsite[i]+'</td>'+
            '<td>'+tjob[i]+'</td>'+
            '<td>'+tstatus[i]+'</td>'+
            '<td>'+tregion[i]+'</td>'+
            '<td>'+tcity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").append(html);    
  });  
  
  
  
  
  </script>
  
   <script>
  var clwo=${clwo};
var clissue=${clissue};
var cltarget=${cltarget};
var clsite=${clsite};
var cljob=${cljob};
var clstatus=${clstatus};
var clregion=${clregion};
var clcity=${clcity};
var clwcf=${clwcf};
var cldate=${cldate};
   
  
$(document).ready(function(){
  $("#closedinfo").click(function(){
      
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+
'      <th scope="col">WCF #</th>'+
'      <th scope="col">Date</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${closed};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+clwo[i]+'</b></td>'+
            '<td>'+clissue[i]+'</td>'+
            '<td>'+cltarget[i]+'</td>'+
            '<td>'+cljob[i]+'</td>'+
            '<td>'+clsite[i]+'</td>'+
            '<td>'+clstatus[i]+'</td>'+
            '<td>'+clregion[i]+'</td>'+
            '<td>'+clcity[i]+'</td>'+
            '<td>'+clwcf[i]+'</td>'+
            '<td>'+cldate[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>


  
  
  
  
   <script>
  var swo=${swo};
var sissue=${sissue};
var starget=${starget};
var ssite=${ssite};
var sjob=${sjob};
var sstatus=${sstatus};
var sregion=${sregion};
var scity=${scity};
   
  
$(document).ready(function(){
  $("#startinfo").click(function(){
      
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${started};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+swo[i]+'</b></td>'+
            '<td>'+sissue[i]+'</td>'+
            '<td>'+starget[i]+'</td>'+
            '<td>'+ssite[i]+'</td>'+
            '<td>'+sjob[i]+'</td>'+
            '<td>'+sstatus[i]+'</td>'+
            '<td>'+sregion[i]+'</td>'+
            '<td>'+scity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>

  
  
  
  
  
  
   <script>
  var pwo=${pwo};
var pissue=${pissue};
var ptarget=${ptarget};
var psite=${psite};
var pjob=${pjob};
var pstatus=${pstatus};
var pregion=${pregion};
var pcity=${pcity};
   
  
$(document).ready(function(){
  $("#pendinginfo").click(function(){
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var x=0;
for ( i=0; i< ${pending};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+pwo[i]+'</b></td>'+
            '<td>'+pissue[i]+'</td>'+
            '<td>'+ptarget[i]+'</td>'+
            '<td>'+psite[i]+'</td>'+
            '<td>'+pjob[i]+'</td>'+
            '<td>'+pstatus[i]+'</td>'+
            '<td>'+pregion[i]+'</td>'+
            '<td>'+pcity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>

  
  
   <script>
  var cwo=${cwo};
var cissue=${cissue};
var ctarget=${ctarget};
var csite=${csite};
var cjob=${cjob};
var cstatus=${cstatus};
var cregion=${cregion};
var ccity=${ccity};
   
  
$(document).ready(function(){
  $("#cancelledinfo").click(function(){
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${cancelled};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+cwo[i]+'</b></td>'+
            '<td>'+cissue[i]+'</td>'+
            '<td>'+ctarget[i]+'</td>'+
            '<td>'+csite[i]+'</td>'+
            '<td>'+cjob[i]+'</td>'+
            '<td>'+cstatus[i]+'</td>'+
            '<td>'+cregion[i]+'</td>'+
            '<td>'+ccity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>




     <script>
  var two=${two};
var tissue=${tissue};
var ttarget=${ttarget};
var tsite=${tsite};
var tjob=${tjob};
var tstatus=${tstatus};
var tregion=${tregion};
var tcity=${tcity};
   
  
$(document).ready(function(){
  $("#totalinfo").click(function(){
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${total};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+two[i]+'</b></td>'+
            '<td>'+tissue[i]+'</td>'+
            '<td>'+ttarget[i]+'</td>'+
            '<td>'+tsite[i]+'</td>'+
            '<td>'+tjob[i]+'</td>'+
            '<td>'+tstatus[i]+'</td>'+
            '<td>'+tregion[i]+'</td>'+
            '<td>'+tcity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>
  
  
  
  
     <script>
  var sewo=${sewo};
var seissue=${seissue};
var setarget=${setarget};
var sesite=${sesite};
var sejob=${sejob};
var sestatus=${sestatus};
var seregion=${seregion};
var secity=${secity};
   
  
$(document).ready(function(){
  $("#sentinfo").click(function(){
    var html = '<table class="table">'+
'  <thead class="thead-dark">'+
'    <tr>'+
'      <th scope="col">#</th>'+
'      <th scope="col">WO#</th>'+
'      <th scope="col">Issue Date</th>'+
'      <th scope="col">Target Date</th>'+
'      <th scope="col">Job</th>'+
'      <th scope="col">Site ID</th>'+
'      <th scope="col">Status</th>'+
'      <th scope="col">Region</th>'+
'      <th scope="col">City</th>'+

'    </tr>'+
'  </thead>'+
'  <tbody>';
var i;
var x=0;
for ( i=0; i< ${sent};i++)
{     x=i+1;
    html=html+'<tr>'+'<th scope="row">'+x+'</th>'+
            '<td><b>'+sewo[i]+'</b></td>'+
            '<td>'+seissue[i]+'</td>'+
            '<td>'+setarget[i]+'</td>'+
            '<td>'+sesite[i]+'</td>'+
            '<td>'+sejob[i]+'</td>'+
            '<td>'+sestatus[i]+'</td>'+
            '<td>'+seregion[i]+'</td>'+
            '<td>'+secity[i]+'</td>'+
            '</tr>';
}
html=html+'</tbody>'+'</table>';
   $(".info").empty();
   $(".info").append(html);
  });
});
  
  
  
  </script>
  
  


</body>
</html>
