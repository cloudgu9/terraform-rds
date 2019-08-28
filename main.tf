
module "postgresql" {
  source                              = "git::https://bitbucket.anthem.com/scm/acscb/terraform-aws-postgresql-internal.git"

  aws_account                         = "${var.aws_account}"
  aws_region                          = "${var.aws_region}"
  profile                             = "${var.profile}"

  identifier                          = "${var.identifier}"
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"
  storage_encrypted                   = "${var.storage_encrypted}"
  kms_key_id                          = "${var.kms_key_id}"
  license_model                       = "${var.license_model}"
  name                                = "${var.name}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  port                                = "${var.port}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  multi_az                            = "${var.multi_az}"
  backup_retention_period             = "${var.backup_retention_period}"
  backup_window                       = "${var.backup_window}"

  tags                                = "${merge(var.tags,module.mandatorytags.tags)}"
}
