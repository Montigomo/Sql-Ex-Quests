


-- ��� ������� �������������, ������������ ��-�������� c ������� �������� ����� �� ����� 10 �����,
-- ����� �������� ����� ��-���������. �����: �������������, ��������.

select distinct maker, speed
from Product inner join Laptop on Product.model = Laptop.model
where Laptop.hd >= 10