#1
select * from cust where snum=1001;
#2
select city, sname, snum, comm from sal;
#3
select rating, cname from cust where city='San Jose';
#4
select distinct snum from ord;
#5
select sname, city from sal where city='London' and comm > 0.11;
#6
select * from cust where rating<=200 and city not like 'Rome';
#7.a
select * from ord where odate='03-OCT-90' or odate='05-OCT-90';
#7.b
select * from ord where odate!='04-OCT-90' and odate!='06-OCT-90';
#8
select * from cust where cname rlike '^[A-G]';
#9
select * from sal where sname like '%e%';
#10
select SUM(amt) from ord where odate='03-OCT-90';
#11
select SUM(amt) from ord where snum=1001;
#12
select MAX(amt), snum from ord group by snum;
#13
select MIN(cname) as name from cust where cname like '%s';
#14
select AVG(comm), city from sal group by city;
#15
select onum, amt * 0.8 as awtEUR, s.sname, s.comm
from ord
         inner join sal s on ord.snum = s.snum
where odate = '03-OCT-90';
#16
select o.onum, ocs.cname, ocs.sname, ocs.city
from ord o
         left join
     (
         #Покупатели, продавцы которых в Лондоне или Риме
         select o2.onum, c.cname, s.sname, s.city
         from ord o2
                  left join cust c on o2.cnum = c.cnum
                  inner join sal s on c.snum = s.snum
         where s.city = 'London'
            or 'Rome'
     ) as ocs on o.onum = ocs.onum
order by o.onum;
#17
select s.sname, SUM(o.amt) as sincome, SUM(o.amt) * s.comm as scomm_sum
from sal as s
         inner join ord as o on s.snum = o.snum
where o.odate < '05-OCT-90'
group by s.sname
order by s.sname;
#18
select o.onum, o.amt, c.cname, c.city, s.sname, s.city
from ord as o
         inner join cust c on o.cnum = c.cnum
         inner join sal s on c.snum = s.snum
where c.city rlike '^[L-R]'
  and s.city rlike '^[L-R]';
#19
with ctw1 as
         (select o.onum as first, o2.onum as second, c.cname as cname_1, c2.cname as cname_2
          from ord o
                   inner join ord o2 on o.snum = o2.snum
                   inner join cust c on o.cnum = c.cnum
                   inner join cust c2 on o2.cnum = c2.cnum
          where o.onum < o2.onum
            and c.cname != c2.cname)
select distinct ctw1.cname_1, ctw1.cname_2
from ctw1;
#20
with t1 as (
    /*Продавцы с комиссионными  меньше 0.13*/
    select s.snum, s.comm
    from sal s
    where s.comm < 0.13
),
     t2 as (
         /*Покупатели и продавцы*/
         select distinct c.cname, o.snum
         from cust c
                  inner join ord o on c.cnum = o.cnum
     )
select t2.cname, t1.snum
from t2
         inner join t1 on t2.snum = t1.snum;

#21
create table sal_copy
as select * from sal;
desc sal;
desc sal_copy;
#22
insert into sal_copy
values (1005, 'James', 'Rome', 0.2);

insert into sal_copy
values (1006, 'Anna', 'Tokyo', 0.14);

select * from sal_copy;

delete from sal_copy where snum = 1005;

select * from sal_copy;
#23
insert into sal_copy
values (1008, 'Mike', 'New York', 0.06);

select * from sal_copy;

insert into sal_copy
values (1009, 'Liza', 'Barcelona', 0.17);

select * from sal_copy;

update sal_copy set comm = comm*2;

select * from sal_copy;