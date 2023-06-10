output "first_password" {
  value       = aws_iam_user_login_profile.admin.encrypted_password
  description = "IAMユーザーの暗号化されたパスワード"
}

output "secret_access" {
  value       = aws_iam_access_key.admin.encrypted_secret
  description = "IAMユーザーの暗号化されたシークレットキー"
}