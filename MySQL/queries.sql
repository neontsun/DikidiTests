-- Вывод списка мотоциклов по типу, если мотоцикл выпускается
SELECT
		mt.`name` as `Тип`,
    m.`name` as `Модель`,
	  IF (m.`issued` = 1, 'Да', 'Нет') as `Выпускается`
FROM 
		motorcycles m
    JOIN motorcycles_type mt ON m.`type_id` = mt.`row_id`
WHERE m.`issued` = 1
GROUP BY mt.`name`, m.`name`, m.`issued`

-- Вывод списка мотоциклов по типу, если мотоцикл уже не выпускается
SELECT
		mt.`name` as `Тип`,
    m.`name` as `Модель`,
	  IF (m.`issued` = 1, 'Да', 'Нет') as `Выпускается`
FROM 
		motorcycles m
    JOIN motorcycles_type mt ON m.`type_id` = mt.`row_id`
WHERE m.`issued` = 0
GROUP BY mt.`name`, m.`name`, m.`issued`

-- Вывод списка мотоциклов по типу
SELECT
		mt.`name` as `Тип`,
    m.`name` as `Модель`,
	  IF (m.`issued` = 1, 'Да', 'Нет') as `Выпускается`
FROM 
		motorcycles m
    JOIN motorcycles_type mt ON m.`type_id` = mt.`row_id`
GROUP BY mt.`name`, m.`name`, m.`issued`
