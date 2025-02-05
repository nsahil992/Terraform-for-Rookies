# Sets cannot have duplicate values

variable "fruits" {
	default = ["Apple", "Mango", "Banana", "Kiwi", "Watermelon"]
	type = set(string)
}
