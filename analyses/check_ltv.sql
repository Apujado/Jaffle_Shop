select 
    sum(lifetime_value) as total_ltv 
from {{ ref('dim_customers') }}