

-- ������� ������, ������� �����-���� ������ ������� ������ �������� ('bb') � ������� �����-���� ������ ��������� ('bc').

select country
from dbo.Classes
where [type] = 'bb'
intersect 
select country
from dbo.Classes
where [type] = 'bc'