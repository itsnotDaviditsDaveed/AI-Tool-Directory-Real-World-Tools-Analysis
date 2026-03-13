
# AI Tool Directory, Real World Tools Analysis





I got this dataset from Kaggle, and because it is about AI in 2026, its an important topic and concept to learn.









### What Kind of Information Does This Dataset Contain?



Here are the columns of the dataset so we can understand the data.





* AI\_Name --> name of the AI tool/program
* Developer --> company, startup or individual creator of the program.
* Release Year --> The year the tool was first launched.
* Intelligence Type --> Technical classification of the AI model (Generative, Agentic, Multimodel)
* Primary\_Domain --> The main industry or area of application, such as Coding, Video, or Automation.
* Key Functionality --> a description summary of features the tools performs.
* Pricing Model --> How much the structure of the tool costs, (whether free, freemium, or paid.)
* API availability --> whether the tool offers an API for third party
* Context Window --> max amount of data
* Accessibility --> information on how the tool is accessed.
* Website URL --> and this.









The only columns we will need is AI\_Name,Developer,Realease year,Intellgience ype, Key Functioncaly,Pricing Model, and maybe other stuff. But let's make questions with these first.









## Questions We Can ask:



* Question 1: How have AI tool characteristics changed from early releases to recent years?

 	\*\* Q1-SBQ1: Growth tools per year.

 	\*\* Q1-SBQ2: Shift from Generative --> Multimodal --> Agnetic

 	\*\* Q1-SBQ3: Increase in API avalibillity ver time

 	\*\* Q1-SBQ4: Changes in pricing models over time.



* Question 2: What Differentiates Paid vs Free AI Tools?



 	Compare paid vs free AI tools based on these

 	\*\* Q2-SBQ1: Window Sizes

 	\*\* Q2-SBQ2: API availibillity

 	\*\* Q2-SBQ3" Intellgience type

 	\*\* Q2-SBQ4: Domain specialization.





* Question 3: Are Larger Context Windows Associated with Certain AI Types?

 	\*\* Q3-SBQ1: Do multimodal or agentic systems tend to have larger context windows?







* Question 4: Which Domains are most competitive?

 	\*\* Tool count per domain

 	\*\* Pricing distribution per domain

 	\*\* Developer concentratiokn per domain.





* Question 5: What makes an AI Tool More Enterprise-Ready?



 	\*\* Enterprise ready could be defined as:

 		\* Has an API

 		\* Paid model

 		\* Large context window

 		\* Released recently

 	\*\* Q5-SBQ1: What features commonly appear in enterprise-focused AI tools?











## Answers/Notes I Got From Data.



### Question 1: **How have AI tool characteristics changed from early releases to recent years?**



* The total amount of tools started to decrease from 2022 - 2025, but increased by 2026.
* The most total tools was released in 2022.
* The most tools count (peak value) was in 2022, and the Intelligence type with 23 being the most tools produced was Multimodal Generative AI. Through the years, the amount of tools produced vary, going up and down.
* So in the last 3 recent years, the intelligence type with above 10 tools released that year were either Computer Vision / Generative Art, or Multimodal Generative AI. (From 2023-2026)
* The release of Usage-based pricing models increase from 2022 to 2025, but decreases at 2026. An average of 9 tools.
* The release of pay as you go pricing models increase from 2022 to 2023, but decreases from 2024-2025. And increases at 2026.
* The release of Freemium models decrease from 2022-2025, and then increase by 2026.
* Free models have increased from 2022-2025. And then decreasing from 2025-2026.
* The release of subscription models decrease from 2022-2024, and increase from 2025-2026.
* From 2022 - 2023, and 2024-2067, the Enterprise Only APi availibilty decrease.
* From 2022, Yes (Graph QL) increased from 2022-2024, then decreased then increased.
* From 2022, no api avaibilitty tool count increased to 2023 then decreased from there.











### Question 2: **What Differentiates Paid vs Free AI Tools?**



* Free models have the most tools released.



**Comparison of Intelligence Type by pricing:**

* The intel type that had the most tools that were free were Computer Vision / Generative Art and Multimodal Generative AI.
* The intel type that had the most tools that were Open Source were Multimodal Generative AI, and Computer Vision / Generative Art
* The intel type that had the most tools that was a Subscription were Multimodal Generative AI.
* The intelligence type was either one of these tools that were produced the most. Computer Vision Generative Art and Multimodal Generative Ai. Regardless of pricing.







**Comparison API availability by pricing:**

* The free model with the most tool count, the API was waitlisted.
* The Open Source pricing model with the most tools had an API (GraphQL)
* The subscription pricing model with the most tools, the API was waitlisted.
* The pay as you go pricing model with the most tools, the API was private beta.
* The Usage-Based pricing model with the most tools, the API was waitlist.





**Comparison of average Context Window by pricing:**

* The Usage-Based model had the highest context window. (Subscription model was the 2nd highest).
* The free model had the lowest context window.





**Compare Primary Domain by pricing:**

* Out of all the **Audio** primary domain, the most highest count was the **Open Source model**.
* Out of all the **Automation** primary domain, the most highest count was the **subscription model**.
* Out of all the **Coding** primary domain, the highest count was the **Open Source model**.
* Out of all the **General/Other** domain, the highest count is **Usage-Based Model**.
* Out of all the **Image/Design** domain, the highest count is the **Free Model**.
* Out of all the **Video** domain, the highest count is the **Free Model**.
* Out of all the **Writing** domain, the highest count is the **Free Model**.







### Question 3:  Are larger context windows associated with certain AI types?



**Average context window by Intelligence Type:**

* The intelligence type with the highest average average context window is **Conversational AI**.
* The next top 2 with highest averages are **Computer Vision / Generative Art, and Large Language Model (LLM)**.









**Count tools by Intelligence Type:**



* The intelligence type with the most tools is Multimodal Generative AI.





**Compare context window by Intelligence Type and Pricing:**



* The intelligence type with the most tools is Conversational AI, the FREE pricing model.











### Question 4: Which Domains Are Most Competitive?





* &nbsp;The primary domain with the most tools is General/Other.
* &nbsp;The primary domain that has the most tools released, is General/Other, the Usage-Based pricing model.





**Intelligence Type distribution within each domain:** 

* The primary domain with the most tool count is General/Other, with an intel type of Multimodal Generative AI.





**API availability within each domain:**

* The primary domain of Video with an API availability of Yes (GraphQL), with 3 tools being the most.
* The primary domain of audio with an API availability of REST, has 3 tools being the most tool count. 
* The primary domain of writing with an API availability of private beta, has 5 tools being the most tool count.
* The primary domain of coding with an API availability of REST, has 3 tools, being the most.
* The primary domain of Research/Search with an API availability of private beta has 2 tools being the most.
* The primary domain of automation with both an availability of Enterprise Only and waitlist, has 6 tools being the most tool count.
* The primary domain of writing with an API availability of private beta has 5 tools being the most tool count.
* The primary domain OF IMAGE/design has an API availability of waitlist, with 16 tools being the most tool count. 
* The primary domain of general/other has a private beta API availability, with 23 tools being the most tool count.
* Of all these domain, the general/other domain with the private beta API availability has the most number of tools.









#### Question 5: What Makes an AI Tool More Enterprise-Ready?

