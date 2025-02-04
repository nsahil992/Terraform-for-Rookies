resource local_file my-pet {
	filename = "/Users/Sahil/Desktop/Terraform-for-Rookies/01TerraformBasics/05Maps/pets.txt"
	content = var.file-content["statement2"]
}
