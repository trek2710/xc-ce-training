# xc-ce-training

1. Fork this repo to your githib account

2. Clone the repo to your local machine

3. Create Azure Storage Account.  Use default values except for the following items: 
    - Create new `Resource Group`
    - Enter `Storage account name`
    - For `Primary Service` select `Azure Blob Storage or Azure Data Lake Storage Gen 2 (Standard)`
    - On the `Tags` tab, create a tag as follows:  `Name` = `Owner`, `Value` = `Your email address`
    - Click `Review and Create` and then `Create`
    - After creation navigate to your Azure Storage Account and on the left menu, select `Data Storage` >> `Containers`
        - Click `+ Container` to create a new container and give it the name `terraform-git-actions` and then click `create`
    - Again, on the left menu, select `Security + networking` >> `Access Keys`
        - Click `Show` the `Key` and make a note because we will use this in step 6 below

4. Login to XC and navigate to `Administration Workspace` >> `Personal Management` >> `Credentials` >> `Add a Credential`
    - Create an `API Certificate` credential with a complex (important for this training!) password and short expiry
        - Make a note of the complex password because you will use it in step 6 below
    - Copy `.p12` file to your cloned repo folder

5. Update variables and values:
    - Rename `vars.auto.tfvars.example` to `vars.auto.tfvars` and modify values to match your deployment
    - In `provider.tf` update the values for `resource_group_name` and `storage_account_name` to match the values you used to create the Storage Account in step 3.

6. In the github UI, make sure you are logged in and then navigate to your forked copy of this repo
    -  Click the `Settings` tab >> `Security` >> `Secrets and variables` >> `Actions`
    -  Create two `New Repository Secret`s: 
        <!-- - Set `Name` = `AZURE_BACKEND_KEY` and for `Value` use the storage key you saved at the end of step 3 above -->
        - Set `Name` = `VES_P12_PASSWORD` and for `Value` use the complex password you saved in step 4 above
        - Set `Name` = `AZURE_CLIENT_ID` and for `Value` use the application (client) ID of the app registration in Azure
        - Set `Name` = `AZURE_TENANT_ID` and for `Value` use the tenant ID of Azure Active Directory where the app registration is defined.
        - Set `Name` = `AZURE_SUBSCRIPTION_ID` and for `Value` use the subscription ID where the app registration is defined.

7. 