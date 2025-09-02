# IMDB Movie Career Analysis (SQL)

## Project Overview
This project contains **SQL scripts** to analyze actors’ and actresses’ careers using the IMDB dataset. It includes queries for counting movies by decade, identifying top actors/actresses within a given time frame, and filtering results based on specific conditions.

## Files in Repository
- **`analysis1b.sql`**
  - Counts the **total number of films** made by selected actors/actresses:
    - Elizabeth Taylor  
    - Jim Carrey  
    - Sridevi  
    - Mahesh Babu  
  - Breaks down results **by decade** (1940s → 2020s).  

- **`analysis2.sql`**
  - Finds:
    - Actor with the most movies in a **given year range**  
    - Actress with the most movies in the same range  
    - List of actors with exactly **3 movies** in that period  
    - List of actresses with exactly **3 movies** in that period  
  - Example year range: `1988–1997` (configurable in the query).  

## Requirements
- **Database**: Oracle (queries use `ROWNUM`, `CAST`, and spool commands).  
- **IMDB Dataset Schema**:
  - `imdb00.title_basics`  
  - `imdb00.title_principals`  
  - `imdb00.name_basics`  

## How to Run
1. Load the IMDB dataset into your Oracle database.  
2. Connect to SQL*Plus or an Oracle SQL editor.  
3. Run scripts:
   ```sql
   @analysis1b.sql
   @analysis2.sql
   ```
4. Output will be saved in:
   - `analysis1b_output.txt`  
   - `analysis2_output.txt`   
