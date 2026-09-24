# Analyze source systems...
### Business context and Data Ownership
- Who owns the data?
- What Business Process it supports?
- System and Data documentation
- Data model and Data catalog

### Architecture and Technology
- How is data stored 
  - on prem, on cloud
  - for instead like SQL Server, Oracle, AWS, Azure
- What are the integration capabilities?
  - Which way we can extract from upstream source
  - for instead like API, Kafka, File extract, Direct Database...

### Extract and Load
- Which approach will use for extract ?
  - Incremental or Full loads?
- Data Scope and Historical Needs 
- What is the expected size of the extracts
- Are there any data volume limitations?
- How to avoid impacting the source system's performance
- If we want to access data source, what we can do
  - authentication and authorization
- 