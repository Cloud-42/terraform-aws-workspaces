variable "self_service_permissions_change_compute_type" {
  type        = bool
  description = "Whether WorkSpaces directory users can change the compute type (bundle) for their workspace."
  default     = false
}
variable "self_service_permissions_increase_volume_size" {
  type        = bool
  description = "Whether WorkSpaces directory users can increase the volume size of the drives on their workspace."
  default     = false
}
variable "self_service_permissions_rebuild_workspace" {
  type        = bool
  description = "Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state."
  default     = false
}
variable "self_service_permissions_restart_workspace" {
  type        = bool
  description = "Whether WorkSpaces directory users can restart their workspace."
  default     = true
}
variable "self_service_permissions_switch_running_mode" {
  type        = bool
  description = "Whether WorkSpaces directory users can switch the running mode of their workspace."
  default     = false
}
variable "subnets" {
  type        = list(string)
  description = "Subnets to use"
}
variable "directory_id" {
  type        = string
  description = "The directory identifier for registration in WorkSpaces service."
}
variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}
variable "workspace_access_properties_device_type_web" {
  description = "Indicates whether users can access their WorkSpaces through a web browser."
  type        = string
  default     = "DENY"
}
variable "workspace_access_properties_device_type_windows" {
  description = "Indicates whether users can use Windows clients to access their WorkSpaces."
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
