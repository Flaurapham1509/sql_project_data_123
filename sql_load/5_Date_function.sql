DROP TABLE IF EXISTS january_jobs;
DROP TABLE IF EXISTS february_jobs;
DROP TABLE IF EXISTS march_jobs;
DROP TABLE IF EXISTS april_jobs;
DROP TABLE IF EXISTS may_jobs;
DROP TABLE IF EXISTS june_jobs;
DROP TABLE IF EXISTS july_jobs;
DROP TABLE IF EXISTS august_jobs;
DROP TABLE IF EXISTS september_jobs;
DROP TABLE IF EXISTS october_jobs;
DROP TABLE IF EXISTS november_jobs;
DROP TABLE IF EXISTS december_jobs;

CREATE TABLE january_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

select job_posted_date
from march_jobs;
