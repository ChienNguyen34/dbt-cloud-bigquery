with base_orders as (
    select
        order_id,
        customer_id,
        order_date,
        status as order_status,
        total_amount as order_amount
    from {{ source('bigquery_source', 'orders') }}
)

select
    order_id,
    customer_id,
    order_date,
    order_status,
    order_amount,

    -- calculate days since the order was placed
    date_diff(current_date, order_date, day) as days_since_order,

    -- bucketize order value
    case
        when order_amount >= 500 then 'High Value'
        when order_amount between 200 and 499.99 then 'Medium Value'
        else 'Low Value'
    end as order_value_category,

    -- simplify status into completed / not completed
    case
        when order_status = 'DELIVERED' then true
        else false
    end as is_completed

from base_orders
