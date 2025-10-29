select * from bank_loan_data

select
	loan_status,
	count(id) as tota_loan_application,
	sum(total_payment) as total_amount_received,
	sum(loan_amount) as total_funded_amount,
	AVG(int_rate * 100) as interest_rate,
	avg(dti * 100) as DTI
from
	bank_loan_data
group by
	loan_status


select
	loan_status,
	sum(total_payment) as total_amount_received,
	sum(loan_amount) as total_funded_amount
from
	bank_loan_data
where
	MONTH(issue_date) = 12
group by
	loan_status

	

select 
	MONTH(issue_date) as month_number,
	DATENAME(month, issue_date) as month_name,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from 
	bank_loan_data
group by
	MONTH(issue_date), DATENAME(month, issue_date)
order by
	MONTH(issue_date)



select 
	address_state,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from
	bank_loan_data
group by
	address_state
order by
	sum(total_payment) desc



select 
	term,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from
	bank_loan_data
group by
	term
order by
	term


select 
	emp_length,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from
	bank_loan_data
group by
	emp_length
order by
	emp_length


select 
	purpose,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from
	bank_loan_data
group by
	purpose
order by
	count(id) desc


select 
	home_ownership,
	count(id) as tota_loan_application,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_amount_received
from
	bank_loan_data
group by
	home_ownership
order by
	count(id) desc