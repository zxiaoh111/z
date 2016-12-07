<?php
 error_reporting(0);
 include("conn.php");
 session_start();
   if(empty($_SESSION['uname'])){

         echo "<script>alert('请登录后查看!');location.href='login.php'</script>";
   }


?>

<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Gallery</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
     <link rel="stylesheet" href="css/touchTouch.css">
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
     <script src="js/touchTouch.jquery.js"></script>
     <script>
       $(document).ready(function(){
        $('.gallery a.gal').touchTouch();
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
      <h2>Gallery</h2>
    </div>
    <div class="clear"></div>
    <div class="gallery">

    <?php
          $aa=$_SESSION['uname'];
          $sql1="select * from ty_member where uname='$aa'";
          $query1=mysql_query($sql1);
          $rs1=mysql_fetch_array($query1);
          $gj=$rs1['ugjc'];
          $sql="select * from ty_wz where wz_gjc like '%$gj%'";
         //echo $sql;die;
          $query=mysql_query($sql);
          while($rs=mysql_fetch_array($query)){
    ?>
        <div class="grid_4">
           <a href="upload/<?php echo $rs['wz_photo']?>" class="gal">
             <img src="upload/<?php echo $rs['wz_photo']?>" alt="">
           </a>
           <a href="detail.php?wz_id=<?php echo $rs['wz_id']?>"><?php echo $rs['wz_title']?></a>
        </div>
      
      <?php }?>
    </div>
  </div>
</div>
<!--==============================footer=================================-->
<?php
   include("footer.php");
?>
</body>
</html>



