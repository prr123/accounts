
drop table if exists persons;
drop table if exists acnts;
drop table if exists bills;
drop type if exists acnt;
drop type if exists emailType;
drop type if exists phoneType;
drop type if exists perType;
drop type if exists orgType;

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
//create table persons ADD CONSTRAINT short UNIQUE(
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
descr varchar(80));
create table bills (
payer varchar(15)
);
