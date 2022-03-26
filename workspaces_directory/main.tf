resource "aws_workspaces_directory" "main" {
  depends_on   = [aws_iam_role.main]
  directory_id = var.directory_id

  subnet_ids = var.subnets

  self_service_permissions {
    change_compute_type  = var.self_service_permissions_change_compute_type
    increase_volume_size = var.self_service_permissions_increase_volume_size
    rebuild_workspace    = var.self_service_permissions_rebuild_workspace
    restart_workspace    = var.self_service_permissions_restart_workspace
    switch_running_mode  = var.self_service_permissions_switch_running_mode
  }
}
