locals {
  db_subnet_group_name = "${var.db_subnet_group_name == "" ? var.db_subnet_group_name : module.rds_groups.this_db_subnet_group_id}"

}
