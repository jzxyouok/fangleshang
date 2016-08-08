
<!DOCTYPE html5>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安装向导-乐尚商城</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<?php
	$home="http://".$_SERVER['SERVER_NAME']."/".dirname(dirname($_SERVER["SCRIPT_NAME"]));
	$admin=$home."/admin.php";
?>
</head>

<body>
    <div class="all">
       <!-- 头部 -->
        <div class="header">
               <div class="logo"></div>
               <div class="title">安装向导<br />www.leesuntech.com</div>
        </div>
        <div class="middle" >
                <div class="title">安装成功</div>
                 <div class="success">
                您的程序已经安装成功！<br /><a href="<?php echo $home ?>">进入首页</a>|<a href="<?php echo $admin ?>">进入后台</a>
                </div>
        </div>
    </div>
</body>
</html>