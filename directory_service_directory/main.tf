resource "aws_directory_service_directory" "main" {
  name     = var.directory_name
  password = var.directory_pass
  type     = var.directory_type
  size     = var.directory_size
  edition  = var.directory_edition


  dynamic "vpc_settings" {
    for_each = [var.vpc_info]
    content {
      vpc_id     = var.vpc_info.vpc_id
      subnet_ids = var.vpc_info.subnet_ids
    }
  }

  tags = var.tags
}
