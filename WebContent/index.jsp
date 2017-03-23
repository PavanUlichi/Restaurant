<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  <link href="css/mystyle.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap-social.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  
  <title>Ghumaghumalu</title>
</head>
<body>
<div>
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">

      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span> <!-- Used by Screen Readers -->
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html"><img src="img/img/logo.png" height=30 width=41></a>

        <ul class="nav navbar-nav">

          <li class="active"><a href="index.html"><span class="glyphicon glyphicon-home"
            aria-hidden="true"></span> Home</a></li>

            <li><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign">About</span></a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-list-alt">
                  Menu</span> <span class="caret"></span></a>

                  <ul class="dropdown-menu">
                    <li><a href="appetizers.html">Appetizers</a></li>
                    <li><a href="maincourse.html">Main Courses</a></li>
                    <li><a href="desserts.html">Desserts</a></li>
                    <li><a href="drinks.html">Drinks</a></li>

                  </ul>
                </li>

                <li><a href="contactus.html"><i class="fa fa-envelope" aria-hidden="true"></i> Contact</a></li>
              </ul>
              
              
            </div>
			          <ul class="nav navbar-nav navbar-right">
  <li><button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span>Signup</button></li>
    
  <li><button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span>Login</button></li>
  </ul>                     
          
          
          </div>
    
        </nav>
                 
    
     <div class="modal" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Signup by creating an account!</h4>
        </div>
        <div class="modal-body">
        <form class="form-horizontal col-sm-8" action="/RestaurantSamplePhaseOne/SignUp" method="post">
         <div class="form-group"> Username			:	<input type="text" class="form-control" name="username" placeholder="Enter username" required></div>
         <div class="form-group"> Email				:	<input type="email" class="form-control" name="emailid" placeholder="Enter a valid emailId" required></div>
         <div class="form-group"> Password			:	<input type="password" class="form-control" name="password" id="password" placeholder="Choose a password" required></div>
          <div class="form-group">Re-enter Password	:	<input type="password" class="form-control" name="password1" id="confirm_password" placeholder="Re-enter password" required></div>
          <div class="form-group"><button type="submit" class="btn btn-default">Submit</button></div>
          </form>
        
        <div class="modal-footer">
        </div>
        </div>
      </div>
      
    </div>
 
          </div>
          
         

        <header class="jumbotron row-header">

          <div class=container>
            <div class="row row-content">
              <div class="col-xs-12">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                  </ol>

                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img class="img-responsive"
                      src="img/img/hyd_bir.jpg" alt="Dum Biryani">
                      <div class="carousel-caption">
                        <p></p>
                        </div>
                      </div>
                      <div class="item">
                        <img class="img-responsive"
                        src="img/img/and_curry.jpg" alt="Andhra Curry">
                        <div class="carousel-caption">
                          <h2 class="media-heading">
                          </p>
                        </div>
                      </div>
                      <div class="item">
                        <img class="img-responsive"
                        src="img/img/sou_tiff.jpg" alt="Tiffin">
                        <div class="carousel-caption">
                          <p>
                          </p>
                        </div>
                      </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                    <div class="btn-group" id="carouselButtons">
                      <button class="btn btn-danger btn-sm" id="carousel-pause">
                        <span class="fa fa-pause" aria-hidden="true"></span>
                      </button>
                      <button class="btn btn-danger btn-sm" id="carousel-play">
                        <span class="fa fa-play" aria-hidden="true"></span>
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-xs-10 col-sm-7">
                  <h1>Ghumaghumalu</h1>
                  <p style="padding:10px;"></p>
                  <p>Experience South Indian food in a great dining atmosphere. Ghumaghumalu believes in satisfying their customer with a wide variety of South Indian vegetarian and non-vegetarian dishes. The authentic Indian ambiance and soft music sure gives you a great dining experience. </p>
                </div>
                <div class="xs-col-10 col-sm-3">
                  <p style="padding:20px;"></p>
                  <img src="img/img/logo.png" class="img-responsive" style="width:70%;height:40%">
                </div>

                </div>
              </div>
            </header> 

            <div class="container">
              <div class="row row-content">
                <div class="col-xs-12 col-sm-3 push-sm-9">
                  <a href="#">
                    <img style="width:250px; height:250px" class="media-object img-thumbnail"
                    src="img/img/gon_chi.jpg" alt="Gongura Chicken">
                  </a>
                </div>
                <div class="col-xs-12 col-sm-9 pull-sm-3">
                  <div class="media">
                    <div class="media-left media-middle">

                    </div>
                    <div Style="padding-top:75px" class="media-body">
                      <h2 class="media-heading">Gongura Chicken <span class="label label-danger label-xs"> Spicy </span></h2>
                      <p>Gongura Chicken Andhra Style !! This special chicken curry uses the quintessential leafy vegetable from this cuisine, which is none other than gongura, also known as sorrel leaves.</p>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row row-content">
                  <div class="col-xs-12 col-sm-9">
                    <div class="media">
                      <div Style="padding-top:75px" class="media-body">
                        <h2 class="media-heading">Nellore Chepala Pulusu <span class="label label-danger label-xs"> New </span></h2><p> The world famous fish curry recipe, Nellore Chepala Pulusu (Nellore fish curry) has a very special recognition in Andhra cuisine. No other fish curry can beat the taste of this curry ever.
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="col-xs-12 col-sm-3">
                    <a href="#">
                      <img style="width:250px; height:250px" class="media-object img-thumbnail"
                      src="img/img/nlr_chep.jpg" alt="Nellore Chepala Pulusu">
                    </a>
                  </div>
                </div>

                <div class="row row-content">
                  <div class="col-xs-12 col-sm-3">
                    <a href="#">
                      <img style="width:250px; height:250px" class="media-object img-thumbnail"
                      src="img/img/ulava_bir.jpg" alt="Ulava Charu Biryani">
                    </a>
                  </div>

                  <div class="col-xs-12 col-sm-9">
                    <div class="media">
                      <div class="media-left media-middle">
                      </div>
                      <div Style="padding-top:75px" class="media-body">
                        <h2 class="media-heading">Ulavacharu Biryani</h2>
                        <p>This is an excellent version of chicken biryani with the amazing flavor of tangy horse-gram mixture i.e UlavaCharu.The chicken is roasted before making biryani which adds additional flavor to this recipe.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>


                  </div>

                <footer class="row-footer">
                  <div class="container">
                    <div class="row">
                      <div class="col-xs-3 col-xs-offset-3">
                        <h5>Links</h5>
                        <ul class=list-unstyled>
                          <li><a href="index.html#">Home</a></li>
                          <li><a href="aboutus.html#">About</a></li>
                          <li><a href="contactus.html#">Contact</a></li>
                        </ul>
                      </div>

                      <div  class="col-xs-5 col-xs-offset-1">
                        <h5>Our Address</h5>
                        <address>
                          4/9, St Thomas Street,<br>
                          Egattur, Navalur,<br>
                          Chennai, Tamil Nadu 603103<br>
                          <i class="fa fa-phone"></i> : 80 6566 5999<br>
                          <i class="fa fa-envelope"></i> :
                          <a href="mailto:confusion@food.net">confusion@food.net</a>
                        </address>
                      </div>



                      <div class="col-xs-12">
                        <p style="padding:10px;"></p>
                      </div>
                    </div>
                  </div>
                </footer>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
               
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                <script>
                  $(document).ready(function(){
                    var date_input=$('input[name="date"]'); //our date input has the name "date"
                    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                    date_input.datepicker({
                      format: 'mm/dd/yyyy',
                      container: container,
                      todayHighlight: true,
                      autoclose: true,
                    })
                  })

                </script>
                <script>
                var password = document.getElementById("password")
                , confirm_password = document.getElementById("confirm_password");

              function validatePassword(){
                if(password.value != confirm_password.value) {
                  confirm_password.setCustomValidity("Passwords Don't Match");
                } else {
                  confirm_password.setCustomValidity('');
                }
              }

              password.onchange = validatePassword;
              confirm_password.onkeyup = validatePassword;
                </script>
                <script type="text/javascript">
                'use strict';

                angular.module('myApp').directive('equals', function() {
                  return {
                    restrict: 'A', // only activate on element attribute
                    require: '?ngModel', // get a hold of NgModelController
                    link: function(scope, elem, attrs, ngModel) {
                      if(!ngModel) return; // do nothing if no ng-model

                      // watch own value and re-validate on change
                      scope.$watch(attrs.ngModel, function() {
                        validate();
                      });

                      // observe the other value and re-validate on change
                      attrs.$observe('equals', function (val) {
                        validate();
                      });

                      var validate = function() {
                        // values
                        var val1 = ngModel.$viewValue;
                        var val2 = attrs.equals;

                        // set validity
                        ngModel.$setValidity('equals', ! val1 || ! val2 || val1 === val2);
                      };
                    }
                  }
                });

                </script>
                <script>
                  $(document).ready(function(){
                    $('[data-toggle="tooltip"]').tooltip();
                  });
                </script>
                <script>
                  $(document).ready(function(){
                    $("#mycarousel").carousel( { interval: 2000 } );
                    $("#carousel-pause").click(function(){
                      $("#mycarousel").carousel('pause');
                    });
                    $("#carousel-play").click(function(){
                      $("#mycarousel").carousel('cycle');
                    });
                  });
                </script>
                </div>
              </body></html>
