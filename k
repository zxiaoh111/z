<?php
 error_reporting(0);
 session_start();

?>
<header>  
  <div class="container_12">
    <div class="grid_12">
        <h1>
        <span>
        <?php
              if(!empty($_SESSION['uname'])){

        ?>
             <a href=""><?php echo $_SESSION['uname']?></a>
             <a href="logout.php">退出</a> 

         <?php
          }else{
         ?>     

          <a href="login.php">登录</a>
             <a href="register.php">注册</a> 
         <?php }?>
        </span>
      </h1>
        <div class="menu_block ">
          <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                 <li class="current"><a href="index.php">首页</a></li>
<!--                 <li><a href="xg.php">与我相关</a></li>-->
                 <li><a href="myss.php">我的说说</a></li>
                <li><a href="myzl.php">我的资料</a></li>
<!--                 <li><a href="send.php">发说说</a></li>-->
                
               </ul>
            </nav>
           <div class="clear"></div>
        </div>
      </div>      
   </div>
</header>

