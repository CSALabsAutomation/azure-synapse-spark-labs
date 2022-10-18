# Azure Synapse Lab

The objective of this lab is to provide participants solid understanding and experience of developing applications using Azure Synapse. The intended audience for the lab is architects and developers who design, build, and troubleshoot Azure Synapse solutions that meet business and technical requirements. The following are the main topics covered in the lab.

1. Data ingestion and transformation using Synapse pipelines and data flows
2. Data Ingestion and transformation using Synapse Spark
3. Analyze data using Synapse Dedicated Pool
4. Analyze data using Serverless pools
5. Data warehouse Optimization

This is a deployment accelerator based on the reference architecture described in the Azure Architecture Center article [Analytics end-to-end with Azure Synapse](https://docs.microsoft.com/azure/architecture/example-scenario/dataplate2e/data-platform-end-to-end). This deployment accelerator aims to automate not only the deployment of the services covered by the reference architecture, but also to fully automate the configuration and permissions required for the services to work together. The deployed architecture enables the end-to-end analytics platform capable of handling the most common uses cases for most organizations.

### Azure Services Provisioned

The scope of this deployment accelerator is illustrated in the diagram below.

![Achitecture Components](./steps/01_data-ingestion-and-transformation-using-synapse-pipelines-and-dataflows/assets/synapse.JPG)


#### Synapse Analytics

Name                           | Type                      | Default Pricing Tier                                                                            | Conditional  |Notes
-------------------------------|---------------------------|-------------------------------------------------------------------------------------------------|--------------|------------
azsynapsewks*suffix*           |Synapse workspace          | [N/A](https://azure.microsoft.com/pricing/details/synapse-analytics/#pricing)                   | No           | Default workspace deployment doesn't incur costs.
SparkCluster                   |Apache Spark pool          | [Small (3 nodes)](https://azure.microsoft.com/pricing/details/synapse-analytics/#pricing)       | Yes          |
EnterpriseDW                   |Synapse SQL pool           | [DW100](https://azure.microsoft.com/pricing/details/synapse-analytics/#pricing)                 | Yes          |
azwksdatalake*suffix*          |Storage account            | [Standard LRS](https://azure.microsoft.com/pricing/details/storage/blobs/)                      | No           |
azrawdatalake*suffix*          |Storage account            | [Standard GRS](https://azure.microsoft.com/pricing/details/storage/blobs/)                      | No           |
azcurateddatalake*suffix*      |Storage account            | [Standard GRS](https://azure.microsoft.com/pricing/details/storage/blobs/)                      | No           |
SynapsePostDeploymentScript    |Deployment Script          | N/A                                                                                             | No           | 

