spool analysis2_output.txt
set echo on

column column_name format a40
set linesize 200
set lines 150

-------------------------------------------------------------------------------
-- query: Actor with most movies in given years range
-------------------------------------------------------------------
SELECT
    *
FROM
    (
        SELECT
            tp.nconst,
            CAST(nb.primaryname AS VARCHAR(40)) primaryname,
            min(tb.startyear),
            COUNT(*)                            count,
            'Actor with most movies'
        FROM
            imdb00.title_principals tp,
            imdb00.title_basics     tb,
            imdb00.name_basics      nb
        WHERE
                tp.tconst = tb.tconst
            AND nb.nconst = tp.nconst
            AND tb.startyear >= '1988'
            AND tb.startyear <= '1997'
            AND lower(tb.titletype) = 'movie'
            AND tb.startyear != '\N'
            AND lower(tp.category) = 'actor'
        GROUP BY
            tp.nconst,nb.primaryname
        ORDER BY
            4 DESC
    )
WHERE
    ROWNUM = 1;

--------------------------------------------------------------------------------
-- query: Actress with most movies in given years range
--------------------------------------------------------------------------------

SELECT
    *
FROM
    (
        SELECT
            tp.nconst,
            CAST(nb.primaryname AS VARCHAR(40)) primaryname,
            min(tb.startyear),
            COUNT(*)                            count,
            'Actress with most movies'
        FROM
            imdb00.title_principals tp,
            imdb00.title_basics     tb,
            imdb00.name_basics      nb
        WHERE
                tp.tconst = tb.tconst
            AND nb.nconst = tp.nconst
            AND tb.startyear >= '1988'
            AND tb.startyear <= '1997'
            AND lower(tb.titletype) = 'movie'
            AND tb.startyear != '\N'
            AND lower(tp.category) = 'actress'
        GROUP BY
            tp.nconst,
            nb.primaryname
        ORDER BY
            4 DESC
    )
WHERE
    ROWNUM = 1;

--------------------------------------------------------------------------------
-- query: Actors with most movies in given years range
--------------------------------------------------------------------------------
SELECT
    *
FROM
    (
        SELECT
            tp.nconst,
            CAST(nb.primaryname AS VARCHAR(40)) primaryname,
            min(tb.startyear),
            COUNT(*)                            count,
            'Actors with 3 movies'
        FROM
            imdb00.title_principals tp,
            imdb00.title_basics     tb,
            imdb00.name_basics      nb
        WHERE
                tp.tconst = tb.tconst
            AND nb.nconst = tp.nconst
            AND tb.startyear >= '1988'
            AND tb.startyear <= '1997'
            AND lower(tb.titletype) = 'movie'
            AND tb.startyear != '\N'
            AND lower(tp.category) = 'actor'
        GROUP BY
            tp.nconst,
            nb.primaryname
        ORDER BY
            3
    )
WHERE
    count = 3;


--------------------------------------------------------------------------------
-- query: Actresses with 3 movies in given years range
--------------------------------------------------------------------------------
SELECT
    *
FROM
    (
        SELECT
            tp.nconst,
            CAST(nb.primaryname AS VARCHAR(40)) primaryname,
            min(tb.startyear),
            COUNT(*)                            count,
            'Actors with 3 movies'
        FROM
            imdb00.title_principals tp,
            imdb00.title_basics     tb,
            imdb00.name_basics      nb
        WHERE
                tp.tconst = tb.tconst
            AND nb.nconst = tp.nconst
            AND tb.startyear >= '1988'
            AND tb.startyear <= '1997'
            AND lower(tb.titletype) = 'movie'
            AND tb.startyear != '\N'
            AND lower(tp.category) = 'actress'
        GROUP BY
            tp.nconst,
            nb.primaryname
        ORDER BY
            3
    )
WHERE
    count = 3;



Set echo off
Spool off

