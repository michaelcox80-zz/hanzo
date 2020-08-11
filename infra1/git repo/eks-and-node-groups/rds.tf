

resource "aws_db_instance" "db" {
  identifier        = "${var.identifier}"
  storage_type      = "${var.storage_type}"
  allocated_storage = "120"
  engine            = "${var.db_engine}"
  engine_version    = "${var.engine_version}"
  instance_class    = "db.t2.micro"
  name              = "hanzo"
  username          = "${var.db_username}"
  password          = "${var.db_password}"

  # vpc_security_group_ids = [
  #   "${var.sec_grp_rds}",
  # ]

  db_subnet_group_name = aws_db_subnet_group.example.name
  storage_encrypted    = false
  skip_final_snapshot  = true
  publicly_accessible  = false
  multi_az             = false


}

resource "aws_db_subnet_group" "example" {
  name       = "main"

  subnet_ids = ["subnet-06509bab0786d0e8e","subnet-0a64d760788321e43"]


}
