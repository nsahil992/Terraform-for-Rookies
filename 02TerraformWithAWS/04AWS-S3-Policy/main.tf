resource "aws_s3_bucket" "ios-books-bucket1" {
	bucket = "ios-books"
	tags = {
	  Description = "iOS Development"
	}
}

resource "aws_s3_bucket_object" "book-1" {
	content = "/Users/Sahil/Desktop/SHLResumeNP.pdf"
  key = "SHLResumeNP.pdf"
  bucket = ios-books.ios-books-bucket1.id
}

data "aws_iam_group" "ios-bucket-group" {
  group_name = "ios"
}
