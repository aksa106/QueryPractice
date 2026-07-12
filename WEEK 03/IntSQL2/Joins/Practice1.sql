
-- Topic: Inner Join

-- Display the customer name and the order ID for every order placed.


select c.customer_name , o.order_id

from customers c    
inner join orders o 
on c.customer_id = o.customer_id;



--Display: Customer Name,  Product Name , Quantity

select 
    c.customer_name, 
    p.product_name,
    o.quantity 

from 
    customers as c   
join 
    orders as o   

on  
    c.customer_id = o.customer_id 

join 
    products as p   

on   
    p.product_id = o.product_id  


--Show all customers and the number of orders they have placed.


select count(DISTINCT customer_name) from customers -- 15

-- we have in total of 15 customers registered in our ecommerce app
-- now out of those 15 total customers we have to find :   
--     Total customers who have placed orders 
--     All Customers who have placed orders
--     All customers and the number of order they have placed , 
--     (all customers even though if some cus hasnt placed any order)


----------------------------------------------------------------
with customer_orders AS (

    select 
        c.customer_name,
        sum(o.quantity) as total_orders_placed
    from 
        customers as c
    join 
        orders as o   
    on   
        c.customer_id = o.customer_id 

    group by
        c.customer_name

)


select count(total_orders_placed) 
from customer_orders              -- 10/15 

-- inner subquery gives whole table of those customers who have placed orders 

-- outer query gives total count of customers who have placed an order

-- 10 out of 15 customers have placed order


--------------------------------------------------------------------

--Show all customers and the number of orders they have placed.




    select 
        o.order_id,
        c.customer_name,
        sum(o.quantity) as total_orders_placed
        
    from 
        customers as c
    left join 
        orders as o   
    on   
        c.customer_id = o.customer_id 

    group by
        c.customer_name

-- Gives the whole table of all customers whether they have placed an order or not

-----------------------------------------------------------------------------


-- Now let us fetch only those Customers name who havent placed any orders 

select   
    c.customer_name, 'Has not placed any orders' AS status
from 
    customers as c   
left join 
    orders as o   
on   
    c.customer_id = o.customer_id  

where  
    o.order_id is null


    
-- LEts count those customers name 


with customers_NoOrders AS(

    select   
        c.customer_name, 'Has not placed any orders' AS status
    from 
        customers as c   
    left join 
        orders as o   
    on   
        c.customer_id = o.customer_id  

    where  
        o.order_id is null

)


select count(*)
from customers_NoOrders

-- In Total : 5 customers have not placed orders out of 15




