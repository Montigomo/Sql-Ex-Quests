


-- ������� Printer ����������� �� ����������� ���� code. 
-- ������������� ������ ���������� ������: ������ ������ ���������� � ������ ������, 
-- ������ ������ �� ��������� color='n' �������� ����� ������, ������ ����� �� �������������.
-- ��� ������ ������ ����������: ���������� �������� ���� model (max_model), 
-- ���������� ���������� ����� ��������� (distinct_types_cou) � ������� ���� (avg_price). 
-- ��� ���� ����� ������� �������: code, model, color, type, price, max_model, distinct_types_cou, avg_price. 

--select *, rank() over(order by code ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING)
--from Printer


select *,
	row_number() over(order by code),
	row_number() over( partition by color order by code),
	case color when 'n' then 0 else row_number() over(order by code) end +
	case color when 'n' then 1 else -1 end * row_number() over(partition by color order by code) Grp 
from Printer 
order by code