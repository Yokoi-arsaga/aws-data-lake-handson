data "aws_iam_policy_document" "admin" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
  }
}

resource "aws_iam_policy" "admin" {
  name   = "${var.name_prefix}_admin"
  user   = aws_iam_user.admin.name
  policy = data.aws_iam_policy_document.admin
}

resource "aws_iam_user" "admin" {
  name = "${var.name_prefix}_admin"
}