

-- ������� �������������, ������������ ��, �� �� ��-��������. 

select Maker 
from Product
where Product.type = 'PC'
except
select Maker 
from Product
where Product.type = 'Laptop'