

-- �� �������������� �������������� �������� �� ������ 1922 �. ����������� ������� �������� ������� �������������� ����� 35 ���.����.
-- ������� �������, ���������� ���� ������� (��������� ������ ������� c ��������� ����� ������ �� ����). ������� �������� ��������. 

-- cost 0.011647455394268 operations 3 
select name
from dbo.Ships join dbo.Classes on dbo.Ships.class = dbo.Classes.class
where dbo.Ships.launched >= 1922 and dbo.Classes.[type] = 'bb' and displacement > 35000