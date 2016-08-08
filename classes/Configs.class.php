<?php 
/*
*  配置文件操作类
*  对应configs文件
* configs文件下的配置文件名必须为**.inc.php格式
*/
namespace Classes;

class  Configs implements \ArrayAccess{
    
    protected $dir_path;
    protected $configs = array();

    function __construct(){
    	$this->dir_path = dirname(__DIR__)."/configs";
    }
    
    function offsetExists($filename){
        return isset($this->configs[$filename]);
    }

    function offsetUnset($filename){
    	unset($this->configs[$filename]);
    }

    function offsetGet($filename){  //所要获取的文件名
    	if(empty($this->configs[$filename])){
    		$file_path = $this->dir_path."/".$filename.".inc.php";
			$this->configs[$filename] =require_once $file_path;
    	}
    	return $this->configs[$filename];
    }

    function offsetSet($filename,$data){
        // 如果文件不存在，file_put_contents 函数会自动创建文件；如果文件已存在，原有文件被重写。
        // 如果你想在一个已有文件上追加内容，只需要加一个参数。当 flags 的值为 FILE_APPEND 时，表示在已有文件上追加内容。
    	file_put_contents($filename, $data);
        if(file_exists($filename)){
            return true;
        }
        return false;
    }
}

 ?>
