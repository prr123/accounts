insert into Persons (name, short,org, ptyp) values (
'{"first":"Joe","last":"Doe"}',
'joe',
'ind',
'client'
);
insert into Persons (name, short,org, ptyp,email) values (
'{"first":"Jim","last":"Beam"}',
'jim',
'ind',
'client',
array[('work','jim@work.com'),('priv','jim@gmail.com')]::emailType[]
);
insert into Persons (name, short,org, ptyp) values (
'{"company":"iberdrola"}',
'iberdrola',
'comp',
'supplier'
);
