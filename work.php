<?php
//数据库开始
$link = mysqli_connect("localhost","root","","address") or die("Error " . mysqli_error($link));
//consultation:
//execute the query.
$link->query("SET character_set_client='utf8'");
$link->query("SET character_set_connection='utf8'");
$link->query("SET character_set_results='utf8'");
//数据库结束

$query="SELECT `p_num` FROM `p_information` WHERE `p_name`='程帅帅'"  or  die("Error in the consult.." . mysqli_error($link));
echo $query.'<br/>';
	
$result=$link->query($query);
$row=$result->fetch_array(MYSQLI_ASSOC);
	
$newname=$row['p_num'];
echo $newname.'<br/>'; 




$dir='photo/';

$i=683;

if (is_dir($dir))
{
	if ($dh = opendir($dir))
	{
		for ($i;$i>0;$i--)
		{
			
			
			$file = readdir($dh);
			echo $file. "<br/>";
			$end = strrpos($file, ".");
			$oldname='';
			$oldname = substr_replace($file,$oldname,$end,4);
			
		
			   
				 if($file!='.'&&$file!='..')
				 {
					$query='SELECT `p_num` FROM `p_information` WHERE `p_name`="'.$oldname.'"'   or  die("Error in the consult.." . mysqli_error($link));
					echo $query.'<br/>';
					
					$result  =  $link->query($query);
					//$count   =  $result->num_rows;
					$row     =  $result->fetch_array(MYSQLI_ASSOC);
					$newname =  $row['p_num'];
					echo $newname.'<br/>';
// 					echo $count.'<br/>';
				 }
			
		}
			closedir($dh);
	}
}
	
echo $i;



/* function fRename($dirname){
	if(!is_dir($dirname)){
		echo "{$dirname}不是一个有效的目录！";
		exit();
	}

}

$handle = opendir($dirname);
while(($fn = readdir($handle))!==false){
	if($fn!='.'&&$fn!='..'){
		$curDir = $dirname.'/'.$fn;
		if(is_dir($curDir)){
			fRename($curDir);
		}
		else{
			$path = pathinfo($curDir);
			$newname = $path['dirname'].'/'.rand(0,100).'.'.$path['extension'];
			rename($curDir,$newname);
			echo $curDir.'---'.$newname."<br>";
		}
	}
}

//给出一个目录名称调用函数
fRename('pl'); */


?>
