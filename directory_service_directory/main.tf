resource "aws_directory_service_directory" "main" {
  name     = var.directory_name
  password = var.directory_pass
  type     = var.directory_type
  size     = var.directory_size
  edition  = var.directory_edition

  dynamic "vpc_settings" {
    for_each = var.vpc_settings
    content {
      vpc_id     = vpc_settings.value.vpc_id
      subnet_ids = vpc_settings.value.subnet_ids
    }
  }
}
