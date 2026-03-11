select
    id as customer_id,
    first_name,
    LAST_NAME
from {{ ref('raw_customers') }}