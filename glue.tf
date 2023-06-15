resource "aws_glue_catalog_database" "chap7" {
  name = "chap7"
}

resource "aws_glue_crawler" "chap7" {
  database_name = aws_glue_catalog_database.chap7.name
  name          = "chap7-crawler"
  role          = aws_iam_role.chap7.arn

  s3_target {
    path = "s3://${aws_s3_bucket.chap7.bucket}/${aws_s3_object.chap7-input.key}"
  }
}