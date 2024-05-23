SELECT 
    salary_year_avg,
    job_posted_date,
    job_title
FROM (
    SELECT *
    FROM jan_jobs
    UNION ALL
    SELECT *
    FROM feb_jobs
    UNION ALL
    SELECT *
    FROM mar_jobs
) AS combined
WHERE 
    salary_year_avg > 70000
ORDER BY
    salary_year_avg DESC
