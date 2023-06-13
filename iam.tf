data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
  }
}

resource "aws_iam_policy" "admin" {
  name   = "${var.name_prefix}_admin"
  policy = data.aws_iam_policy_document.assume_role
}

resource "aws_iam_user" "admin" {
  name = "${var.name_prefix}_admin"
}

resource "aws_iam_user_policy_attachment" "admin" {
  user       = aws_iam_user.admin.name
  policy_arn = aws_iam_policy.admin.arn
}

resource "aws_iam_user_login_profile" "admin" {
  user                    = aws_iam_user.admin.name
  pgp_key                 = var.pgp_key
  password_reset_required = false
  depends_on              = [aws_iam_user.admin]
}

resource "aws_iam_access_key" "admin" {
  user    = aws_iam_user.admin.name
  pgp_key = var.pgp_key
}

#====================================
# chapter 7
#====================================
resource "aws_iam_role" "chap7" {
  name = "${var.name_prefix}_chap7"
}