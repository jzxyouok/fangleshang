<?php 
  if(file_exists("install_lock.txt")){
       $mess = urlencode("已安装，如需重新安装，请删除install_lock.txt");
       echo "<script>window.location.href='error.php?mess='".$mess."'</script>";
       exit;
  }
?>

<!DOCTYPE html5>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安装向导-乐尚商城</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="all">
       <!-- 头部 -->
        <div class="header">
               <div class="logo"></div>
               <div class="title">安装向导<br />www.leesuntech.com</div>
        </div>
        <div class="error-middle" >
                <div class="title">安装失败</div>
                 <div class="success">
                您的程序由于<?php echo $_GET['mess'] ?><br />未安装成功，请点击返回重新操作！</a>
                </div>
        </div>
        <!-- 尾部 -->
       <div class="footer">
            <input type="button" value="返回" class="agree" onclick="window.location.href='next.php'"/> 
      </div>
    </div>
</body>
</html>