<?php
  error_reporting(0);
  include("conn.php");
  session_start();
  if(empty($_SESSION['uname'])){
      echo "<script>alert('you haven't sign in!');location.href='login.php'</script>";
  }
  $sql="select * from ty_wz";
  $query=mysql_query($sql);

?>
<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Home</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet"  href="css/component.css" />
  <link rel="stylesheet" type="text/css" href="css/tooltipster.css" />
     <link rel="stylesheet" href="css/style.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.2.1.js"></script>
     <script src="js/script.js"></script> 
     <script src="js/superfish.js"></script>
     <script src="js/jquery.ui.totop.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
      <script src="js/jquery.tooltipster.js"></script>
     <script src="js/camera.js"></script>
     <!--[if (gt IE 9)|!(IE)]><!-->
     <script src="js/jquery.mobile.customized.min.js"></script>
     <!--<![endif]-->
    <script src="js/modernizr.custom.js"></script>
     <script>
       $(document).ready(function(){
        jQuery('#camera_wrap').camera({
            loader: 'pie',
            pagination: true ,
            minHeight: '200',
            thumbnails: true,
            height: '40.85106382978723%',
            caption: true,
            navigation: true,
            fx: 'mosaic'
          });
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
<body class="page1" id="top">

<!--==============================header=================================--> 
<?php
include("header.php");
?>

<div class="container_12">
  <div class="grid_12">
    <div class="slider_wrapper ">
       <div class="camera_wrap" id="camera_wrap">
            <div data-thumb="images/thumb.png" data-src="images/slide.jpg">
                <div class="caption fadeFromBottom">
                    recommendation first
                </div>
            </div>
            <div data-thumb="images/thumb1.jpg" data-src="images/slide1.jpg">
                <div class="caption fadeFromBottom">
                    recommendation second
                </div>
            </div>
            <div data-thumb="images/thumb2.png" data-src="images/slide2.jpg">
                <div class="caption fadeFromBottom">
                    recommendation third
                </div>
            </div>              
        </div>
    </div>
  </div>
</div>

<!--==============================Content=================================-->
<div class="content"><div class="ic">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
  <div class="container_12">
    <div class="grid_12 center">
      <h3>describe of recommendation place</h3>
      <section class="tt-grid-wrapper">
        <ul class="tt-grid tt-effect-stackback tt-effect-delay">
        <?php

               while($rs=mysql_fetch_array($query)){
        ?>
          
          <li><a href="detail.php?wz_id=<?php echo $rs['wz_id']?>"><img src="upload/<?php echo $rs['wz_photo']?>"rank"></a></li>
          <?php }?>
        </ul>
       
      </section>
      <div class="clear"></div>
    
    </div>
  </div>
  <div class="hor"></div>
  
</div>
<!--==============================footer=================================-->
<?php
include("footer.php");
?>

    <script src="js/classie.js"></script>
    <script src="js/thumbnailGridEffects.js"></script>
</body>
</html>


