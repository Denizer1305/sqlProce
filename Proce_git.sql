create database HomeWork;

use HomeWork;


create table Proce(
id int primary key auto_increment,
nameProce varchar(30) not null,
typeProce varchar(30) not null,
color varchar(30) not null,
calorie decimal,
info varchar(400)
);

insert into HomeWork.Proce(nameProce, typeProce, color, calorie, info)
values
('Томат','овощь', 'красный', 50, 
'Научная классификация: 
Домен: Эукариоты; 
Царство: Растения; 
Порядок: Паслёноцветные; 
Семейство: Паслёновые; 
Род: Паслён; 
Вид:Томат'),
('Огурец','овощь', 'зеленый', 70, 
'Научная классификация: 
Домен: Эукариоты; 
Царство: Растения;
Порядок: Тыквоцветные;
Семейство: Тыквенные;
Род: Огурец;
Вид: Огурец обыкновенный'),
('Капуста','овощь', 'зеленый', 20, 
'Научная классификация: 
Домен: Эукариоты;
Царство: Растения;
Порядок: Капустоцветные;
Семейство: Капустные;
Род: Капуста;
Вид: Капуста огородная
'),
('Яблоко','фрукт', 'желтый', 56, 
'Научная классификация: 
Домен: Эукариоты;
Царство: Растения;
Порядок: Розоцветные;
Семейство: Розовые;
Род: Яблоня
'),
('Груша','фрукт', 'желтый', 49, 
'Научная классификация:
Домен: Эукариоты;
Царство: Растения;
Порядок: Розоцветные;
Семейство: Розовые;
Род: Груша'),
('Банан','фрукт', 'желтый', 65, 
'Научная классификация:
Домен: Эукариоты;
Царство: Растения;
Порядок: Имбирецветные;
Семейство: Банановые;
Род: Банан 
');

SELECT * FROM HomeWork.Proce;

SELECT * FROM HomeWork.Proce 
WHERE typeProce = 'овощь';

SELECT * FROM HomeWork.Proce 
WHERE typeProce = 'фрукт';

SELECT nameProce FROM HomeWork.Proce;

SELECT DISTINCT color FROM HomeWork.Proce;

SELECT * FROM HomeWork.Proce 
WHERE typeProce = 'фрукт' AND color = 'красный';

SELECT * FROM HomeWork.Proce 
WHERE typeProce = 'овощь' AND color = 'зеленый';

SELECT COUNT(*) FROM HomeWork.Proce  
WHERE type = 'fruit';

SELECT COUNT(*) FROM HomeWork.Proce  
WHERE color = 'красный';

SELECT color, COUNT(*) FROM HomeWork.Proce 
GROUP BY color;

SELECT color, COUNT(*) AS count FROM HomeWork.Proce 
GROUP BY color 
ORDER BY count ASC LIMIT 1;

SELECT color, COUNT(*) AS count FROM HomeWork.Proce 
GROUP BY color 
ORDER BY count DESC LIMIT 1;

SELECT MIN(calorie) FROM HomeWork.Proce;

SELECT AVG(calorie) FROM HomeWork.Proce;

SELECT * FROM HomeWork.Proce 
WHERE type = 'фрукт' 
ORDER BY calories ASC LIMIT 1;

SELECT * FROM HomeWork.Proce  
WHERE type = 'фрукт' 
ORDER BY calories DESC LIMIT 1;

SELECT COUNT(*) FROM HomeWork.Proce 
WHERE type = 'овощь';

SELECT COUNT(*) FROM HomeWork.Proce 
WHERE type = 'фрукт';

SELECT COUNT(*) FROM HomeWork.Proce 
WHERE color = 'зеленый';

SELECT color, COUNT(*) FROM HomeWork.Proce  
GROUP BY color;

SELECT color, COUNT(*) AS count FROM HomeWork.Proce 
GROUP BY color 
ORDER BY count ASC LIMIT 1;

SELECT color, COUNT(*) AS count FROM HomeWork.Proce 
GROUP BY color 
ORDER BY count DESC LIMIT 1;

SELECT MIN(calorie) FROM HomeWork.Proce ;

SELECT MAX(calorie) FROM HomeWork.Proce ;

SELECT AVG(calorie) FROM fruits_and_vegetables;

SELECT * FROM fruits_and_vegetables 
WHERE type = 'фрукт' 
ORDER BY calories ASC LIMIT 1;

SELECT * FROM HomeWork.Proce
WHERE type = 'фрукт' 
ORDER BY calorie DESC LIMIT 1;


