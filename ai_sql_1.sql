create database AI_10K;
use AI_10K;

select * from ai_10k_tab;


-- Question 1: How have AI tool characteristics changed from early releases to recent years?
-- ** Q1-SBQ1: Growth tools per year.

select release_year, Intelligence_Type, pricing_model from ai_10k_tab;

-- 1. Count total AI tools released per year
SELECT 
    Release_Year,
    COUNT(*) AS total_tools
FROM ai_10k_tab
GROUP BY Release_Year
ORDER BY Release_Year;
-- The total amount of tools started to decrease from 2022 - 2025, but increased by 2026.
-- THe most total tools was released in 2022. 


-- 2. Q1-SBQ2: Count tools by Intelligence Type per year
SELECT 
    Release_Year,
    Intelligence_Type,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Intelligence_Type
ORDER BY Release_Year, tools_count;
-- The most tools count (peak value) was in 2022, and the Intelligence type with 23 being the most tools produced was Multimodal Generative AI.
-- Through the years, the amount of tools produced vary, going up and down.

-- Deep into, the higher tools count
SELECT 
    Release_Year,
    Intelligence_Type,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Intelligence_Type
having tools_count > 10
ORDER BY Release_Year, tools_count;
-- So in the last 3 recent years, the intellgience type with above 10 tools released that year were either Computer Vision / Generative Art, or Multimodal Generative AI. (From 2023-2026)

-- 3. Q1-SBQ4: Pricing Model trend over time
SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
ORDER BY Release_Year, tools_count;



SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
having pricing_model = 'Usage-Based'
ORDER BY Release_Year, tools_count;
-- The release of Usage-based pricing models increase from 2022 to 2025, but decreases at 2026. An average of 9 tools.

SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
having pricing_model = 'Pay-as-you-go'
ORDER BY Release_Year, tools_count;
-- The release of pay as you go pricing models increase from 2022 to 2023, but decreases from 2024-2025. And increases at 2026.


SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
having pricing_model = 'Freemium'
ORDER BY Release_Year, tools_count;
-- The release of Freemium models decrease from 2022-2025, and then increase by 2026.


SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
having pricing_model = 'Free'
ORDER BY Release_Year, tools_count;
-- Free models have increased from 2022-2025. And then decreasing from 2025-2026.


SELECT 
    Release_Year,
    Pricing_Model,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, Pricing_Model
having pricing_model = 'Subscription'
ORDER BY Release_Year, tools_count;
-- The release of subscription models decrease from 2022-2024, and increase from 2025-2026.



-- 4. Q1-SBQ3: API availability trend over time 
SELECT 
    Release_Year,
    API_availability,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, API_availability
ORDER BY Release_Year, API_availability;


SELECT 
    Release_Year,
    API_availability,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, API_availability
having API_availability = 'Enterprise Only'
ORDER BY Release_Year, API_availability;
-- From 2022 - 2023, and 2024-2067, the Enterprise Only APi availibilty decrease.



SELECT 
    Release_Year,
    API_availability,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, API_availability
having API_availability = 'Yes (GraphQL)'
ORDER BY Release_Year, API_availability;
-- From 2022, Yes (Graph QL) increased from 2022-2024, then decreased then increased.

SELECT Release_Year, API_availability, COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, API_availability
having API_availability = 'Yes (GraphQL)'
ORDER BY Release_Year, API_availability;



SELECT 
    Release_Year,
    API_availability,
    COUNT(*) AS tools_count
FROM ai_10k_tab
GROUP BY Release_Year, API_availability
having API_availability = 'No'
ORDER BY Release_Year, API_availability;
-- From 2022, no api avaibilitty tool count increased to 2023 then decreased from there.


-- ________________________________________________________________

-- Question 2: What Differentiates Paid vs Free AI Tools?
-- Counting tools by pricing model

select pricing_model, count(*) as tool_count
from ai_10k_tab
group by pricing_model;
-- Free models have the most tools released.

select * from ai_10k_tab;
-- S2SBQ2. Compare Intelligence Type by pricing
select pricing_model, count(*) as tool_count, Intelligence_Type
from ai_10k_tab
group by pricing_model, Intelligence_Type
-- having pricing_model = 'Subscription'
order by tool_count desc;
-- order by pricing_model, tool_count desc;
-- The intel type that had the most tools that were free were Computer Vision / Generative Art and Multimodal Generative AI.
-- The intel type that had the most tools that were Open Source were Multimodal Generative AI, and Computer Vision / Generative Art
-- The intel type that had the most tools that was a Subscription were Multimodal Generative AI.
-- The intellgience type was either one of these tools that were produced the most. Computer Vision Generative Art and Multimodal Generative Ai. Regardless of pricing.


select * from ai_10k_tab;

-- Q2SBQ3: Compare API availability by pricing
select pricing_model, count(*) as tool_count, API_Availability
from ai_10k_tab
group by pricing_model, API_Availability;
-- having pricing_model = 'Usage-Based';
-- The free model with the most tool count, the api was waitlisted.
-- The Open Source pricing model with the most tools had an APi (GraphQL)
-- The subscription pricing model with the most tools, the api was waitlisted.
-- The pay as you go pricing model with the most tools, the api was private beta.
-- The Usage-Based pricing model with the most tools, the APi was waitlist.



select * from ai_10k_tab;
-- Q2SBQ4: Compare average Context Window by pricing
select pricing_model, avg(Context_Window) as abg
from ai_10k_tab
group by pricing_model
order by abg desc;
-- The Usage-Based model had the highest context window. (Subscription model was the 2nd highest). 
-- The free model had the lowest context window. 

select * from ai_10k_tab;
-- 5. Compare Primary Domain by pricing
select pricing_model, primary_domain, count(*)
from ai_10k_tab
group by pricing_model, primary_domain
having primary_domain = 'Writing'
order by primary_domain, count(*) desc;

-- Out of all the AUDIo primary domain, the most highest count was the Open Source model.
-- Out of all the Automation primary doain, the most highest count was the subscription model.
-- Out of all the Coding primary domain, the highest count was the Open Source model.
-- Out of all the General/Other domain, the highest count is Usage-Based Model.
-- Out of all the Image/Design domain, the highest count is the Free Model.
-- Out of all the Video domain, the highest count is the Free Model.
-- Out of all the Writing domain, the highest count is the Free Model.

-- _________________________________________________________________
select * from ai_10k_tab;
-- Question 3:  Are larger context windows associated with certain AI types?
-- 1. Average context window by Intelligence Type

select Intelligence_Type, avg(Context_Window) as arg
from ai_10k_tab
group by Intelligence_Type
order by arg desc;

-- The intellgience type with the highest average average context window is Conversational AI.
-- The next top 2 with highest averages are Computer Vision / Generative Art, and Large Language Model (LLM).



-- 2. Minimum and maximum context window by Intelligence Type
select Intelligence_Type, min(Context_Window) as minium_value,
max(Context_Window) as maxium_value
from ai_10k_tab
group by Intelligence_Type;


-- 3; Count tools by Intelligence Type
select Intelligence_Type, count(*) as aer
from ai_10k_tab
group by Intelligence_Type
order by aer desc;
-- The inteligience type with the most tools is Multimodal Generative AI.

-- 4: Compare context window by Intelligence Type and Pricing
select Intelligence_Type, pricing_model, avg(Context_Window) as alirg
from ai_10k_tab
group by Intelligence_Type, pricing_model
order by alirg desc;
-- The intellgience type with the most tools is Conversational AI, the FREE pricing model.

-- _______________________________________________

-- Question 4: Which Domains Are Most Competitive?
-- 1. Counting tools per Primary Domain

select primary_domain, count(*) as num_of_tools
from ai_10k_tab
group by primary_domain
order by num_of_tools desc;
-- The primary domain with the most tools is General/Other.


-- 2: Pricing distribution within each domain
select primary_domain, pricing_model,  count(*) as num_of_tools
from ai_10k_tab
group by primary_domain, pricing_model
order by num_of_tools desc;
-- The primary domain that has the most tools released, is General/Other, the Usage-Based pricing model.



-- 3: Intelligence Type distribution within each domain
select primary_domain, Intelligence_Type, count(*) as num_of_tools
from ai_10k_tab
group by primary_domain, Intelligence_Type
order by num_of_tools desc;
-- The primary domain with the most tool count is General/Other, with an intel type of Multimodal Generative AI.

select * from ai_10k_tab;
-- 4: API availability within each domain
select primary_domain, API_Availability, count(*) as num_of_tools
from ai_10k_tab
group by primary_domain, API_Availability
order by num_of_tools desc;
-- The primary domain of Video with an API avaible of Yes (GraphQL), with 3 tools being the most.
-- The primary domain of audio with an api avaibility of REST, has 3 tools being the most tool count. 
-- The primary domain of writing with an api avaiblity of private beta, has 5 tools being the most tool count.
-- The primary domain of coding with an api avaiblity of REST, has 3 tools, being the most.
-- The primary domain of Research/Search with an API of private beta has 2 tools being the most.
-- The primary domain of automation with both an availibility of Enterprise Only and waitlist, has 6 tools being the most tool count.
-- The primary domain of writing with an api availibilty of private beta has 5 tools being the most tool count.
-- The primary domain OF IMAGE/design has an api avaibility of waitlist, with 16 tools being the most tool count. 
-- The primary domain of general/other has a private beta api avaibilitty, with 23 tools being the most tool count.
-- Of all these domain, the general/other domain with the privat ebeta api availibillty has the most number of tools.

-- ___________________________________________
-- Question 5: What Makes an AI Tool More Enterprise-Ready?

select pricing_model from ai_10k_tab;

-- 1. Count tools that meet enterprise criteria
SELECT COUNT(*) 
FROM ai_10k_tab
WHERE API_Availability = 'Yes (GraphQL)'
AND pricing_model IN ('Subscription', 
'Usage-Based', 'Pay-as-you-go');
-- 21 tools meet these enterprise criteria.


-- 2. Compare enterprise vs non-enterprise tools
SELECT 
    CASE 
        WHEN API_Availability = 'Yes (GraphQL)' AND pricing_model = 'Paid' THEN 'Enterprise'
        ELSE 'Non-Enterprise'
    END AS Enterprise_Flag,
    COUNT(*) AS tool_count
FROM ai_10k_tab
GROUP BY Enterprise_Flag;
-- 240 tools do NOT meet the enterprise count


-- 3. Compare average context window
SELECT 
    CASE 
        WHEN API_Availability = 'Yes (GraphQL)' AND pricing_model = 'Paid' THEN 'Enterprise'
        ELSE 'Non-Enterprise'
    END AS Enterprise_Flag,
    COUNT(*) AS tool_count
FROM ai_10k_tab
GROUP BY 
    CASE 
        WHEN API_Availability = 'Yes (GraphQL)' AND pricing_model = 'Paid' THEN 'Enterprise'
        ELSE 'Non-Enterprise'
    END;
    
    
-- 4. Compare intelligence type distribution

SELECT 
    CASE 
        WHEN API_Availability = 'Yes (GraphQL)' AND pricing_model = 'Paid' THEN 'Enterprise'
        ELSE 'Non-Enterprise'
    END AS Enterprise_Flag,
    Intelligence_Type,
    COUNT(*) AS tool_count
FROM ai_10k_tab
GROUP BY 
    CASE 
        WHEN API_Availability = 'Yes (GraphQL)' AND pricing_model = 'Paid' THEN 'Enterprise'
        ELSE 'Non-Enterprise'
    END,
    Intelligence_Type;