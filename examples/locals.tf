locals {
  tags = {
    ManagedBy   = "Terraform"
    Environment = "production"
    ManagedBy   = "Terraform"
  }
  workspaces = [
    {
      name                                                           = "dave"
      user_name                                                      = "Admin"
      workspace_properties_compute_type_name                         = "VALUE"
      workspace_properties_running_mode_auto_stop_timeout_in_minutes = "120"
    },
    {
      name                                                           = "tom"
      user_name                                                      = "tom"
      workspace_properties_compute_type_name                         = "PERFORMANCE"
      workspace_properties_running_mode_auto_stop_timeout_in_minutes = "2880"
    },
    {
      name                                                           = "lucy"
      user_name                                                      = "lucy"
      workspace_properties_compute_type_name                         = "PERFORMANCE"
      workspace_properties_running_mode_auto_stop_timeout_in_minutes = "2880"
    }
  ]
}
