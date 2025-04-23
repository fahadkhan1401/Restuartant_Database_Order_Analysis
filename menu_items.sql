use restaurant_db;

-- Total number of unique items in the menu 
Select count(distinct item_name) as Total_items 
from menu_items;

-- Most expensive item on the menu
Select * from menu_items
order by price desc
Limit 1;
-- Shrimp scampi ( italian) is the most expensive item on the menu


-- least expensive item on the menu
Select * from menu_items
order by price asc
Limit 1;
-- least expensive item on the menu is EDamame ( Asian ) 

-- How many categories of dishes we have?

Select Count(distinct category) from menu_items;

-- We have 4 category of dishes available and their name are Asian, American, Mexican, Italian

Select distinct category from menu_items;

Select Count(*) from menu_items
where category="Italian"
order by price desc;

Select * from menu_items
where category="Italian"
order by price desc;
-- There are total 9 dishes in italian category, the most expensive is the shrimp Scampi and the leas expensive is Fettuccine Alfredo.


-- How many dishes are in each category? What is the average dish price within each category?
Select category,Count(category) as total_dishes,round((price),0) as avg_price from menu_items
group by category
order by total_dishes desc;



