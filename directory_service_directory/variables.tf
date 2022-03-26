variable "vpc_settings" {
  type        = any
  description = "VPC settings"
  default     = null
}
variable "directory_name" {
  type        = string
  description = "The fully qualified name for the directory"
}
variable "directory_pass" {
  type        = string
  description = "The password for the directory administrator or connector user"
}
variable "directory_type" {
  type        = string
  description = "The directory type (SimpleAD, ADConnector or MicrosoftAD)"
  default     = "SimpleAD"
}
variable "directory_size" {
  type        = string
  description = "The size of the directory - Small or Large.Required for SimpleAD and ADConnector."
  default     = "Small"
}
variable "directory_edition" {
  type        = string
  description = "The MicrosoftAD edition (Standard or Enterprise). Defaults to Enterprise (applies to MicrosoftAD type only)."
  default     = null
}
