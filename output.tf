output "instance_id" {
  description = "ID of the instance"
  value       = "${module.postgresql.instance_id}"
}
output "instance_address" {
  value       = "${module.postgresql.instance_address}"
  description = "Address of the instance"
}
output "instance_endpoint" {
  value       = "${module.postgresql.instance_endpoint}"
  description = "DNS Endpoint of the instance"
}
output "instance_arn" {
  value       = "${module.postgresql.instance_arn}"
  description = "The ARN of the RDS instance"
}
output "instance_status" {
  value       = "${module.postgresql.instance_status}"
  description = "The RDS instance status"

}
output "instance_port" {
  value       = "${module.postgresql.instance_port}"
  description = "The database port"
}

output "instance_maintenance_window" {
  value       = "${module.postgresql.instance_maintenance_window}"
  description = "The RDS instance maintenance window time"
}
output "instance_backup" {
  value       = "${module.postgresql.instance_backup}"
  description = "The RDS instance backup window time"
}
output "instance_rentention" {
  value       = "${module.postgresql.instance_rentention}"
  description = "The RDS instance retention period"
}


output "tags" {
  value       = "${module.mandatorytags.tags}"
  description = "List of tags"
}