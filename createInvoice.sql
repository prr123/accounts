insert into invoices (
inv_id,
inv_date,
client_id,
items,
total,
vat
) values (
'2024/1',
'28/10/2024',
1,
array[(1,'rental search',1,1200.00,0.21,100.00),(2,'NIE', 1, 200.00, 0.21, 42.00)]::invItem[],
1200.00,
200.00
);
