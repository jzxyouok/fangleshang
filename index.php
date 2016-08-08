<?php 
/*
* 单一入口
*
*/
namespace Fangleshang;
include "classes/Autoloader.class.php";
spl_autoload_register("Classes\\Autoloader::autoload");
//设置输出文本的编码
header("Content-Type:text/html;Charset=utf-8");

//读取配置文件的类，传入配置文件的名称前缀
$configs = new \Classes\Configs();
$temp = $configs->offsetGet("temp");
define("TPLSTYLE",$temp['template']);
define("APP", "./home");           //设置当前应用的目录
define("PAGENUM",$temp['home_page_num']);  //默认每页显示记录数
define("SMARTY","./smarty");   //定义使用的模板引擎的目录

//如果未安装先进行安装
if(!file_exists("install/install_lock.txt")){
	header("Location:install/index.php");
	exit();
}
//如果是移动客户端请求跳转到移动首页面
if(is_mobile_request()){
	header("Location:mobile.php");
	exit();
}
//如果是PC客户端请求
require_once(SMARTY."/smarty.php");

//判断是否是移动客户端请求
function is_mobile_request()  
	{  
		 $_SERVER['ALL_HTTP'] = isset($_SERVER['ALL_HTTP']) ? $_SERVER['ALL_HTTP'] : '';  
		 $mobile_browser = '0';  
			 if(preg_match('/(up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone|iphone|ipad|ipod|android|xoom)/i', strtolower($_SERVER['HTTP_USER_AGENT'])))
			  $mobile_browser++;  
			 if((isset($_SERVER['HTTP_ACCEPT'])) and (strpos(strtolower($_SERVER['HTTP_ACCEPT']),'application/vnd.wap.xhtml+xml') !== false))  
			  $mobile_browser++;  
			 if(isset($_SERVER['HTTP_X_WAP_PROFILE']))  
			  $mobile_browser++;  
			 if(isset($_SERVER['HTTP_PROFILE']))  
			  $mobile_browser++;  
			 $mobile_ua = strtolower(substr($_SERVER['HTTP_USER_AGENT'],0,4));  
			 $mobile_agents = array(  
				'w3c ','acs-','alav','alca','amoi','audi','avan','benq','bird','blac',  
				'blaz','brew','cell','cldc','cmd-','dang','doco','eric','hipt','inno',  
				'ipaq','java','jigs','kddi','keji','leno','lg-c','lg-d','lg-g','lge-',  
				'maui','maxo','midp','mits','mmef','mobi','mot-','moto','mwbp','nec-',  
				'newt','noki','oper','palm','pana','pant','phil','play','port','prox',  
				'qwap','sage','sams','sany','sch-','sec-','send','seri','sgh-','shar',  
				'sie-','siem','smal','smar','sony','sph-','symb','t-mo','teli','tim-',  
				'tosh','tsm-','upg1','upsi','vk-v','voda','wap-','wapa','wapi','wapp',  
				'wapr','webc','winw','winw','xda','xda-'
				);  
			 if(in_array($mobile_ua, $mobile_agents))  
			  $mobile_browser++;  
			 if(strpos(strtolower($_SERVER['ALL_HTTP']), 'operamini') !== false)  
			  $mobile_browser++;  
			 // Pre-final check to reset everything if the user is on Windows  
			 if(strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'windows') !== false)  
			  $mobile_browser=0;  
			 // But WP7 is also Windows, with a slightly different characteristic  
			 if(strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'windows phone') !== false)  
			  $mobile_browser++;  
			 if($mobile_browser>0)  
				return true;  
			 else
				return false;
		}
 ?>