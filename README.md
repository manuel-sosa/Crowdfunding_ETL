<p align="center">
  <img width="600" height="400" src="https://github.com/manuel-sosa/Crowdfunding_ETL/blob/main/image.png">
</p>

# Crowdfunding_ETL: Project 2: ETL mini project :bar_chart:

## Purpose

The ETL mini project aims to provide practical experience in building an ETL (Extract, Transform, Load) pipeline, which is essential for data integration processes. Here are its key purposes:

**A. Collaboration and Practice.**

**B. Data Transformation.**

**C. Data Storage and Modeling.**

**D. Database Skills.**


The mini project is divided into the following **subsections**:  

1. [Create the Category and Subcategory DataFrames](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main?tab=readme-ov-file#1-create-the-category-and-subcategory-dataframes)
2. [Create the Campaign DataFrame](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main?tab=readme-ov-file#2-create-the-campaign-dataframe)
3. [Create the Contacts DataFrame](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main?tab=readme-ov-file#3-create-the-contacts-dataframe)
4. [Create the Crowdfunding Database](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main?tab=readme-ov-file#4-create-the-crowdfunding-database)
5. [Documents Created and Updated](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main?tab=readme-ov-file#5-documents-created-and-updated)

## 1. Create the Category and Subcategory DataFrames

This process involves the following items  
- Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

    -   A "category_id" column that has entries going sequentially from    "cat1" to "catn", where n is the number of unique categories

    -   A "category" column that contains only the category titles
    -   Export the category DataFrame as category.csv and save it to your GitHub repository.

- Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

    - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

    - A "subcategory" column that contains only the subcategory titles
        --Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

## **2. Create the Campaign DataFrame**  

This involves the following steps:  
- Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

    - The "cf_id" column

    - The "contact_id" column

    - The "company_name" column

    - The "blurb" column, renamed to "description"

    - The "goal" column, converted to the float data type

    - The "pledged" column, converted to the float data type

    - The "outcome" column

    - The "backers_count" column

    - The "country" column

    - The "currency" column

    - The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

    - The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

    - The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

    - The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
- Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.  

## **3. Create the Contacts DataFrame** 


The team chose the following option for analysis and below are the steps taken for the analysis:  

- **Option 1:** Use Python dictionary methods  
    - Import the contacts.xlsx file into a DataFrame.   
    - Iterate through the DataFrame, converting each row to a dictionary. 
    - Iterate through each dictionary, doing the following:    
        - Extract the dictionary values from the keys by using a Python list comprehension.  
        - Add the values for each row to a new list.

    - Create a new DataFrame that contains the extracted data.  
    - Split each "name" column value into a first and last name, and place each in a new column.
    - Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.  

## **4. Create the Crowdfunding Database**  

This involves the following steps:  
-   Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

-   Use the information from the ERD to create a table schema for each CSV file.
-   Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

-   Create a new Postgres database, named crowdfunding_db.

-   Using the database schema, create the tables in the correct order to handle the foreign keys.

-   Verify the table creation by running a SELECT statement for each table.

-   Import each CSV file into its corresponding SQL table.

-   Verify that each table has the correct data by running a SELECT statement for each.

## **5. Documents Created and Updated:**
 
- **ETL_Mini_Project_Starter_Code-LJepkorir_MSosa_COMBINED.ipynb** [(Link)](https://github.com/manuel-sosa/Crowdfunding_ETL/blob/main/ETL_Mini_Project_Starter_Code-LJepkorir_MSosa_COMBINED.ipynb)
    - contains the combined code of the analysis we did individually  

- **Resources Folder** contains the following new documents [(Link)](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main/Resources):
    - **campaign.csv** = output from the campaign dataframe
    - **category.csv** = output from the category dataframe
    - **subcategory.csv** = output from the subcategory dataframe
    - **contacts.csv** = output from the contacts dataframe


- **Database Folder** contains the following new documents [(Link)](https://github.com/manuel-sosa/Crowdfunding_ETL/tree/main/Database): 
    - **crowdfunding_db_schema.sql** = queries for creating tables and showing data in the queries
    - **QuickDBD-crowdfunding_db** = ERD Diagram created
    - **Database Data** = Database Queries and Database Structures