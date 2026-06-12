with company_job_count as (
    select company_id, count(*) as total_jobs
    from job_postings_fact
    group by company_id
)
select company_dim.name as company_name,
company_job_count.total_jobs
from company_dim
left join company_job_count ON company_job_count.company_id = company_dim.company_id