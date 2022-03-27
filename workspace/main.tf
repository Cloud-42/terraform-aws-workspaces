resource "aws_workspaces_workspace" "main" {
  directory_id = var.directory_id
  bundle_id    = var.bundle_id
  user_name    = var.user_name

  root_volume_encryption_enabled = var.root_volume_encryption_enabled
  user_volume_encryption_enabled = var.user_volume_encryption_enabled
  volume_encryption_key          = var.volume_encryption_key

  workspace_properties {
    compute_type_name                         = var.workspace_properties_compute_type_name
    user_volume_size_gib                      = var.workspace_properties_user_volume_size_gib
    root_volume_size_gib                      = var.workspace_properties_root_volume_size_gib
    running_mode                              = var.workspace_properties_running_mode
    running_mode_auto_stop_timeout_in_minutes = var.workspace_properties_running_mode_auto_stop_timeout_in_minutes
  }

  tags = var.tags
}
