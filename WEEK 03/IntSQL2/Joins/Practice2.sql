-- "Which products are our best-selling products?"


-- We have 4 categories -- Storage, Eledctronics, Accessories, Wearables
select 
    category,
    sum(price)
from 
    Products 
GROUP BY category
-------------------------------------------------------------------


SELECT 
    p.category,
    SUM(p.price*o.quantity) AS Revenue
    
from products as p 
join orders as o   
on p.product_id = o.product_id 

group by  p.category

order by Revenue DESC
















