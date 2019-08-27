module "mandatorytags" {
  source                              = "git::https:/bitbucket.anthem.com/scm/acsc/terraform-aws-mandatory-tags.git"
    tags                              = {
    }    
    environment                        = "${var.environment}" 
    company                            = "${var.company}"
    costcenter                         = "${var.costcenter}"
    owner-department                   = "${var.owner-department}"
    it-department                      = "${var.it-department}"
    barometer-it-num                   = "${var.barometer-it-num}"
    application                        = "${var.application}"
    resource-type                      = "${var.resource-type}"
    layer                              = "${var.layer}"    
    compliance                         = "${var.compliance}"
 }