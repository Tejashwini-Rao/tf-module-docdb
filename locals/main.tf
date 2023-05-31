locals {
  user_name=split("/", data.aws_ssm_parameter.docdb-crendtials.name)

}

