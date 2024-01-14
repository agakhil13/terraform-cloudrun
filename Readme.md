## Terraform code to deploy Cloudrun services into multiple regions following the best practices.
### Folder structure
- **env_config:** Contains directories based upon available environments.
  - uat: Contains `.tfvars` file for the multiple app to be created in the particular environment. Allowed variables are:
    - `project_id` [STRING]
    - `region` [STRING]
    - `image_name` [STRING]
  - prod: This is another sample environment. Similarly multiple environment directory can be created.
- **modules:** Standard directory, can include modules realted to required resources.
  - cloud_run: This module contains the terraform files related to cloud run service and container image build
- **main.tf:** This terraform file contains the code to call the cloud run module. Requires `-var-file` parameter along with the path of `.tfvar` file during the execution of `terraform plan/apply`.
- **outputs.tf:** This contains the output variable (app URL) to be displayed after the execution of code.
- **provider.tf:** This file contains the terraform provider definition along with service account credentials to access projects.
- **provider.tf:** This file contiains the information about the backend, where the state file to be stored. Backend config can be provided during the execution of `terraform init` command. Eg:
  - terraform init \-backend-config="bucket=BUCKET_NAME \
    -backend-config="prefix=PREFIX"
- **variables.tf:** This file contains the initialization of variables. Allowed variables are:
    - `project_id` [STRING]
    - `region` [STRING]
    - `image_name` [STRING]