select 
    id as payment_id,
    orderid as order_id,
    amount as payment_amount,
    paymentmethod as payment_method,
    created as payment_created,
    status as payment_status
from {{ ref('raw_payments') }}