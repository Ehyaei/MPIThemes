# Open-Academic-Graph

Open Academic Graph (OAG) is a large knowledge graph unifying
[Microsoft Academic Graph (MAG)](https://academic.microsoft.com/) and [AMiner](https://aminer.org/).
Two projects' major purpose is to develop a heterogeneous graph comprising scientific publication records and citation linkages between those articles, as well as authors, institutions, journals, conferences, and fields of study. 
After unifying the two datasets, the result can be found [here](https://www.aminer.cn/oag-2-1).

The dataset contains many tables, as:

- authors: includes some information about the authors, such as their names, affiliations, postitions, and a summary of their publications.

- affiliations: contains the name of affiliation, type, and location by latitude and longitude.

- venues: shows information about where work was published.

- papers: this table has many fields and contains publication metadata such as title, publisher, issn, and...

- links: contains id tables for joining each table from MAG to Aminer.

If you have an Azure account, Microsoft has automated uploads of new versions of MAG to Azure Storage.

# Exploration of data

In this project, we can try to find new insights from the academic publication world!