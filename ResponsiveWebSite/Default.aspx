<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ResponsiveWebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Gereltuya | ASP.NET Experiment website</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Css.css" rel="stylesheet"/>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class ="navbar navbar-default navbar-fixed-top" role="navigation">

        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"> Toggle Navigation </span>
                              <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
            
                </button>

   <a class="navbar-brand" href="Default.aspx"><span> Gereltuya <img alt="Logo" src="img/ulzii.png" style="height: 35px;" /></span></a> </div>
            <div class="navbar-collapse collapse"
>
                <ul class="nav navbar-nav navbar-right">

                    <li class="active"><a href="Default.aspx">Home</a></li>
                    <li class=""><a href="#">About</a></li>
                  <li class=""><a href="#">Contact</a></li>
                    <li class="dropdown">
                    
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio<b class="caret"></b></a>
                      <ul class="dropdown-menu">

                          <li class="dropdown-header">Web Products</li>
                          <li role="separator" class="divider"></li>
                          <li><a href="#">Kyoto</a></li>
                           <li><a href="#">Gereltuya</a></li>
                           <li><a href="#">BCS</a></li>
                            <li role="separator" class="divider"></li>
                          <li class="dropdown-header">Mobile Products</li>
                          <li role="separator" class="divider"></li>
                          <li> <a href="#">TeamCare</a></li>
                      </ul>



                    </li>
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                    <li><a href="SignIn.aspx">Sign In</a></li>

                    

                </ul>
            </div>        

        </div>

    </div>

        <!--- Carousel ***-->

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/bcs.jpg" alt="bcs" style="height:auto"/>
      <div class="carousel-caption">
       <h3> Project BCS WordPress</h3> 
          <p><a class="btn btn-lg btn-primary" href="http://bcs.gigiration.com" role="button">Visit the site</a></p>
      </div>
    </div>
    <div class="item">
      <img src="img/csf.jpg"  alt="Central States Fund"/>
      <div class="carousel-caption">
        <h3> Project TeamCare Mobile Application</h3>
          <p><a class="btn btn-lg btn-primary" href="http://hellogb.azurewebsites.net" role="button">Visit the site</a></p>
      </div>
        </div>
    ...<div class="item">
      <img src="img/KyotoTitle02.jpg"  alt="Kyoto" style="height:auto"/>
      <div class="carousel-caption">
        <h3>Project Kyoto Sushi Restaurant Bootstrap</h3>
          <p><a class="btn btn-lg btn-primary" href="http://www.kyotosushirestaurant.com" role="button">Visit the site</a></p>
      </div>
        </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        <!-- Carousel-->



    </div>
        <br />
        <br />


        <!--Middle Contents-->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="img/asp.png" alt="thumb01" width="140" height="140"/>
                <h2>ASP.NET</h2>
                <p>I am studying how to developer beautiful web products using ASP.NET combined with Bootstrap</p>
                <p> <a class=" btn btn-default" href="#" role="button"> View &raquo;</a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="img/csharp.png" alt="thumb02" width="140" height="140"/>
                <h2>C#</h2>
                <p>I am studying how to developer beautiful web products using ASP.NET combined with Bootstrap</p>
                <p> <a class=" btn btn-default" href="#" role="button"> View &raquo;</a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="img/js.png" alt="thumb03" width="140" height="140"/>
                <h2>JavaScript</h2>
                <p>I am studying how to developer beautiful web products using ASP.NET combined with Bootstrap</p>
                <p> <a class=" btn btn-default" href="#" role="button"> View &raquo;</a> </p>
            </div>
            </div>

        </div>



        <!--Footer-->

        <hr /> 
        <footer>
            <div class="container">
                <p class="pull-right"> <a href="#">Back to Top</a></p>
                <p> &copy; 2015 Gereltuya.com &middot; <a href="Default.aspx">Home </a> &middot; <a href="#">About</a>&middot; <a href="#"> Contact </a> &middot;</p>
            </div>

        </footer>


    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
