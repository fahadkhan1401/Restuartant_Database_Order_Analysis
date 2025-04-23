Select *  from order_details as od;

-- What is the date range of the table?
Select min(order_date) as min_date, max(order_date) as max_date
from order_details;

-- How many orders were made within this date range?
Select count(distinct order_id) as total_orders from order_details;

-- How many items were ordered within date range?

Select Count(*) as items_ordered from order_details;

-- Which order has the most number of items?
Select order_id,Count(item_id) as number_of_items from order_details
Group by order_id
order by number_of_items desc;

-- which orders had more than 12 items

Select order_id,Count(item_id) as number_of_items from order_details
Group by order_id
Having number_of_items > 12
order by number_of_items desc;

-- How many orders had more than 12 items
Select Count(*) from
(Select order_id,Count(item_id) as number_of_items from order_details
Group by order_id
Having number_of_items > 12
order by number_of_items desc) as num_orders;
-- From result we can see that it return 20 output, we have 20 orders otherwise, if we want to know then we can 







