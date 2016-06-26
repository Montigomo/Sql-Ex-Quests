
-- ������� �������� ���� �������� � ���� ������, ��������� �� ���� � ����� ���� (��������, King George V).
-- �������, ��� ����� � ��������� ����������� ���������� ���������, � ��� �������� ��������.

-- cost 0.018483765423298 operations 6 
select * 
from (
select name, (len(name) - len(replace(name, ' ', '')) + 1) as cw
from ships
union
select ship as name, (len(ship) - len(replace(ship, ' ', '')) + 1) as cw
from outcomes) as t1
where cw > 2
