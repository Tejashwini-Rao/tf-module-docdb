locals {
  user_name =element(split("/", data.aws_ssm_parameter.crendtials.value),0)
  password = element(split("/", data.aws_ssm_parameter.crendtials.name),1)
}
