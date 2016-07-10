


-- �� ������� Classes ��� ������ ������ ����� ������������ �������� ����� ���� ���������: 
-- numguns*5000, bore*3000, displacement.
-- ����� � ��� �������: 
-- - ������; 
-- - ������������ ��������; 
-- - ����� `numguns` - ���� �������� ����������� ��� numguns*5000, ����� `bore` - ���� �������� ����������� ��� bore*3000,
-- ����� `displacement` - ���� �������� ����������� ��� displacement.
-- ���������. ���� �������� ����������� ��� ���������� ���������, �������� ������ �� ��� ��������� �������.


-- cost 0.017845541238785 operations 16 
with cta as (
	select [upv].[country], c, v, max(v) over(partition by [country]) m
	from (
		select class, type, country, cast(numGuns * 5000 as int) numguns,
		cast(bore * 3000 as int) bore, displacement from classes) tr
	unpivot(v for c in ([numGuns],[bore],[displacement])) upv)
select distinct [country], cast(v as decimal(18,1)) as [max_val], c as [name]
from cta
where v = m;