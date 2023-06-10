variable "project" {
  default = "data-lake-handson"
}

variable "env" {
  default = "root"
}

variable "region" {
  default = "ap-northeast-1"
}

variable "name_prefix" {
  default = "data-lake"
}

variable "pgp_key" {
  description = "IAMユーザーのパスワード生成で利用するpgpの公開鍵（base64形式）"
  type        = string
}