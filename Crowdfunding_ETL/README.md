# Crowdfunding_ETL
____
## Project 2 
### Resources
* crowdfunding Excel file
* contacts Excel file
### Tools
* Python
* Numpy
* Pandas
* Regex
* DRB
* Postgres
### Project
#### The data from the crowdfunding file was extracted and a Category DataFrame was created with the following columns:
* A category_id column was created with entries renamed and  sequentially ordered from "cat1" to "catn", where the n is the number of unique categories.
* A category column was created with the entries from the category titles.
#### The DataFrame was exported as "category.csv" and saved to the repository. 
The data from the crowdfunding file was extracted and a Subcategory DataFrame was created with the following changes:
*  A subcategory_id column was created with the entries renamed and sequentially ordered from "scat1" to "scatn", where the n is the number of unique categories.
*  A subcategory column was created with the entries from the subcategory titles.
#### The DataFrame was exported as "subcategory.csv" and saved to the repository. 
The data from the crowdfunding file was extracted and a campaign DataFrame was created with the following columns:
* The "cf_id" column
* The "contact_id" column
* The "company_name" column
* The "blurb" column, renamed to "description"
* The "goal" column, converted to the float data type
* The "pledged" column, converted to the float data type
* The "outcome" column
* The "backers_count" column
* The "country" column
* The "currency" column
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

#### The data from the crowdfunding file was extracted and a contacts DataFrame was created using regular epxresions.
#### The following steps were completed:

* Import the contacts.xlsx file into a DataFrame.
* Extract the "contact_id", "name", and "email" columns by using regular expressions.
* Create a new DataFrame with the extracted data.
* Convert the "contact_id" column to the integer type.
* Split each "name" column value into a first and a last name, and place each in a new column.
* Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

### Crowdfunding Database

#### The four csv files were inspected and an ERD sketch was created by using QucikDBD. The ERD was used to create the table schema for each of the CSV files with the primary and foreging keys specified. The database schema was saved as a Postgres file, crowdfunding_db_schema.sql. A Postgres database named crowfunding_db was created using the database schema. Each of the CSV files were imported into the database to verify that each of the tables had the correct data. 
