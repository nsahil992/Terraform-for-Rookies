resource "local_file" "pet" {
	filename = "/Users/Sahil/Desktop/Terraform-for-Rookies/01TerraformBasics/09ResourceAttributes/pet.txt"
	content = "My favourite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
