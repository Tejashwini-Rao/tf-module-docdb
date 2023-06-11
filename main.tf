resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "${var.env}docdb-cluster"
  engine                  = var.engine
  master_username         = local.user_name
  master_password         = local.password
  skip_final_snapshot     = true
}

resource "aws_docdb_subnet_group" "docdb" {
  name       = "main"
  subnet_ids = [aws_subnet.frontend.id, aws_subnet.backend.id]

  tags = {
    Name = "My docdb subnet group"
  }
}

