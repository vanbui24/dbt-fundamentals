{% docs jaffle_shop__stg__orders__order_id %}

Order ID

{% enddocs %}

{% docs jaffle_shop__stg__orders__customer_id %}

Customer ID

{% enddocs %}

{% docs jaffle_shop__stg__orders__order_date %}

Date of order

{% enddocs %}

{% docs jaffle_shop__stg__orders__status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}
