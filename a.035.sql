
-- � ������� Product ����� ������, ������� ������� ������ �� ���� ��� ������ �� ��������� ���� (A-Z, ��� ����� ��������).
-- �����: ����� ������, ��� ������. 

select model, type
from product
where model not like '%[^0-9]%' or upper(model) NOT like '%[^A-Z]%' 




select iif('99999' not like '%[^0-9]%', 1, 0)