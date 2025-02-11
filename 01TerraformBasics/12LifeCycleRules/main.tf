resource "local_file" "pet" {
  filename = "/Users/Sahil/Desktop/Terraform-for-Rookies/01TerraformBasics/12LifeCycleRules/pet.txt"
  content = "We love pets!"
  file_permission = "0700"

  lifecycle {
    create_before_destroy = true
  }
}

# prevent_destroy
