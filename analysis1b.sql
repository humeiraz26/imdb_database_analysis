spool analysis1b_output.txt
set echo on

column column_name format a40
set linesize 200
set lines 150

---------------------------------------------------------------------------------------
-- query: Total number of films Elizabeth Taylor made during the course of her career, broken down by decade
---------------------------------------------------------------------------------------
select 'Elizabeth Taylor',colum,sum(count) as count from (select startyear,count(startyear) as count,
case 
when lower(startyear)<='1950' and lower(startyear)>='1941'   then '1940s'
when lower(startyear)<='1960' and lower(startyear)>='1951'   then '1950s'
when lower(startyear)<='1970' and lower(startyear)>='1961'   then '1960s'
when lower(startyear)<='1980' and lower(startyear)>='1971'   then '1970s'
when lower(startyear)<='1990' and lower(startyear)>='1981'   then '1980s'
when lower(startyear)<='2000' and lower(startyear)>='1991'   then '1990s'
when lower(startyear)<='2010' and lower(startyear)>='2001'   then '2000s'
when lower(startyear)<='2020' and lower(startyear)>='2011'   then '2010s'
when lower(startyear)<='2030' and lower(startyear)>='2021'   then '2020s'
end as colum
from imdb00.title_basics where upper(titletype)='MOVIE' and tconst in (
select tconst from imdb00.title_principals where upper(category)='ACTRESS' and nconst='nm0000072'  )
and startyear NOT in ( '\N')  group by startyear) group by colum order by colum;

---------------------------------------------------------------------------------------
-- query: Total number of films Jim Carrey made during the course of her career, broken down by decade
---------------------------------------------------------------------------------------

select 'Jim Carrey',colum,sum(count) as count from (select startyear,count(startyear) as count,
case 
when lower(startyear)<='1950' and lower(startyear)>='1941'   then '1940s'
when lower(startyear)<='1960' and lower(startyear)>='1951'   then '1950s'
when lower(startyear)<='1970' and lower(startyear)>='1961'   then '1960s'
when lower(startyear)<='1980' and lower(startyear)>='1971'   then '1970s'
when lower(startyear)<='1990' and lower(startyear)>='1981'   then '1980s'
when lower(startyear)<='2000' and lower(startyear)>='1991'   then '1990s'
when lower(startyear)<='2010' and lower(startyear)>='2001'   then '2000s'
when lower(startyear)<='2020' and lower(startyear)>='2011'   then '2010s'
when lower(startyear)<='2030' and lower(startyear)>='2021'   then '2020s'
end as colum
from imdb00.title_basics where upper(titletype)='MOVIE' and tconst in (
select tconst from imdb00.title_principals where upper(category)='ACTOR' and nconst='nm0000120'  )
and startyear NOT in ( '\N')  group by startyear) group by colum order by colum;

---------------------------------------------------------------------------------------
-- query: Total number of films Sridevi made during the course of her career, broken down by decade
---------------------------------------------------------------------------------------
select 'SriDevi', colum,sum(count) as count from (select startyear,count(startyear) as count,
case 
when lower(startyear)<='1950' and lower(startyear)>='1941'   then '1940s'
when lower(startyear)<='1960' and lower(startyear)>='1951'   then '1950s'
when lower(startyear)<='1970' and lower(startyear)>='1961'   then '1960s'
when lower(startyear)<='1980' and lower(startyear)>='1971'   then '1970s'
when lower(startyear)<='1990' and lower(startyear)>='1981'   then '1980s'
when lower(startyear)<='2000' and lower(startyear)>='1991'   then '1990s'
when lower(startyear)<='2010' and lower(startyear)>='2001'   then '2000s'
when lower(startyear)<='2020' and lower(startyear)>='2011'   then '2010s'
when lower(startyear)<='2030' and lower(startyear)>='2021'   then '2020s'
end as colum
from imdb00.title_basics where upper(titletype)='MOVIE' and tconst in (
select tconst from imdb00.title_principals where upper(category)='ACTRESS' and nconst='nm0004437'  )
and startyear NOT in ( '\N')  group by startyear) group by colum order by colum;

---------------------------------------------------------------------------------------
-- query: Total number of films Mahesh Babu made during the course of her career, broken down by decade
---------------------------------------------------------------------------------------
select 'Mahesh Babu',colum,sum(count) as count from (select startyear,count(startyear) as count,
case 
when lower(startyear)<='1950' and lower(startyear)>='1941'   then '1940s'
when lower(startyear)<='1960' and lower(startyear)>='1951'   then '1950s'
when lower(startyear)<='1970' and lower(startyear)>='1961'   then '1960s'
when lower(startyear)<='1980' and lower(startyear)>='1971'   then '1970s'
when lower(startyear)<='1990' and lower(startyear)>='1981'   then '1980s'
when lower(startyear)<='2000' and lower(startyear)>='1991'   then '1990s'
when lower(startyear)<='2010' and lower(startyear)>='2001'   then '2000s'
when lower(startyear)<='2020' and lower(startyear)>='2011'   then '2010s'
when lower(startyear)<='2030' and lower(startyear)>='2021'   then '2020s'
end as colum
from imdb00.title_basics where upper(titletype)='MOVIE' and tconst in (
select tconst from imdb00.title_principals where upper(category)='ACTOR' and nconst='nm1121870'  )
and startyear NOT in ( '\N')  group by startyear) group by colum order by colum;

Set echo off
Spool off
