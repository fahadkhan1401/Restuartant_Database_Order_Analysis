Select * from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id;


-- What are the least and most order items
Select item_name,Count(m.item_name) as total_purchases from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id
Group by m.menu_item_id
order by total_purchases desc;

-- Hamburger is the most order items belongs to American
-- Chicken Tacos is the least order item belongs to Mexican 

-- Which category they belong to ?
Select item_name,category,Count(m.item_name) as total_purchases from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id
Group by m.menu_item_id, category
order by total_purchases desc;

-- What were the top 5 orders that spent most money?
Select order_id,sum(price) as Revenue from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id
group by o.order_id
order by Revenue desc
limit 5;

-- View the details of the highest spend order. Which specific items were purchased?
Select category,count(item_id) as num_items
from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id
where o.order_id=440
group by category
order by num_items desc;


Select category,count(item_id) as num_items
from order_details as o
Left join menu_items as m on o.item_id=m.menu_item_id
where o.order_id in (440,2075,1957,330,2675)
group by category
order by num_items desc;














