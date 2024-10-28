
drop table if exists persons;
drop table if exists acnts;
drop table if exists bills;
drop table if exists invoices;
drop type if exists acnt;
drop type if exists emailType;
drop type if exists phoneType;
drop type if exists perType;
drop type if exists orgType;
drop type if exists invItem;
create type emailType as (
	label varchar(10),
	email varchar(20)
);
create type phoneType as (
	label varchar(10),
	number varchar(20)
);
create type perType as enum ('client','supplier','pclient');
create type orgType as enum ('ind', 'comp');
create type acnt as enum ('bank','cash','sales','utilities','prof_fee','rent','supplies','wages','capital','VAT','Receivable','Payable');
create type invItem as (
linNr int,
descr varchar(40),
units int,
unitprice money,
vatpct numeric,
VAT money
);
create table persons (
id serial,
name json,
short varchar(15),
address json,
taxid varchar(12),
VATid varchar(15),
email emailType[],
phones phoneType[],
ptyp perType,
org orgType
);
create table acnts (
id serial,
date timestamp with time zone,
amount money,
VAT money,
invoice_id integer,
from_acnt acnt,
to_acnt acnt,
descr varchar(80)
);
create table bills (
id serial,
inv_id varchar(20),
supplier_id int,
bill_date date,
amount money,
vat money,
ref varchar(40),
doc varchar(40)
);
create table invoices (
inv_id varchar(20),
id serial,
inv_date date,
client_id int,
items invItem[],
vatpct numeric default 0.21,
total money,
vat money
);
