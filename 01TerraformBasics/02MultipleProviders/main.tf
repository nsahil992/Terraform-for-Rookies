resource "local_file" "pets" {
  filename = "/Users/Sahil/Desktop/Terraform-for-Rookies/01TerraformBasics/02MultipleProviders/pets.txt"
  content = "I love Dogs"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
