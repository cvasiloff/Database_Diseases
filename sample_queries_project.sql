--Select diseases and list the names of their symptoms
select di.DISEASE_NAME "Disease Name", sy.SYMPTOM_NAME "Symptom Name" 
from DISEASE di, SYMPTOMS sy 
where di.SYMPTOM_ID = sy.SYMPTOM_ID;

--Selects disesases and gives number of symptoms;
select DISEASE_NAME "Disease Name", count(SYMPTOM_ID) "Number of Symptoms" 
from DISEASE
group by DISEASE_NAME;

--Selects diseases and shows how many diseases are in each country based on population
select sa.COUNTRY_NAME "Country Name", co.POPULATION_SIZE "Size of Population",
count(co.DISEASE_NAME) "Number of Diseases"
from SOUTH_AMERICA sa, COUNTRY co 
where sa.COUNTRY_CODE = co.COUNTRY_CODE 
group by sa.COUNTRY_NAME
order by co.POPULATION_SIZE desc;