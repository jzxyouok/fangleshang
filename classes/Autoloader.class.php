<?php 
/*
* 自动加载类
* 使用时可以引入本文件并且用sql_autoload_register()将其注册实现自动加载
* include "classes/Autoloader.class.php";
* spl_autoload_register("classes\\Autoloader::autoload");
*
*/
namespace Classes;
class Autoloader{
	public static function autoload($classname){
         require_once(dirname(__DIR__).DIRECTORY_SEPARATOR.$classname.'.class.php');
	}
}

 ?>