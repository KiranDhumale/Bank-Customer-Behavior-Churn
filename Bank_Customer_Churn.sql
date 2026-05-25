create database Bank_Customer_Churn;
use Bank_Customer_Churn;

select * from churn;

# Q1. Show all customers with their country and balance. 
select c.customer_id , c.country , c.balance 
from churn c;   

# Q2. Display customers who have a credit card. 
select * from churn c where c.credit_card = 1;

# Q3. Count total number of customers.
select COUNT(c.customer_id ) as no_of_customers from churn c; 

# Q4. Find the average balance by country, but only include countries having more than 50 customers.
select c.country, COUNT(c.customer_id) as no_of_customers, round(AVG(c.balance),2) as avg_balance
from churn c 
group by c.country 
having COUNT(c.customer_id) > 50
order by avg_balance desc;

# Q5. Find gender-wise average credit score, but only for active members.
select c.gender, round(AVG(c.credit_score),2) as avg_cr_score
from churn c
where c.active_member = 1
group by c.gender; 

# Q6. Find number of churned customers.
select COUNT(c.churn) as no_of_churned_customer
from churn c 
where c.churn = 1;

# Q7. Find average credit score of active members. 
select round(AVG(c.credit_score),2) as avg_cr_score 
from churn c 
where c.active_member = 1;

# Q8. Find customers whose balance is higher than average balance.
select AVG(c.balance) from churn c;
select * from churn c where c.balance > 85134.9371800007; 

# Q9. Find country-wise churn count and average balance, but show only those countries where churn count is greater than 10. 
select c.country, COUNT(c.churn) as no_of_customer_churn, ROUND(AVG(c.balance)) as avg_balance
from churn c 
where c.churn = 1
group by c.country
having COUNT(c.churn) > 10
order by no_of_customer_churn desc;








