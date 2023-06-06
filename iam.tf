data "aws_iam_policy_document" "data_lake_admin" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
  }
}

resource "aws_iam_policy" "data_lake_admin" {
  name   = "data_lake_admin"
  policy = data.aws_iam_policy_document.data_lake_admin
}

resource "aws_iam_user" "data_lake_admin" {

}