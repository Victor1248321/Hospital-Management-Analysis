SELECT CONCAT(patients.first_name, ' ', patients.last_name) AS Patient, 
treatments.treatment_type AS Treatment, 
treatments.treatment_date AS Date,
treatments.description AS Treatment_Description
FROM treatments
INNER JOIN appointments ON appointments.appointment_id = treatments.appointment_id
INNER JOIN patients ON patients.patient_id = appointments.patient_id
INNER JOIN billing ON billing.patient_id = patients.patient_id
WHERE treatments.treatment_date LIKE '2023-08%'
AND billing.payment_status = 'Pending' 
GROUP BY Patient, treatments.treatment_type, treatments.treatment_date, treatments.description
ORDER BY treatments.treatment_date DESC
LIMIT 5; 