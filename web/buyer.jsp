<%-- 
    Document   : buyer
    Created on : Jan 15, 2020, 2:53:15 AM
    Author     : usama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- ========== Meta Tags ========== -->
    <meta charset="UTF-8">
    <meta name="description" content="Cocoon -Portfolio">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Cocoon , Portfolio">
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Pharaohlab">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- ========== Title ========== -->
   <link rel="icon" type="image/png" href="logo.jpg" sizes="32x32">
 
    <title> Art House </title>
    <!-- ========== Favicon Ico ========== -->
    <!--<link rel="icon" href="fav.ico">-->
    <!-- ========== STYLESHEETS ========== -->
    <!-- Bootstrap CSS -->
   
	
	<!-- Bootstrap CDN down below --> 
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fonts Icon CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/et-line.css" rel="stylesheet">
    <link href="assets/css/ionicons.min.css" rel="stylesheet">
    <!-- Carousel CSS -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <!-- Magnific-popup -->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">
    
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    
    <style>
        body{
            
          background-image: url(35.jpg); background-repeat: no-repeat;background-attachment: fixed;
          
        }
        .circularimage{
            border-radius: 50%;
        }
       
        .ch-grid {

	    margin: 20px 0 0 0;

	    padding: 0;

	    list-style: none;

	    display: block;

	    text-align: center;

	    width: 100%;

	}
	 

	.ch-grid:after,

.ch-item:before {

	    content: '';

	    display: table;

	}

	 

	.ch-grid:after {

	    clear: both;

	}

	 

	.ch-grid li {

	    width: 220px;

	    height: 220px;

	    display: inline-block;

	    margin: 20px;
	}
        
        
 

	.ch-item {

	    width: 100%;

	    height: 100%;

	    border-radius: 50%;

	    position: relative;

	    cursor: default;

	    box-shadow: 

	        inset 0 0 0 0 rgba(200,95,66, 0.4),
	        inset 0 0 0 0px rgba(255,255,255,0.6),

	        0 1px 2px rgba(0,0,0,0.1);

	         

	    -webkit-transition: all 0.4s ease-in-out;

	    -moz-transition: all 0.4s ease-in-out;

	    -o-transition: all 0.4s ease-in-out;

    -ms-transition: all 0.4s ease-in-out;

	    transition: all 0.4s ease-in-out;

	}

	 

	
  

/*Modal*/

.close {
  color: white;
  transform: scale(1.2)
}
.modal-content {
   width: 150%;
  font-weight: bold;
  background: black;
  margin-top: 0%;
  text-align: center;
 
  
  
}


	 

	.ch-info {

	    position: absolute;

	    width: 100%;

	    height: 100%;

	    border-radius: 50%;

	    opacity: 0;

	     

	    -webkit-transition: all 0.4s ease-in-out;

	    -moz-transition: all 0.4s ease-in-out;

	    -o-transition: all 0.4s ease-in-out;

	    -ms-transition: all 0.4s ease-in-out;

	    transition: all 0.4s ease-in-out;

	     

	    -webkit-transform: scale(0);

	    -moz-transform: scale(0);

	    -o-transform: scale(0);

	    -ms-transform: scale(0);

	    transform: scale(0);

	     

	    -webkit-backface-visibility: hidden; /*for a smooth font */

	 

	}

	 

	.ch-info h3 {

	    color: #fff;

	    text-transform: uppercase;

	    position: relative;

	    letter-spacing: 2px;

	    font-size: 22px;

    margin: 0 30px;

    padding: 65px 0 0 0;

	    height: 110px;

	    font-family: 'Open Sans', Arial, sans-serif;

	    text-shadow: 

	        0 0 1px #fff, 

	        0 1px 2px rgba(0,0,0,0.3);

	}

	 

	.ch-info p {

	    color: #fff;

   padding: 10px 5px;

	    font-style: italic;

	    margin: 0 30px;

	    font-size: 12px;

	    border-top: 1px solid rgba(255,255,255,0.5);

}

.avatar {
  vertical-align: middle;
  text-align: center;
  align-content: center;
  width: 200px;
  height: 200px;
  border-radius: 50%;
}

 

	.ch-info p a {

	    display: block;

	    color: #fff;

    color: rgba(255,255,255,0.7);

	    font-style: normal;
	    font-weight: 700;

	    text-transform: uppercase;

	    font-size: 9px;

	    letter-spacing: 1px;

	    padding-top: 4px;

	    font-family: 'Open Sans', Arial, sans-serif;

	}

	 

	.ch-info p a:hover {

	    color: #fff222;

	    color: rgba(255,242,34, 0.8);

	}

	 

	.ch-item:hover {

	    box-shadow: 

	        inset 0 0 0 110px black,
	        inset 0 0 0 0px rgba(255,255,255,0.8),

	        0 1px 2px rgba(0,0,0,0.1);

	}

	 

	.ch-item:hover .ch-info {

	    opacity: 1;

	     

	    -webkit-transform: scale(1);

	    -moz-transform: scale(1);

	    -o-transform: scale(1);

	    -ms-transform: scale(1);

	    transform: scale(1);    

	}
        
    .container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 200px;
  height: 200px;
  border-radius:50%;
}

.overlay {
border-radius:50%;
 
  top: 0;
  bottom: 0;
  left: 0;
  right: 5%;
  height: 200px;
  width: 200px;
  opacity: 0;
  transition: .2s ease;
  background-color: transparent;
}

.container:hover .overlay {
  opacity: 10;
}

.text {
  color: white;
  font-size: 20px;
  font-style: oblique;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
h1 , h5{
    
    color: #b2b2b2;
}

*, *:before, *:after{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing:border-box;
  box-sizing: border-box;
}



.main-title{
  color: #2d2d2d;
  text-align: center;
  text-transform: capitalize;
  padding: 0.7em 0;
}

.container{
  padding: 1em 0;
  float: left;
  width: 50%;
}
@media screen and (max-width: 640px){
  .container{
    display: block;
    width: 100%;
  }
}

@media screen and (min-width: 900px){
  .container{
    width: 33.33333%;
  }
}

.container .title{
  color: #1a1a1a;
  text-align: center;
  margin-bottom: 10px;
}

.content {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
}

.content .content-overlay {
  background: rgba(0,0,0,0.7);
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

div.gallery {
  border: 0px solid #ccc;
}

div.gallery:hover {
  border: 0px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}


.content:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  padding-left: 1em;
  padding-right: 1em;
  width: 100%;
  top: 50%;
  left: 50%;
  opacity: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transition: all 0.3s ease-in-out 0s;
  -moz-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.content:hover .content-details{
  top: 50%;
  left: 50%;
  opacity: 1;
}


.row {
  display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
  flex: 33.33%;
  padding: 5px;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}

.content-details p{
  color: #fff;
  font-size: 0.8em;
}

.fadeIn-bottom{
  top: 80%;
}

.fadeIn-top{
  top: 20%;
}

.fadeIn-left{
  left: 20%;
}

.fadeIn-right{
  left: 80%;
}


.file {
  visibility: hidden;
  position: absolute;
}
        
    </style>
</head>
<body>
<div class="loader">
    <div class="loader-outter"></div>
    <div class="loader-inner"></div>
</div>

<div class="body-container container-fluid">
    <a class="menu-btn" href="javascript:void(0)">
        <i class="ion ion-grid"></i>
    </a>
    <div class="row justify-content-center">
        <!--=================== side menu ====================-->
        <div class="col-lg-2 col-md-3 col-12 menu_block"   style="background-image: url(6.jpg);">

            <!--logo -->
            <div>
                <br>
                <a href="#">
                    <b><p style=" font-size: 20px;color: white; font-style: Brush Script MT, Brush Script Std, cursive; "> &nbsp;&nbsp;&nbsp;<img src="inst1.png" alt="Art House" height="50px" width="50px" style="border-radius: 50%;"> &nbsp;&nbsp;Art House</p></b>
                </a>
            </div>
            <!--logo end-->

            <!--main menu -->
            <div class="side_menu_section">
                <ul class="menu_nav">
                     <li>
                         <h5 style="color: white;font-size: 12px;" > 
                           &nbsp;&nbsp;&nbsp;&nbsp; Welcome, ${uname}
                       </h5>
                    </li> 
                    
                    <li>
                        <a data-toggle="modal" data-target="#profile" style="color: white;">
                            Your Profile
                        </a>
                    </li>
                    <br>
                    <br>
                    <br>
                    <br>
                    <li>
                        <a href="#">
                            Home
                        </a>
                    </li>
                    <li>
                        <a href="about.html">
                            About Us
                        </a>
                    </li>
                   
                    <li>
                        <a href="contact.html">
                            Contact
                        </a>
                    </li>
                    <br>
                    <br>
                    
                    
                </ul>
            </div>
            <!--main menu end -->
<br>
<br>
            <!--filter menu -->
          
            <!--filter menu end -->

            <!--social and copyright -->
            <div class="side_menu_bottom">
                <div class="side_menu_bottom_inner">
                    <ul class="social_menu">
                        <li>
                            <a href="#"> <i class="ion ion-social-pinterest"  style="color: white;"></i> </a>
                        </li>
                        <li>
                            <a href="#"> <i class="ion ion-social-facebook"  style="color: white;"></i> </a>
                        </li>
                        <li>
                            <a href="#"> <i class="ion ion-social-twitter"  style="color: white;"></i> </a>
                        </li>
                     
                    </ul>
                    <div class="copy_right">
                        <p class="copyright"  style="color: white;">Copyright &copy;All rights reserved | <a href="buyer.jsp">Art House</a> </p>
                    </div>
                </div>
            </div>
            <!--social and copyright end -->

        </div>
        <!--=================== side menu end====================-->

        
        
        
        <!--=================== content body ====================-->
        <div class="col-lg-10 col-md-9 col-12 body_block  align-content-center" style="background-color: transparent;">
             <form action="./logout" method="post"> 
            
                <button type="submit" class="btn btn-dark btn-sm" style="  margin-left: 92%; background-image: url(6.jpg); margin-top:0%; ">logout</button>
            </form>
            <div>
                <h1 style="color: white; font-style: Brush Script MT, Brush Script Std, cursive; ">Top Artists</h1>
            </div>       
	    <ul class="ch-grid">

	         <li>

	            <div class="ch-item" style="background-image: url(images/${ap1});  background-repeat: no-repeat;background-size: 250px; ">

	            <div class="ch-info">

	            <h3>${a1}</h3>

	         

	            </div>

	            </div>

	        </li>

	        <li>

	            <div class="ch-item" style="background-image:  url(images/${ap2});  background-repeat: no-repeat;background-size: 250px; ">

	            <div class="ch-info">

	            <h3>${a2}</h3>

	         

	            </div>

	            </div>


	        </li>

	       <li>

	             <div class="ch-item" style="background-image: url(images/${ap3});  background-repeat: no-repeat;background-size: 250px; ">

	            <div class="ch-info">

	            <h3>${a3}</h3>

	         

	            </div>

	            </div>

	        </li>

	        <li>

	            <div class="ch-item" style="background-image: url(images/${ap4});  background-repeat: no-repeat;background-size: 250px; ">

	            <div class="ch-info">

	            <h3>${a4}</h3>

	         

	            </div>

	            </div>

	        </li>

	       

	    </ul>
            
            
            
     

            <br>
        <div>
            <h1 style="color: white; font-style: Brush Script MT, Brush Script Std, cursive;  " id="toparts">Top Arts</h1>
            </div> 
        
            
            
            
            
                <!--=================== image classs ====================-->
            
          <div id="galleryimages" class="galleryimages">
                    
                </div>
          
            <!--=================== modle====================-->
             

<div id="login23" class="modal fade" role="dialog">
  <div class="modal-dialog">
    
    <div class="modal-content">
      <div class="modal-body">
        <button data-dismiss="modal" class="close">&times;</button>
        <div>
            <br>
            
            <img src="inst3.png" alt="Cinque Terre" width="600" height="400" style="border-radius: 0%"><br><br>
            <h1>Image Name</h1>
            <h5>Description fdghjkdfghuj drftggyhujkl rdtfygujhjkl dtfygujhkj dtfyg </h5><br>
                        <h1>$ 500</h1>

            <button type="button" class="btn btn-primary">Buy</button>
</div>
        <img>
      </div>
    </div>
  </div>  
</div>
            <!--=================== image and model ends ====================-->     
            
            <div id="profile" class="modal fade" role="dialog">
  <div class="modal-dialog">
    
    <div class="modal-content">
      <div class="modal-body">
        <button data-dismiss="modal" class="close">&times;</button>
        <div>
            <br>
            
            <img src="images/${pic}" alt="" width="300" height="300" style="border-radius: 50%">
            <br><br>
             <button type="button" class="btn btn-primary  btn-rounded mb-2" data-dismiss="modal" data-toggle="modal" data-target="#pichange">Change Profile Picture</button>
            <br><br>
            <h1>${name}</h1>
            <h5>${des}</h5><br>
                        <h1> </h1>

           
</div>
        <img>
      </div>
    </div>
  </div>  
</div>
            
            
 <!--=================== upload image starts  ====================-->     
            
            <div id="pichange" class="modal fade" role="dialog">
  <div class="modal-dialog">
    
      <div class="modal-content">
      <div class="modal-body">
        <button data-dismiss="modal" class="close">&times;</button>
        <div>
            <br>
            
          
  
   
            <form action="./changeProfileImage" method="POST" id="image-form" enctype="multipart/form-data">
    
      <input type="file" id="pichanged" name="profilePic" class="browse btn btn-primary" onchange="loadFile(event)">
    
 <br>
<br>
<br>

<img src="avatar.png"  width="300" height="300" id="preview" class="img-thumbnail">
<br>
<br>

   <button type="submit" class="btn btn-primary  btn-rounded mb-2" >Upload</button>

      </form>      
</div>
        <img>
      </div>
    </div>
  </div>  
</div>
            <!--=================== upload image ends ====================-->     
            
            
            
            
            
            
            
            
            
            
            
            
                    
            </div>      
                    
            
        
                    
                
                    
                </div>
            </div>
        </div>
        <!--=================== content body end ====================-->
    </div>
</div>


<!-- jquery -->
<script>

   var loadFile = function(event) {
    var output = document.getElementById('preview');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
    
</script>
<script>
    var artname=${artname};
    var artdes=${artdes};
 var artprice=${artprice};
    var artpic=${artpic};
   var artartist=${artartist};
   var total=${totalarts};
  

   
   $(document).ready(function(){    
   
var html; 
        var i;
        for(i=0;i<total;i++){        
                
              html= html+ '<div class="responsive">'+
  '<div class="gallery">'+
    
      '<img src="images/'+artpic[i] +'" width="500px" height="500px" data-target="#'+i+'" data-toggle="modal">'+
   
      '<div class="desc" style="color: black;">'+artname[i]+'</div>'+
  '</div>'+
'</div>'+

          
'<div id="'+i+'" class="modal fade" role="dialog">'+
  '<div class="modal-dialog">'+
    
   ' <div class="modal-content">'+
      '<div class="modal-body">'+
       ' <button data-dismiss="modal" class="close">&times;</button>'+
        '<div>'+
         '   <br>'+
            
          '  <img src="images/'+artpic[i]+'" style="border-radius: 0%"><br><br>'+
           ' <h1>'+artname[i]+'</h1>'+
            '<h5>by</h5><br>'+
            '<h3 style="color:white;">'+artartist[i]+' </h3><br>'+
            '<h5>'+artdes[i]+' </h5><br>'+
                 '       <h1>$ '+artprice[i]+'</h1>'+

            '<button type="button" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#">Buy</button>'+
'</div>'+
 '       <img>'+
  '    </div>'+
   ' </div>'+
  '</div>  '+
'</div>';
        }

   $(".galleryimages").append(html);    
  });  
  
  
  
  
  </script>
  
  


<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<!-- bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<!--slick carousel -->
<script src="assets/js/slick.min.js"></script>
<!--Portfolio Filter-->
<script src="assets/js/imgloaded.js"></script>
<script src="assets/js/isotope.js"></script>
<!-- Magnific-popup -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!--Counter-->
<script src="assets/js/jquery.counterup.min.js"></script>
<!-- WOW JS -->
<script src="assets/js/wow.min.js"></script>
<!-- Custom js -->
<script src="assets/js/main.js"></script>
</body>
</html>