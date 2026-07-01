SELECT patients.patient_id AS ID_Code, 
billing.bill_date AS Date, 
SUM(billing.amount) AS Total_Due
FROM billing 
INNER JOIN patients ON patients.patient_id = billing.patient_id
WHERE billing.payment_status = 'Pending' 
GROUP BY patients.patient_id 
ORDER BY ID_Code ASC;