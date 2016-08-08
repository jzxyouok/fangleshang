<?php 
  if(file_exists("install_lock.txt")){
       $mess = urlencode("已安装，如需重新安装，请删除install_lock.txt");
       echo "<script>window.location.href='error.php?mess='".$mess."'</script>";
       exit;
  }
?>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
 	<title>安装向导-乐尚商城</title>
   <link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="../public/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
      $("#not_default").click(function(){
         if($(this).attr("checked")){
            $("#db_list").show(100);
         } else {
            $("#db_list").hide(100);
         }
      });
      $(".disagree").click(function(){
          $("#form").submit();
          $("#config").hide();
          $("#ing").show();
          
      });
})
</script>  

<?php 
   ini_set("max_execution_time", 2400);
   require_once("../classes/Simfile.class.php");
   $sqlfilelist=Simfile::getSubFile("./backup/");
   $sqlfilelist=str_replace("/", "\\", $sqlfilelist);
    
   
   if(isset($_POST['submit'])){
       $host=trim($_POST['host']);
       $dbUsername=trim($_POST['dbUsername']);
       $dbPass=trim($_POST['dbPass']);
       $dbName=trim($_POST['dbName']);
       $dbPrev =trim($_POST['dbPrev']);
       $adminName=trim($_POST['adminName']);
       $adminPass=trim($_POST['adminPass']);
       $repPass=trim($_POST['repPass']);
       $_POST['db_list']=(!isset($_POST['not_default'])?"default.sql":$_POST['db_list']);


       if(!$host||!$dbUsername||!$dbPass||!$dbName||!$adminName||!$adminPass||!$repPass){
          echo "<script>alert('信息不完整，请先填写完整');</script>";
       }elseif($repPass!=$adminPass){
          echo "<script>alert('俩次密码不相同');</script>";
       }elseif(!$db = @mysql_connect($host,$dbUsername,$dbPass)){
           echo "<script>alert('数据库连接错误，请核实信息');</script>";
       }else{
           if(change_db_config()){
               $res=build_database($_POST);
               if($res['status']){
                  file_put_contents('./install_lock.txt', "install finished!");
                  echo "<script>window.location.href='success.php'</script>";
               }else{
                  $mess=urlencode("写入配置文件错误");
                  echo "<script>window.location.href='error.php?mess=".$res['mess']."'</script>";
               }
           }
       }     
   }
   
   // 创建修改数据库信息配置文件
   function change_db_config(){
         $data="<?php
         \$db=array('HOST'=>{$_POST['host']},
                        'USERNAME'=>{$_POST['dbUsername']},
                        'PASSWORD'=>{$_POST['dbPass']},
                        'DBNAME'=>{$_POST['dbName']},
                        'TABPREFIX'=>{$_POST['dbPrev']}
                        );
         return \$db;
         ?>";
         $filename="../configs/db.inc.php";
         file_put_contents($filename, $data);
         if(file_exists($filename)){
            return true;
         }else{
            return false;
         }
   }
   // 执行sql文件创建数据库表
   function build_database(){
      // 数据库连接创建并读取sql文件
      if(!$db=@mysql_connect($_POST['host'],$_POST['dbUsername'],$_POST['dbPass'])){
           $res['status']=false;
           $ress['mess']=urlencode("数据库连接错误，请核实信息");
           return $res;
      }
      mysql_query("create database if not exists ".$_POST['dbName']." DEFAULT CHARACTER SET UTF8",$db);
      if(!mysql_select_db($_POST['dbName'])){
          $res['status']=false;
          $res['mess']=urlencode("选择数据库失败");
          return $res;
      }
      if(!$sql_file=file_get_contents($_POST['db_list'])){
          $res['status']=false;
          $res['mess']=urlencode("打开sql文件".$_POST['db_list']."失败");
          return $res;
      }
      // 执行sql文件创建各表
      $sql_file=str_replace("\r", "\n", str_replace('ls_', trim($_POST['dbPrev']), $sql_file));  //替换表前缀
      $sql_file=preg_replace('/^\s*(?:--|#).*/m','', $sql_file); //？:关闭圆括号的捕捉能力，.*贪婪模式，去掉--或者#开头的注释
      $sql_file=preg_replace('/^\s*\/\*.*?\*\//ms', '', $sql_file);//.*?懒惰模式，去掉/* */包含的的注释
      $sql_arr=explode(";\n",trim($sql_file));  //字符串整合成数组
      foreach ($sql_arr as $query) {  //遍历执行sql文件创建数据表
        if($query!=''){
          $result=mysql_query($query);
        }
        if(!$result){
          $res['status']=false;
          $res['mess']=urlencode("执行数据结构{$query}语句失败<br>，错误代码为：".mysql_errno()."<br>错误信息：".mysql_error());
          return $res;
        }
      }
      if($_POST['db_list']=="default.sql"){  //在管理员表里插入管理员账户信息
          $admin_sql="INSERT INTO ".trim($_POST['dbPrev'])."admin VALUES ('1','admin','".md5($_POST['adminPass'])."','".time()."','::1','1','2')";
          if(mysql_query($admin_sql)){
            $res['status']=true;
            return $res;
          }else{
            $res['status']=false;
            $res['mess']=urlencode("插入管理员帐户失败");
            return $res;
          }
      }
   }

?>
</head>
<body>
	<div class="all">
   <!-- 头部 -->
    <div class="header">
           <div class="logo"></div>
           <div class="title">安装向导<br />www.leesuntech.com</div>
    </div>
    <form id="form" enctype="multipart/form-data" action="<?php $PHP_SELF ?>" method="post">
       <!-- 主体数据配置 -->
	    <div class="middle" id="config">
            <div class="title">参数设置</div>
            <table class="database" border="0">
                  <tbody>
                        <tr>
                        	<td class="td-1">数据库主机：</td>
                        	<td class="td-2" width="60%"><input type="text" name="host" id="host" value="localhost"/></td>
                        	<td class="td-3"></td>
                        </tr>
                        <tr>
                        	<td class="td-1">数据库用户名：</td>
                        	<td class="td-2"><input type="text" name="dbUsername" id="dbUsername"/></td>
                        	<td class="td-3"></td>
                        </tr>
                        <tr>
                        	<td class="td-1">数据库密码：</td>
                        	<td class="td-2"><input type="text" name="dbPass" id="dbPass"/></td>
                        	<td class="td-3"></td>
                        </tr>
                        <tr>
                        	<td class="td-1">数据库名称：</td>
                        	<td class="td-2" ><input type="text" name="dbName" id="dbName"/></td>
                        	<td class="td-3">
                              <?php if($sqlfilelist){ ?>
                                 <input type="checkbox" name="not_default" id="not_default" >  用已备份数据</td>
                              <?php } ?>
                        </tr>
                        <tr>
                        	<td class="td-1">数据库前缀：</td>
                        	<td class="td-2"><input type="text" name="dbPrev" id="dbPrev" value="ls_"/></td>
                        	<td class="td-3">
                              <?php if($sqlfilelist){ ?>
                           		<select name="db_list" id="db_list" style="display:none">
                                    <?php foreach ($sqlfilelist as $key => $val) { ?>
                                        <option value="<?php echo $val ?>"><?php echo basename($val) ?></option>
                                    <?php } ?>
                           			
                           		</select>
                              <?php } ?>
                        	</td>
                        </tr>
                  </tbody>
            </table>
            <table class="admin" border="0">
                  <tbody>
                        <tr>
                        	<td class="td-1">管理员账号：</td>
                        	<td class="td-2"><input type="text" name="adminName" id="adminName" value="admin"/></td>
                        	<td class="td-3"></td>
                        </tr>
                        <tr>
                        	<td class="td-1">登录密码：</td>
                        	<td class="td-2"><input type="text" name="adminPass" id="adminPass"/></td>
                        	<td class="td-3"></td>
                        </tr>
                        <tr>
                        	<td class="td-1">密码确认：</td>
                        	<td class="td-2"><input type="text" name="repPass" id="repPass"/></td>
                        	<td class="td-3"></td>
                        </tr> 
                  </tbody>
            </table>
	      </div>
         <!-- 主体正在安装 -->
         <div class="middle" id="ing" style="display:none">
            <div class="title">正在安装</div>
            <div class="process">
               请稍等，安装正在运行...<br />
               <img src="imgs/loading.gif" />
            </div>
         </div>
         <!-- 尾部 -->
   	   <div class="footer">
	    	     <input type="button" value="上一步" class="agree" onclick="window.location.href='index.php'"/>
              <input type="submit" value="下一步" class="disagree" name="submit"/>      
   	  </div>
      </form>
	</div>
</body>
</html>