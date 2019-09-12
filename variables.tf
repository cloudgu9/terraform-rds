variable "aws_account" {
  type        = "string"
  description = "AWS account number"
  }

variable "profile" {
  description = "Set the environment profile of the AWS account you are using to deploy resources end"
  type        = "string"
}
     
variable "identifier" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type = "string"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = "string"
}



variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  default     = true
}



variable "license_model" {
  type        = "string"
}


variable "engine" {
  description = "The database engine to use"
  type        = "string"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = "string"
}



variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = "string"
}

variable "name" {
  description = "The DB name to create. If omitted, no database is created initially"
  type        = "string"
}

variable "username" {
  description = "Username for the master DB user"
  type        = "string"
}

variable "password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  type        = "string"
}

variable "port" {
  description = "The port on which the DB accepts connections"
  type        = "string"
}

variable "vpc_security_group_ids" {
  description = "list of VPC security groups to associate"
  type        = "list"
}


variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}



variable "backup_retention_period" {
  description = "The days to retain backups for"
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
  type        = "string"
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = "map"
  default     = {}
}


variable "environment" {
  type        = "string"
  description = "DBx,SIT,PERF,PRODX,UAT,UTILx"

  /*SIT (Multiple environments are possible, ie SIT1, SIT2, etc)
    UAT (Multiple environments are possible, ie UAT1, UAT2, etc)
    PERF
    PRODX (ie PRODB/PROD1 - Prod Blue or PRODG/PROD2 - Prod Green, etc)
    DR*/
}

variable "company" {
  type        = "string"
  description = "Based upon company that owns resource-ANTM–Anthem"
}

variable "costcenter" {
  type    = "string"
}

variable "owner-department" {
  type    = "string"
}

variable "it-department" {
  type    = "string"
}

variable "barometer-it-num" {
  type    = "string"
}

variable "resource-type" {
  type        = "string"
  description = "Based upon the type of resource."

  /*SVR – server resource
ELB – load balancer resource
CON – container resource
GLD – golden image resource
GRP – group resource
IAM – identity access management resource
POL – policy resource
VOL – storage resource
XXX – other resource typesSVR, ELB, CON, GLD, GRP, IAM, POL, VOL, XXX"*/
}

variable "layer" {
  type        = "string"
  description = "WEBx, MWx, DBx, UTILx"

  /*WEBx
  MWx (ie middleware such as MW1 – MQ caching, MW2 – Liberty/Java, etc)
  DBx
  UTILx (ie system management, monitoring and security tools, etc)*/
}

variable "compliance" {
  type        = "string"
  description = "PHI, PCI, PII, SOX, None"
}

variable "application" {
  type        = "string"
  description = "Based upon application nomenclature in server naming convention policy.Use up to six (6) characters to name your application."
  }

variable "aws_region" {
  description = "Choose AWS region to deploy RDS resources"
  type    = "string"
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN. If storage_encrypted is set to true and kms_key_id is not specified the default KMS key created in your account will be used"
  type        = "string" 
}


variable "cloud_provider" {
  description = "Cloud Provider for the catalog"
}


variable "db_subnet_group_name" {
  description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC"
  type        = "string"
  default     = ""
}

variable "parameter_group_description" {
  description = "Description of the DB parameter group to create"
  type        = "string"
  default     = ""
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate or create"
  type        = "string"
  default     = ""
}

variable "option_group_name" {
  description = "Name of the DB option group to associate. Setting this automatically disables option_group creation"
  type        = "string"
  default     = ""
}
variable "option_group_description" {
  description = "The description of the option group"
  type        = "string"
  default     = ""
}

variable "major_engine_version" {
  description = "Specifies the major version of the engine that this option group should be associated with"
  type        = "string"
  default     = ""
}


variable "family" {
  description = "The family of the DB parameter group"
  type        = "string"
  default     = ""
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = "list"
  default     = []
}

variable "vpc_id" {
  type        = "string"
  description = "VPC Id to associate with RDS MySQL."
  default     = ""
}


variable "parameters" {
  description = "A list of DB parameters (map) to apply"
  type        = "list"
  default     = []
}


variable "engine_name" {
  
}
variable "options" {
  description = "A list of Options to apply."
  default     = []
}

variable "create_before_destroy"{
    type        = "string"
}


variable "allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible"
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted, using the value from final_snapshot_identifier"
  default     = true
}

variable "description" {
  type    = "string"
  default = ""
}