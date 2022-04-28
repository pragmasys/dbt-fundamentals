select ID, ORDERID, PAYMENTMETHOD, STATUS, AMOUNT/100 amount, CREATED, _BATCHED_AT
from {{source('stripe', 'payment')}}