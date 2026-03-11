with customers as (
    select * from {{ ref('stg_jaffle_shop__customers') }}
),

orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

final as (
    select
        customers.customer_id,
        customers.first_name,
        count(order_id) as number_of_orders
    from customers
    left join orders on customers.customer_id = orders.customer_id
    group by 1, 2
)

select * from final