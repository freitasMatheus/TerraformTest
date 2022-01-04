# Using terraform to create a GCP instance.
###Requirements:
* GCP Account
* [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/gcp-get-started)
### How to get credentials.json:
A GCP service account key: [Create a service account key](https://console.cloud.google.com/apis/credentials/serviceaccountkey) to enable Terraform to access your GCP account. When creating the key, use the following settings:

* Select the project you created in the previous step.
* Click "Create Service Account".
* Give it any name you like and click "Create".
* For the Role, choose "Project -> Editor", then click "Continue".
* Skip granting additional users access, and click "Done".

After you create your service account, download your service account key.

* Select your service account from the list.
* Select the "Keys" tab.
* In the drop down menu, select "Create new key".
* Leave the "Key Type" as JSON.
* Click "Create" to create the key and save the key file to your system.

###How to execute:
Create a file "credentials.json" on root directory.
Run:
* terraform init
* terraform apply

###How to destroy:
Run:
* terraform destroy