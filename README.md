**Project Name**- Hospital Management Analysis

In this project, we perform analysis over the data used in the management of a hospital. We do this using SQLite, performing joins over up to five data tables to turn this raw data into actionable insights the management team could use to better oversee how the hospital is run.  

The dataset we are working with is called "Hospital Management Dataset" and can be found on can be found on "https://www.kaggle.com/".

More specifically, it can be found via this address to reach the dataset directly from it's original source- "https://www.kaggle.com/datasets/kanakbaghel/hospital-management-dataset?resource=download&select=treatments.csv".

Alternatively, a copy of the five data tables we are working with can be found attached to this repository, within the folder "Data Tables".

To run our work, simply open the file "Hospital Management Analysis.db" via DB Browser for SQLite.

**SQL Logic Used**-

1. **SELECT** statements to return information from the table, directly by name or using an alias
2. **WHERE** clause to filter rows via specified criteria to narrow results down
3. **GROUP BY** to group results so they can be aggregated over (via aggregates such as **COUNT**, **SUM**, **AVG**)
4. Using scalar functions to adjust data results (such as **ROUND**)
5. **CASE WHEN** to adjust/filter results
6. **ORDER BY** to order resulting table in a different orientation
7. Using joins (such as **INNER JOIN** and **LEFT JOIN**) to connect up to 5 tables together in one query
8. Using **CASE WHEN** to filter multiple columns in a single SELECT statement
9. Use of **CTE**s ('**Common Table Expression**') to filter and aggregate data
10. Using **LIMIT** to filter down result table rows
11. Using **CONCAT** to append two seperate string columns into a single value 

**Some Questions Answered via Our Queries**-

1. List of all patients and their reason for visit and the presiding doctor -> Useful for management to see if they need to make changes. For example, if there is a larger amount of "Emergency" appointments, it would be wise to have the proper emergency equipment on hand.
   
3. Report of revenue earned in summer months for each hospital branch -> With summer being an active time for most people, this could be a good indicator which branch has the higher revenue, and if any one in particular should have more funding/personel.
   
5. Report of Revenue Lost by Failed Payments and the Number of Failed Payment Patients per Branch Location -> Could provide insight if there are patients who repeatedly fail to pay their bill. These customers could become known for having payment issues, and may require extra scrutiny from the billing department in the future. 
   
7. Report of Patient Count per Yearly Quarter by Branch Location -> It is always useful by many departments to know the amount of patients they have per yearly quarter. Such as if the fourth quarter sees a high number of patients, management would know to keep more personal on hand. 
   
8. Report of Doctors and their Specialty with at least 25 Years of Experience -> In the medical field, it is always useful for management to know who the most experienced personel on-hand are as well as what their field of expertise is. Alternatively, management may wish to create an incentive program and/or celebration for their long standing employees. 
   
9. And more
