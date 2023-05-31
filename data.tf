data "aws_ssm_parameter" "docdb-crendtials" {
  name = "mutable.docdb.dev.credentials"
}