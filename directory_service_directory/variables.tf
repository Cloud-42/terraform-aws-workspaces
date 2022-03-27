variable "vpc_id" {
  type        = string
  description = "VPC id"
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = "VPC id"
  default     = null
}
variable "vpc_info" {
  type        = any
  description = "vpc_info is required for type = SimpleAD or MicrosoftAD"
  default     = {}
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
  default     = "MicrosoftAD"
}
variable "directory_size" {
  type        = string
  description = "The size of the directory - Small or Large.Required for SimpleAD and ADConnector."
  default     = "Small"
}
variable "directory_edition" {
  type        = string
  description = "The MicrosoftAD edition (Standard or Enterprise). Defaults to Enterprise (applies to MicrosoftAD type only)."
  default     = "Standard"
}
