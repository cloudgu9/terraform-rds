
module "postgresql" {
  source                              = "git::https://bitbucket.anthem.com/scm/acscb/terraform-aws-postgresql-internal.git"

  aws_account                         = "${var.aws_account}"
  aws_region                          = "${var.aws_region}"
  profile                             = "${var.profile}"

  identifier                          = "${module.name_convention.db_identifier}"
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  instance_class                      = "${var.instance_class}"
  allocated_storage                   = "${var.allocated_storage}"
  storage_encrypted                   = "${var.storage_encrypted}"
  kms_key_id                          = "${var.kms_key_id}"
  license_model                       = "${var.license_model}"
  name                                = "${module.name_convention.db_name}"
  db_subnet_group_name                = "${local.db_subnet_group_name}"
  option_group_name                   = "${module.name_convention.option_group_name}"
  parameter_group_name                = "${module.name_convention.parameter_group_name}"
  username                            = "${var.username}"
  password                            = "${var.password}"
  port                                = "${var.port}"
  vpc_security_group_ids              = "${var.vpc_security_group_ids}"
  # multi_az                            = "${var.multi_az}"
  backup_retention_period             = "${var.backup_retention_period}"
  backup_window                       = "${var.backup_window}"
  allow_major_version_upgrade         = "${var.allow_major_version_upgrade}"
  auto_minor_version_upgrade          = "${var.auto_minor_version_upgrade}"

  tags                                = "${merge(module.mandatorytags.tags, var.tags)}"
}


module "rds_groups" {
  source = "git::https://bitbucket.anthem.com/scm/acsc/terraform-aws-rds-groups.git"

  aws_region               = "${var.aws_region}"
  profile                  = "${var.profile}"
  aws_account              = "${var.aws_account}"

  option_group_name        = "${module.name_convention.option_group_name}"
  parameter_group_name     = "${module.name_convention.parameter_group_name}"
  db_subnet_group_name     = "${var.db_subnet_group_name}"
  create_before_destroy    = "${var.create_before_destroy}"
  option_group_description = "${var.option_group_description}"
  engine_name              = "${var.engine_name}"
  options                  = "${var.options}"
  identifier               = "${var.identifier}"
  name                     = "${var.name}"
  username                 = "${var.username}"
  password                 = "${var.password}"
  parameters               = "${var.parameters}"
  vpc_id                   = "${var.vpc_id}"
  subnet_ids               = "${var.subnet_ids}"
  family                   = "${var.family}"
  major_engine_version     = "${var.major_engine_version}"

  tags                     = {}
  environment              = "${var.environment}"
  company                  = "${var.company}"
  costcenter               = "${var.costcenter}"
  owner-department         = "${var.owner-department}"
  it-department            = "${var.it-department}"
  barometer-it-num         = "${var.barometer-it-num}"
  application              = "${var.application}"
  resource-type            = "${var.resource-type}"
  layer                    = "${var.layer}"
  compliance               = "${var.compliance}"

}

module "name_convention"{
  source = "git::https://bitbucket.anthem.com/scm/acsc/naming-conventions-module.git"

  parameter_group_configuration = {
    family = "${var.family}"
  }
  option_group_configuration = {
    engine = "${var.engine}"
    major_engine_version = "${var.major_engine_version}"
  }
  db_name_configuration = {
    engine = "${var.engine}"
    application_name = "${var.application}"
    cloud_provider = "${var.cloud_provider}"
    environment = "${var.environment}"
  } 
 

}
