resource "local_file" "pet" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "This is a sample content for ${var.filename[count.index]}"
}

