with customers as (
    select * from {{ ref('raw_customers') }}
),

orders as (
    select * from {{ ref('raw_orders') }}
),

final as (
    select
        customers.id,
        customers.first_name,
        count(orders.id) as number_of_orders
    from customers
    left join orders on customers.id = orders.user_id
    group by 1, 2
)

select * from final