variable "person" {
	type = object({
	  name = string
	  age = number
	  city = string
})

default = {
	name = "Gonzalez"
	age = 40
	city = "Malibu"
	}
}
		
