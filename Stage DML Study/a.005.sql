

-- ������� ����� ������, �������� � ������ �������� ����� ��, ������� 12x ��� 24x CD � ���� ����� 600 ���. 

select distinct model, speed, hd from PC where (cd='12x' or cd='24x') and price < 600