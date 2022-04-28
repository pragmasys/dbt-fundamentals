select stg_orders.order_id, stg_orders.customer_id, sum(coalesce(stg_payments.amount,0)) amount

from {{ ref('stg_orders') }} as stg_orders
left join {{ ref('stg_payments') }} as stg_payments on stg_orders.order_id = stg_payments.orderid
and stg_payments.status = 'success'
group by 1,2