<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Файловый менеджер</title>
	
</head>
<body>
	
	<div style="padding-top: 50px; display: flex; flex-direction: column; align-items: center;">
		
		<ul>
			
			<?php
			
				if ($_GET) 
					$path = $_GET['path'];
				else 
					$path = '.';
		
				if (is_dir($path))
					if ($dh = opendir($path))
						while (($file = readdir($dh)) !== false) {
							
							// Если файл - это родительский каталог 
							// Если путь - это не начальная директория
							if ($file == '..' && $path != '.') {
								
								// Получение пути предыдущей директории
								$parent = explode('/', $path);
								unset($parent[count($parent) - 1]);
								if ($parent)
									$parent = implode('/', $parent);
								
								echo "
									<li style='display: flex; align-items: center; margin: 5px 0;'>
										<img src='img/folder.svg' alt='folder'/>
										<a href='?path=$parent' style='margin-left: 10px; font-size: 20px;'>
											$file
										</a>
									</li>
								";
							}
							
							// Если файл - это не текущий и не родительский каталог
							if ($file != '.' && $file != '..') {
								
								// Если файл - это папка
								if (is_dir($path . '/' . $file)) {
									echo "
										<li style='display: flex; align-items: center; margin: 5px 0;'>
											<img src='img/folder.svg' alt='folder'/>
											<a href='?path=$path/$file' style='margin-left: 10px; font-size: 20px;'>
												$file
											</a>
										</li>
									";
								}
								else {
									
									$types = ['jpg', 'png', 'jpeg', 'svg'];
									$info = new SplFileInfo($file);
									
									// Если тип файла - это изображение
									if (in_array($info->getExtension(), $types)) {
										echo "
											<li style='display: flex; align-items: center; margin: 5px 0;'>
												<img src='img/file.svg' alt='folder'/>
												<span style='margin-left: 10px; font-size: 20px;'>
													$file
												</span>
											</li>
										";
									}
									
								}
								
							}
							
						}
		
			?>
			
		</ul>
		
	</div>

	

</body>
</html>
