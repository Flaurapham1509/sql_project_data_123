select 
count (job_id) as number_of_jobs,
case WHEN job_location = 'Anywhere' THEN 'Remote'
     WHEN job_location = 'New york, NY' THEN 'Local'
     ELSE 'Onsite'
END AS location_category
from job_postings_fact
where job_title_short = 'Data Analyst'
group by location_category;