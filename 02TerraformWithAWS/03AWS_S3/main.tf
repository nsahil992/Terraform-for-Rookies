resource "aws_s3_bucket" "books" {
	bucket = "ios-books"
	tags = {
	  Description = "Books for iOS Dev"
	}
}

resource "aws_s3_bucket_object" "iOS" {
	content = "/Users/Sahil/Desktop/Mastering SwiftUI.pdf"
	key = "Mastering SwiftUI.pdf"
	bucket = aws_s3_bucket.books.id
}
