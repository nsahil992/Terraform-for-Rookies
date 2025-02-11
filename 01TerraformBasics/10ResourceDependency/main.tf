resource "local_file" "pet" {
  filename = "/Users/Sahil/Desktop/Terraform-for-Rookies/01TerraformBasics/10ResourceDependency/pet.txt"
  content = "I love Mr.Cat"
  depends_on = [
	random_pet.my-pet
]
}

resource "random_pet" "my-pet" {
  prefix = "Mr"
  separator = "."
  length = "1"
}
