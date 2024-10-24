locals {
  tags = {
  "Terraform"     = "true"
  "DeployedBy"    = "Cloud Engineering Team",
  "ServiceClass"  = "Gold",
  "ServiceName"   = "ADO Self Hosted Agent",
  "OpsCommitment" = "Core Hours"
  "BusinessUnit"  = "GIS",
  "Cost Centre"   = "",
  "Env"           = "Sandbox",
  "Environment"   = "Sandbox",
  "Owner"         = "Christine.Oligmueller@Computacenter.com",
  "Approver"      = "Please Enter Approver",
  "CostCenter"    = "TBC",
  "CreatedBy"     = "Please Enter CreatedBy",
  "Criticality"   = "CAT C",
  "DR"            = "N/A",
  "CreationDate"    = "DD-MM-YYYY",
  }

  region = var.location 
  source_image_reference = {
    publisher = "canonical"                            # Replace with your custom image publisher
    offer     = "0001-com-ubuntu-server-jammy"         # Replace with your custom image offer
    sku       = "22_04-lts-gen2"                       # Replace with your custom image SKU
    version   = "latest"                               # Replace with the version of your custom image
  }

  user_data_base64 = base64encode(data.local_file.cloud_init.content)

}
