
#====================================
# chapter 7
#====================================
resource "aws_s3_bucket" "chap7" {
  bucket = "${var.name_prefix}_chap7"
}

resource "aws_s3_object" "chap7-input" {
  bucket = aws_s3_bucket.chap7.id
  key    = "input"
  source = "files/salesdata.csv"
}

resource "aws_s3_object" "chap7-salesdata" {
  bucket = aws_s3_bucket.chap7.id
  key    = "input/salesdata.csv"
  source = "files/salesdata.csv"
}