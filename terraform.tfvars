
aws_region                  = "us-east-1"
profile                     = "sandbox-dev"
aws_account                 = "161266561134"

db_subnet_group_name        = "antm-db-subnet-pos"
option_group_description    = "Terraform Option Group"
parameter_group_description = "Terraform Parameter Group"
#  name_prefix                 = antm-database-team

engine_name                 = "postgres"
major_engine_version        = "9.6"
options                     = []
create_before_destroy       = true
family                      = "postgres9.6"
# parameters                  = [{ name = character_set_server, value = utf8 }]
subnet_ids            = ["subnet-0417ab64f0801108a", "subnet-0da258c8aca5e3af4"]

vpc_id                = "vpc-0c0483e12aced9e44"

# Mandatory Tags

environment                 = "production"
company                     = "anthm"
costcenter                  = "123456"
owner-department            = "parag.doshi"
it-department               = "aws"
barometer-it-num            = "123456"
resource-type               = "rds"
layer                       = "cloud"
compliance                  = "none"
application                 = "rdspostgres"
description                 = "test"
cloud_provider              = "aws"

# Module MySQL

identifier                  = "antmdemo"
engine                      = "postgres"
engine_version              = "9.6.9"
instance_class              = "db.t3.large"
allocated_storage           = 5
license_model               = "postgresql-license"
name                        = "antmdemo"
username                    = "postdbadmin"
password                    = "password123"
port                        = "5432"
kms_key_id                  = "arn:aws:kms:us-east-1:950511364051:key/caae63d8-7ac9-4b25-9c5d-882a8ca7728c"
# monitoring_role_arn       = "arn:aws:iam::161266561134:role/rds-monitoring-role"
vpc_security_group_ids      = ["sg-00dae0d44512d3480"]
backup_retention_period     = 0
backup_window               = "07:00-09:00"
skip_final_snapshot         = true