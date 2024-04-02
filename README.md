# Crowdfunding_ETL

Contributors
Anoje Janathanan
Seethalakshmi Sreekumar

Resources
crowd funding excel file
contacts excel file

Summary 
Through the use of Python, Pandas, this project helps us to better understand the ETL pipeline. We extract, transform and load the data from the resource files. 

Creating the DataFrames
- A dataframe was created for both Categories, Subcategories, Contacts and Campaign
- Resource: crowdfunding excel file
- CSV files were created for each dataframe

Creating the Database
- With the use of pgAdmin, we created the tables, aligning them with the appropriate primary keys and foreign keys from each of the dataframes
- The ERD found in the repository gives us the big picture of the relations between the tables
- The order of the tables are important to highlight in order for the SELECT* statment to work to load the data 



