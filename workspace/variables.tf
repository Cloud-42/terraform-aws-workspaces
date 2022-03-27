variable "directory_id" {
  description = "Directory id."
  type        = string
}

variable "root_volume_encryption_enabled" {
  description = "Root volume encryption enabled."
  type        = bool
  default     = true
}

variable "user_volume_encryption_enabled" {
  description = "Volume encryption enabled."
  type        = bool
  default     = true
}

variable "volume_encryption_key" {
  description = "key to use for volume encryption."
  type        = string
  default     = "alias/aws/workspaces"
  sensitive   = true
}

variable "user_name" {
  description = "Username to grant access."
  type        = string
}

variable "bundle_id" {
  description = "Bundle id."
  type        = string
  default     = "wsb-gk1wpk43z"
}

variable "workspace_properties_compute_type_name" {
  description = "Compute type."
  type        = string
  default     = "VALUE"
}

variable "workspace_properties_user_volume_size_gib" {
  description = "User volume size."
  type        = number
  default     = 10
}

variable "workspace_properties_root_volume_size_gib" {
  description = "User volume size."
  type        = number
  default     = 80
}

variable "workspace_properties_running_mode" {
  description = "Workspace running mode.AUTO_STOP or ALWAYS_ON."
  type        = string
  default     = "AUTO_STOP"
}

variable "workspace_properties_running_mode_auto_stop_timeout_in_minutes" {
  description = "The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  type        = number
  default     = 120
}

variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}

variable "workspace_access_properties_device_type_web" {
  description = "Whether users can access their WorkSpaces through a web browser."
  type        = string
  default     = "ALLOW"
}

variable "workspace_access_properties_device_type_windows" {
  description = "Indicates whether users can use Windows clients to access their WorkSpaces.."
  type        = string
  default     = "ALLOW"
}

variable "workspace_access_properties_device_type_linux" {
  description = "Indicates whether users can use Linux clients to access their WorkSpaces."
  type        = string
  default     = "ALLOW"
}

variable "workspace_access_properties_device_type_osx" {
  description = "Indicates whether users can use macOS clients to access their WorkSpaces."
  type        = string
  default     = "ALLOW"
}
