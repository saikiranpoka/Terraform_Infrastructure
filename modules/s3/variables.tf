variable "bucket_name" {
  type = string
}

variable "kms_key_arn" {
  type = string
}

variable "force_destroy" {
  type    = bool
  default = false
}

variable "transition_to_ia_days" {
  type    = number
  default = 30
}

variable "transition_to_glacier_days" {
  type    = number
  default = 90
}

variable "noncurrent_version_glacier_days" {
  type    = number
  default = 30
}

variable "tags" {
  type    = map(string)
  default = {}
}