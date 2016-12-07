<?php
error_reporting(0);
 include("conn.php");
 session_start();

   $un=$_SESSION['uname'];
   $sqlv="select * from ty_member where uname='$un'";
   $queryv=mysql_query($sqlv);
   $rsv=mysql_fetch_array($queryv);


 if($_SERVER['REQUEST_METHOD'] == 'POST'){
    
      $uname=$_POST['uname'];
      $utel=$_POST['utel'];
      $ugjc=$_POST['ugjc'];
      $uage=$_POST['uage'];

      $sql="update ty_member set uname='$uname',utel='$utel',ugjc='$ugjc',uage='$uage' where uname='$un'";
      $query=mysql_query($sql);
      echo "<script>alert('success!sign up');location.href='login.php';</script>";

 }
?>

<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Contacts</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/form.css">
  <link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
     <link rel="stylesheet" href="css/style.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.2.1.js"></script>
     <script src="js/script.js"></script> 
     <script src="js/superfish.js"></script>
     <script src="js/TMForm.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
      <script src="js/jquery.tooltipster.js"></script>
     <script>
       $(document).ready(function(){
        $().UItoTop({ easingType: 'easeOutQuart' });
        $('.tooltip').tooltipster();
        });
     </script>

    <!--[if lt IE 9]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">


    <![endif]-->
     </head>
     
     <body class="" id="top">
     
<!--==============================header=================================--> 
<?php
include("header.php");
?>
<!--==============================Content=================================-->
<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - March 10, 2014!</div>
  <div class="container_12">
    <div class="grid_12">
      <h2></h2>
            <div class="map">
           
              
          </div>
    </div>  
    <div class="clear"></div>
    <div class="grid_3">
      <h3 class="head1"></h3>
    </div>
    <div class="grid_9">
      <h3 class="head1">sign up</h3>
            <form action="myzl.php" method="post">
                            
                      <div class="success_wrapper">
                      <div class="success-message">change material</div>
                      </div>

                      <label class="name">
                         name  <input type="text" readonly="readonly"  name="uname" value="<?php echo $rsv['uname']?>"/>
                      </label>
                       <br/>
                      <label class="email">
                        phone<input type="text" value="<?php echo $rsv['utel']?>" name="utel"/>
                      </label>
                      <br/>
                       <label class="phone">
                         your dream place<input type="text" value=" Walt Disney World" name="ugjc"/>
                       </label>
                      <br/>
                        <label class="phone">
                           age                          <input type="text" value="<?php echo $rsv['uage']?>" name="uage"/>
                        </label>

                      <div>
                      <div class="clear"></div>
                      <div class="btns">
                      <button type="submit" class="btn">ok</button>
                      </div>
                      </div>
                      </form>   
    </div>
  </div>
</div>
<!--==============================footer=================================-->
<?php
include("footer.php");
?>
</body>
</html>



