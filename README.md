## Liam Hasandjekaj

# NYPD 2024 Year-to-Date Arrest Data Pipeline Project

## Project Overview

The aim of this project is to develop a data pipeline that extracts data from an external source, performs the necessary data transformations, and loads the data into a data warehouse for analysis. The relevant dataset is related to NYPD arrests within the first quarter of 2024. Through this data pipeline I am hoping to be able to analyze the relevant dataset, find interesting patterns, and construct useful visualizations using a business intelligence software.

## Data Source

The data for this project comes from NYC OpenData. It consists of every arrest made by the NYPD within NYC from 1/1/2024 to 3/31/2024. This data is manually extracted every quarter and reviewed by the Office of Management Analysis and Planning. The records in this dataset represent individual arrests and include information relating to the perpetrators' demographics, the location of the arrest, and the nature of the offense. For more information on the individual data fields, please see the docs folder. The original data dictionary provided from NYC Open Data as well as my own data dictionary / data mapping can be found there. CSV files containing the relevant dimensional tables can also be found in the docs folder.

[Data Source Link](https://data.cityofnewyork.us/Public-Safety/NYPD-Arrest-Data-Year-to-Date-/uip8-fykc/about_data)

## Visualizations

In case the link above is not working, I have also provided the Tableau workbook and screenshots of all the visualizations in the docs folder.

[Tableau Cloud Link](https://prod-useast-b.online.tableau.com/#/site/liamhasandjekaj895fd24ab0/workbooks/1568901?:origin=card_share_link)

## Tools, Methods, Storage

For this project I utilized Dbschema, a database schema design tool, in order to develop a dimensional model and set up the necessary tables, attributes, and relationships. A snowflake schema was used for this project. It is defined by the arrest, location, and date dimensions with a facts dimensional table in the center connecting them all. I wrote the relevant extract, transform, and load functions in Google Collab and Visual Studio Code. The data for this project was stored in Azure Blob, Microsoft’s scalable cloud storage platform. The database used was postgreSQL. For the pipeline methodology I utilized extract, transform, load,  method (ETL) given the relatively small size of the dataset. PostgreSQL was used as the database. Finally, Tableau was used for generating visualizations.

Database Management: DbSchema, DataGrip, PostgreSQL\
Programming: Python, SQL\
Development & Data Engineering: Visual Studio Code\
Cloud Storage: Azure Blob\
Data Visualization and Analysis: Tableau
