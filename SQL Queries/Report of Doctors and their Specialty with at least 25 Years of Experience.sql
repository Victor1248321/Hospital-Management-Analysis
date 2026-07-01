SELECT CONCAT(doctors.first_name, ' ', doctors.last_name) AS Doctor, 
doctors.specialization 
FROM doctors
INNER JOIN appointments ON appointments.doctor_id = doctors.doctor_id 
INNER JOIN patients ON patients.patient_id = appointments.patient_id
WHERE doctors.years_experience >= 25
GROUP BY doctors.doctor_id;