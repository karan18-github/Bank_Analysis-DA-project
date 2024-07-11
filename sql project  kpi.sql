select * from finance_a;
# KPI_1 - Year wise loan amount Stats


select year(issue_d) as years ,sum(loan_amnt) as loan_amount from finance_a group by  years ;

#KPI_2 -Grade and sub grade wise revol_bal

select * from finance_a;
select * from finance2;
select f1.grade as grades ,f1.sub_grade as subgrade,sum(revol_bal)  as revol_balance from finance_a as f1 inner join finance2 as f2 on f1.id=f2.id
group by grade ,subgrade order by grade,subgrade;

#kpi_3 -Total Payment for Verified Status Vs Total Payment for Non Verified Status

select * from finance_a;
select * from finance2;
select sum(total_pymnt) as total_payment , verification_status from finance_a as f1 inner join finance2 as f2 on f1.id=f2.id
group by verification_status;

#KPI_4 -State wise and last_credit_pull_d wise loan status
select addr_state,last_credit_pull_d,loan_status from finance_a as f1 inner join finance2 as f2 on  f1.id=f2.id;

#KPI_5 - Home ownership Vs last payment date stats
select home_ownership , last_pymnt_d from finance_a as f1 inner join finance2 as f2 on f1.id = f2.id 
group by home_ownership,last_pymnt_d order by home_ownership;




