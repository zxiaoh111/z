<?php
   error_reporting(0);
   include("conn.php");
   session_start();
   if(empty($_SESSION['uname'])){

         echo "<script>alert('请登录后查看!');location.href='login.php'</script>";
   }

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        if ((($_FILES["file"]["type"] == "image/gif")
                || ($_FILES["file"]["type"] == "image/jpeg")
                || ($_FILES["file"]["type"] == "image/pjpeg"))
            || ($_FILES["file"]["size"] < 2000000))
        {
            if ($_FILES["file"]["error"] > 0)
            {

            }
            else
            {


                if (file_exists("upload/" . $_FILES["file"]["name"]))
                {

                }
                else
                {
                    move_uploaded_file($_FILES["file"]["tmp_name"],
                        "upload/" . $_FILES["file"]["name"]);

                }
            }
        }
        else
        {
            //echo "Invalid file";
        }

        $wz_title=$_POST['wz_title'];
        $wz_content=$_POST['content'];
        $wz_userid=$_SESSION['uname'];
        $wz_photo=$_FILES["file"]["name"];
        $wz_gjc=$_POST['wz_gjc'];
        $wz_time=time();
        $sql="insert into ty_wz(wz_title,wz_content,wz_userid,wz_photo,wz_gjc,wz_time) values('$wz_title','$wz_content','$wz_userid','$wz_photo','$wz_gjc','$wz_time')";
        $query=mysql_query($sql);
        echo "<script>alert('发布成功!');location.href='index.php';</script>";

    }}

?>

<!DOCTYPE html>
<html lang="en">
     <head>
     <title>Blog</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="icon" href="images/favicon.ico">
     <link rel="shortcut icon" href="images/favicon.ico" />
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
      <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
      <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
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
    <div class="grid_9">
      <h2>Blog</h2>

      <?php

         $sessionname=$_SESSION['uname'];
         $sql="select * from ty_wz where wz_userid='$sessionname'";
         
         $query=mysql_query($sql);
         while($rs=mysql_fetch_array($query)){
      ?>
      <div class="blog">
        <img src="upload/<?php echo $rs['wz_photo']?>" alt="" class="img_inner fleft">
        <div class="extra_wrapper">
          <div class="text1"><a href="#">headline:<?php echo $rs['wz_title']?></a></div>content:<?php echo mb_substr($rs['wz_content'],0,200,'utf-8');?>
          <div class="alright"><a href="#" class="btn">More</a></div>
        </div>
        <div class="clear"></div>
        <table>
          <tbody>
            <tr>
              <td><time datetime="2014-01-01">
                <span class="fa fa-calendar"></span>
                <?php echo date('Y-m-d H:i:s',$rs['wz_time']); ?> 
              </time> </td>
              <td><a href="#"><div class="fa fa-user"></div> <?php echo $rs['wz_userid']?></a></td>
              
            </tr>
            <tr>
              <td><div class="fa fa-bookmark"></div> <?php echo $rs['wz_gjc']?>words</td>
              <td><div class="fa fa-tag"><a href="detail.php?wz_id=<?php echo $rs['wz_id']?>">detail</a></div> </td>
              <td></td>
            </tr>
           
          </tbody>
        </table>
        
      </div>
     <?php }?>
      
      <div class="clear"></div>
    </div>
      <div class="grid_3">
          <h4 class="head1">travel group</h4>
          
          <h4>your dream place</h4>
          <ul class="list">
              <?php
              $aaa=$_SESSION['uname'];
              $sql3="select * from ty_member where uname='$aaa'";
              $query3=mysql_query($sql3);
              $rs3=mysql_fetch_array($query3);
              ?>
              <li><a href="#"><?php echo $rs3['ugjc']?></a></li>

          </ul>

          <h4 class="head1">put words in</h4>
          <form action="send.php" method="post" enctype="multipart/form-data">
          <ul class="list mb0">
              <li><a href="#">headline </a></li>
              <li><a href="#"><input type="text" placeholder="headline" name="wz_title" /></a></li>
              <li><a href="#">picture </a></li>
              <li> <input type="file" name="file"/></li>
              <li><a href="#">content</a></li>
              <li><a href="#"><textarea name="content" id="editor" style="height:500px;" ></textarea></li>
              <li>keyword</li>
              <li><input type="text" placeholder="keywords" name="wz_gjc" /></li>
              <li><input type="submit"/></li>
          </ul>
         </form>


      </div>
  </div>
</div>
<!--==============================footer=================================-->
<?php
     
    include("footer.php");
?>
<script type="text/javascript">
    var editor=UE.getEditor('editor',{
        initialFrameWidth : 290,
        initialFrameHeight: 100,
        zIndex:1,

        toolbars: [
            ['fullscreen', 'source', 'undo', 'redo','simpleupload'],
            ['bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc']
        ]
    });

</script>
</body>
</html>



