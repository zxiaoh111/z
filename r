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
      <h3 class="head1">发说说</h3>
            <form action="send.php" method="post" enctype="multipart/form-data">
                            
                      <div class="success_wrapper">
                      <div class="success-message">Contact form submitted</div>
                      </div>
                      <label class="name">
                      <input type="text" placeholder="标题" name="wz_title" />
                      </label>
                    
                      <label class="email">
                      <input type="file" name="file"/>
                      
                      </label>
                       <label class="phone">
                          ><textarea name="content" id="editor" style="height:500px;" ></textarea>
                          </label>
                     
                     <label class="phone">
                          <input type="text" placeholder="关键词:" name="wz_gjc"/>
                          </label>
                      <div>
                      <div class="clear"></div>
                      <div class="btns">
                   
                      <button type="submit" class="btn">发布</button>
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
<script type="text/javascript">
    var editor=UE.getEditor('editor',{
        initialFrameWidth : 590,
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
