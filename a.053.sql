﻿

-- Определите среднее число орудий для классов линейных кораблей.
-- Получить результат с точностью до 2-х десятичных знаков. 

select cast(avg(numGuns * 1.0) as numeric(10,2)) as [Avg-numGuns]
from Classes where type='bb'