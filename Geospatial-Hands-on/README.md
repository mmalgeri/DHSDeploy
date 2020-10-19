# Using Geospatial Data in MarkLogic
In this tutorial you will learn how to search your database's documents for geospatial information.

## Setup
1.	Install MarkLogic 9 from http://developer.marklogic.com/products.
2.	Go to https://github.com/marklogicuniversity/geospatial.
3.	Download the `ML9_Geospatial_Search` workspace and import it to Query Console.
4.	Follow along with the demo by running the following query tabs:
    1. `insert documents`
    2. `create geo indexes`
    3. `search points`
    4. `search regions`
5.	Go to https://github.com/aroach337/ML-region-search.
6.	Clone the repository to a local directory.
7.	Navigate to the local directory and run `setup.sh --host=localhost` to configure the database and app-servers.
8.	Go to the app-server and change the database to use the **Documents** Database.
9.	Open the search.xqy file and change every occurence of `//foo/region` to `/location/ctsRegion`
    at line 26 and 28. This way the search will match our **Documents** database settings and documents’ layout.
10.	(Optionally) Open the index.html and change the initialize function at line 158-162 to change
    the `lat` and `lng` values as well as the `zoom` factor so the map shows western Europe.
    Use these values `lat:45`, `lng:0`, `zoom: 5` .
11.	Navigate to http://localhost:3333/ (substituting your hostname and port number if needed).
12.	Draw a rectangle over Europe, select the operator `within` from the dropdown and click the search button.
13.	You can draw more shapes or input other coordinate values and test with different operators
14.	You can load more documents and do more searches.

##Testing and Troubleshooting
If you would like to test the search functionality of the Region Search App before doing any changes directly in the application search.xqy file, simply copy and paste the search.xqy code into a Query Console tab
or use the existing query tab `REGION SEARCH APP` and test it.
